import os
import subprocess
import sys
import argparse
from datetime import datetime


def parse_args():
    parser = argparse.ArgumentParser(description="Run RULER benchmark.")

    # Model choice stuff
    parser.add_argument("--model_name", default="meta-llama/Meta-Llama-3.1-8B-Instruct", type=str, help="Name of the model", choices=[
        "meta-llama/Meta-Llama-3-8B-Instruct",
        "meta-llama/Meta-Llama-3.1-8B-Instruct", 
        "meta-llama/Llama-2-7b-chat-hf", 
        "TinyLlama/TinyLlama-1.1B-Chat-v1.0", 
        "gradientai/Llama-3-8B-Instruct-262k",
        "gradientai/Llama-3-8B-Instruct-Gradient-1048k",
        ])
    parser.add_argument("--framework", default="hf", type=str, help="Framework of the model", choices=["hf", "local_vllm"])
    parser.add_argument("--tokenizer_type", default="hf", type=str, help="Type of the tokenizer")
    parser.add_argument("--model_template_type", default="meta-chat", type=str, help="Type of the model template", choices=["base", "meta-chat"])
    
    # Experiment size and tasks
    parser.add_argument("--num_tokens", default=4096, type=int, help="Number of tokens")
    parser.add_argument("--num_samples", default=1, type=int, help="Number of samples")
    parser.add_argument("--batch_size", default=1, type=int, help="Make greater than one to improve GPU utilization on small context lengths")
    parser.add_argument("--tasks", default="niah_single_1", type=str, help="Names of the tasks comma separated. Use 'all' to run all tasks.")
    parser.add_argument("--benchmark", default="synthetic", type=str, help="Benchmark name, either synthetic or name of some custom benchmark", choices=["synthetic"])

    # Miscellaneous defaults
    parser.add_argument("--root_dir", default="outputs", type=str, help="Root directory to store generated task samples and model predictions")
    parser.add_argument("--temperature", default=0.0, type=float, help="Temperature for sampling. 0 corresponds to greedy decoding")
    parser.add_argument("--top_p", default=1.0, type=float, help="Top-p sampling")
    parser.add_argument("--top_k", default=1, type=int, help="Top-k sampling")

    args = parser.parse_args()
    return args


def main():
    # Parse command-line arguments
    args = parse_args()

    # Start client (prepare data / call model API / obtain final metrics)
    results_dir = f"{args.root_dir}/{args.model_name}/{args.benchmark}/{args.num_tokens}"
    data_dir = f"{results_dir}/data"
    pred_dir = f"{results_dir}/pred"
    os.makedirs(data_dir, exist_ok=True)
    os.makedirs(pred_dir, exist_ok=True)
    
    if args.tasks == "all":
        tasks = [
            "niah_single_1",
            "niah_single_2",
            "niah_single_3",
            "niah_multikey_1",
            "niah_multikey_2",
            "niah_multikey_3",
            "niah_multivalue",
            "niah_multiquery",
            "vt",
            "cwe",
            "fwe",
            "qa_1",
            "qa_2",
        ]
    else:
        tasks = args.tasks.split(",")

    print_str = (f"MODEL_NAME: {args.model_name}\n"
                 f"TEMPERATURE: {args.temperature}\n"
                 f"BATCH_SIZE: {args.batch_size}\n"
                 f"NUM_SAMPLES: {args.num_samples}\n"
                 f"args.num_tokens: {args.num_tokens}\n"
                 f"TASKS: {tasks}\n"
                 )
    print(print_str)

    for task in tasks:
        print(f"Running task: {task}")
        subprocess.run([
            "python", "scripts/data/prepare.py",
            "--save_dir", data_dir,
            "--benchmark", args.benchmark,
            "--task", task,
            "--tokenizer_path", args.model_name,
            "--tokenizer_type", args.tokenizer_type,
            "--max_seq_length", str(args.num_tokens),
            "--model_template_type", args.model_template_type,
            "--num_samples", str(args.num_samples)
        ])

        subprocess.run([
            "python", "scripts/pred/call_api.py",
            "--data_dir", data_dir,
            "--save_dir", pred_dir,
            "--benchmark", args.benchmark,
            "--task", task,
            "--server_type", args.framework,
            "--model_name_or_path", args.model_name,
            "--temperature", str(args.temperature),
            "--top_k", str(args.top_k),
            "--top_p", str(args.top_p),
            "--batch_size", str(args.batch_size),
        ])

    subprocess.run([
        "python", "scripts/eval/evaluate.py",
        "--data_dir", pred_dir,
        "--benchmark", args.benchmark,
    ])

if __name__ == "__main__":
    main()