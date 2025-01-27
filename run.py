import os
import subprocess
import argparse
import wandb
import pandas as pd


def parse_args():
    parser = argparse.ArgumentParser(description="Run RULER benchmark.")

    # Model choice stuff
    parser.add_argument("--model_name", default="gradientai/Llama-3-8B-Instruct-262k", type=str, help="Name of the model", choices=[
        "meta-llama/Meta-Llama-3-8B-Instruct",
        "meta-llama/Llama-3.1-8B-Instruct", 
        "meta-llama/Llama-2-7b-chat-hf", 
        "TinyLlama/TinyLlama-1.1B-Chat-v1.0", 
        "gradientai/Llama-3-8B-Instruct-262k",
        "gradientai/Llama-3-8B-Instruct-Gradient-1048k",
        "lmsys/vicuna-7b-v1.3",
        "mistralai/Mistral-7B-Instruct-v0.3",
        "meta-llama/Llama-3.2-1B-Instruct",
        "meta-llama/Llama-3.2-3B-Instruct",
        "meta-llama/Llama-3.2-11B-Vision-Instruct",
        ])
    parser.add_argument("--framework", default="hf", type=str, help="Framework of the model", choices=["hf", "local_vllm"])
    parser.add_argument("--tokenizer_type", default="hf", type=str, help="Type of the tokenizer")
    parser.add_argument("--model_template_type", default="meta-chat", type=str, help="Type of the model template", choices=["base", "meta-chat"])
    parser.add_argument("--attn_implementation", default="sdpa", type=str, choices=["eager", "sdpa", "topk"])
    parser.add_argument("--topk", default=None, type=int, help="k value for top-k attention")
    
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
    parser.add_argument("--topk_adaptive", default=-1, type=int, help="Value to use for k for the first layer only.")
    parser.add_argument("--save_kv_cache", action="store_true", help="Save the key-value cache for the model")
    parser.add_argument("--kv_cache_dir", default="/fs/cml-projects/llm-pretraining/topk/kv_caches/ruler", help="Directory where kv_cache is stored")
    parser.add_argument("--debug", action="store_true", help="Debug mode")

    # Layer Drop Experiment
    parser.add_argument("--range", default=None, type=str, help="list of lists dictatin the [start, end, topkvalue] for each layer, defaults to topk")
    parser.add_argument("--exp_number", default=-1, type=int, help="Experiment number")
    parser.add_argument("--end_dir", default=None, type=str, help="End directory for layer drop experiment")

    args = parser.parse_args()
    return args


def main():
    # Parse command-line arguments
    args = parse_args()
    if not args.debug:
        # wandb_run = wandb.init(project="top-k", entity="fast-attention", name=job_name, config=vars(args))
        wandb.init(project="topk_ruler", entity="tomg-group-umd", name=f"{args.num_tokens}_{args.tasks}_{args.topk}", config=vars(args))

    # Start client (prepare data / call model API / obtain final metrics)
    if args.range is not None:
        if args.end_dir is None:
            results_dir = f"{args.root_dir}/{args.model_name}/{args.benchmark}/{args.num_tokens}/range_exp{args.range}"
        else:
            results_dir = f"{args.root_dir}/{args.model_name}/{args.benchmark}/{args.num_tokens}/range_exp{args.range}/{args.end_dir}"
    else:
        results_dir = f"{args.root_dir}/{args.model_name}/{args.benchmark}/{args.num_tokens}"
    data_dir = f"{results_dir}/data"
    if args.attn_implementation == 'topk':
        pred_dir = f"{results_dir}/pred/topk_{args.topk}_{args.topk_adaptive}"
    else:
        pred_dir = f"{results_dir}/pred/eager"
    
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
                 f"NUM_TOKENS: {args.num_tokens}\n"
                 f"TOPK: {args.topk}\n"
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

        if args.range is None:
            call_api = [
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
                "--num_tokens", str(args.num_tokens),
                "--attn_implementation", args.attn_implementation,
                "--kv_cache_dir", args.kv_cache_dir,
                "--topk_adaptive", str(args.topk_adaptive),
            ]
        else:
            call_api = [
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
                "--num_tokens", str(args.num_tokens),
                "--attn_implementation", args.attn_implementation,
                "--kv_cache_dir", args.kv_cache_dir,
                "--topk_adaptive", str(args.topk_adaptive),
                "--range", args.range,
            ]
        if args.save_kv_cache:
            call_api.append("--save_kv_cache")
        if args.topk is not None:
            call_api.append("--topk")
            call_api.append(str(args.topk))
        subprocess.run(call_api)

    subprocess.run([
        "python", "scripts/eval/evaluate.py",
        "--data_dir", pred_dir,
        "--benchmark", args.benchmark,
    ])

    # Get average score, log it to wandb and update summary.csv 
    summary_filepath = f"{pred_dir}/summary.csv"
    df = pd.read_csv(summary_filepath)
    avg_col = df.columns[df.iloc[0] == "avg"]
    if avg_col.empty:
        new_col = str(int(df.columns[-1]) + 1)
        df[new_col] = ""
        df.at[0, new_col] = "avg"
        avg = df.iloc[1].apply(pd.to_numeric, errors="coerce").mean()
        df.at[1, new_col] = str(avg)
        df.to_csv(summary_filepath, index=False)
    else:
        avg = df.at[1, avg_col[0]]


    print(f"RULER evaluation completed with avg score: {avg}")

    if not args.debug:
        wandb.log({"summary": wandb.Table(dataframe=df)})
        wandb.log({"avg": avg})
        wandb.save(summary_filepath)
        wandb.finish()

if __name__ == "__main__":
    main()