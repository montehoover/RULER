import os
import subprocess
import sys
import argparse
from datetime import datetime
from pathlib import Path
from scripts.data.prepare import main as prepare_data
from scripts.pred.call_api import main as call_pred_api
from scripts.eval.evaluate import main as evaluate


def parse_args():
    parser = argparse.ArgumentParser(description="Run RULER benchmark.")

    # Model choice stuff
    parser.add_argument("--model_name", default="meta-llama/Llama-2-7b-chat-hf", type=str, help="Name of the model")
    parser.add_argument("--framework", default="hf", type=str, help="Framework of the model", choices=["hf", "vllm"])
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

    for task in tasks:
        print(f"Running task: {task}")

        prepare_data_args = {
            "save_dir": data_dir,
            "benchmark": args.benchmark,
            "task": task,
            "tokenizer_path": args.model_name,
            "tokenizer_type": args.tokenizer_type,
            "max_seq_length": args.num_tokens,
            "model_template_type": args.model_template_type,
            "num_samples": args.num_samples,
        }
        prepare_data(prepare_data_args)

        call_api_args = {
            "data_dir": data_dir,
            "save_dir": pred_dir,
            "benchmark": args.benchmark,
            "task": task,
            "server_type": args.framework,
            "model_name_or_path": args.model_name,
            "temperature": args.temperature,
            "top_k": args.top_k,
            "top_p": args.top_p,
            "batch_size": args.batch_size,
        }
        call_pred_api(call_api_args)

    evaluate_args = {
        "data_dir": pred_dir,
        "benchmark": args.benchmark,
    }
    evaluate(evaluate_args)


if __name__ == "__main__":
    main()