import os
import subprocess
import sys
import argparse
from datetime import datetime
from pathlib import Path
from scripts.data.prepare import main as prepare_data
from scripts.pred.call_api import main as call_pred_api
from scripts.eval.evaluate import main as evaluate

def main():
    # Parse command-line arguments
    parser = argparse.ArgumentParser(description='Run RULER benchmark.')
    parser.add_argument('--model_name', default="meta-llama/Llama-2-7b-chat-hf", type=str, help='Name of the model')
    parser.add_argument('--num_tokens', default=4096, type=int, help='Number of tokens')
    parser.add_argument('--task_name', default='niah_single_1', type=str, help='Name of the task comma separated')
    parser.add_argument('--framework', default='hf', type=str, help='Framework of the model', choices=['hf', 'vllm'])
    args = parser.parse_args()

    # Root Directories
    ROOT_DIR = "benchmark_root"  # the path that stores generated task samples and model predictions.
    BATCH_SIZE = 1  # increase to improve GPU utilization

    # Model and Tokenizer
    MODEL_NAME = args.model_name
    TEMPERATURE = 0.0  # greedy
    TOP_P = 1.0
    TOP_K = 1
    MODEL_PATH = args.model_name
    # MODEL_TEMPLATE_TYPE = "base"
    MODEL_TEMPLATE_TYPE = "meta-chat"
    MODEL_FRAMEWORK = args.framework
    TOKENIZER_PATH = MODEL_PATH
    TOKENIZER_TYPE = "hf"

    # Benchmark and Tasks
    NUM_SAMPLES = 128
    BENCHMARK = "synthetic"

    # Start client (prepare data / call model API / obtain final metrics)
    RESULTS_DIR = f"{ROOT_DIR}/{MODEL_NAME}/{BENCHMARK}/{args.num_tokens}"
    DATA_DIR = f"{RESULTS_DIR}/data"
    PRED_DIR = f"{RESULTS_DIR}/pred"
    TASKS = args.task_name.split(",")

    print_str = (f"MODEL_NAME: {MODEL_NAME}\n"
                 f"TEMPERATURE: {TEMPERATURE}\n"
                 f"BATCH_SIZE: {BATCH_SIZE}\n"
                 f"NUM_SAMPLES: {NUM_SAMPLES}\n"
                 f"args.num_tokens: {args.num_tokens}\n"
                 f"TASKS: {TASKS}\n"
                 )
    print(print_str)

    os.makedirs(DATA_DIR, exist_ok=True)
    os.makedirs(PRED_DIR, exist_ok=True)

    for task in TASKS:
        print(f"Running task: {task}")

        prepare_data_args = {
            "save_dir": Path(DATA_DIR),
            "benchmark": BENCHMARK,
            "task": task,
            "tokenizer_path": TOKENIZER_PATH,
            "tokenizer_type": TOKENIZER_TYPE,
            "max_seq_length": args.num_tokens,
            "model_template_type": MODEL_TEMPLATE_TYPE,
            "num_samples": NUM_SAMPLES
        }
        prepare_data(prepare_data_args)

        call_api_args = {
            "data_dir": Path(DATA_DIR),
            "save_dir": Path(PRED_DIR),
            "benchmark": BENCHMARK,
            "task": task,
            "server_type": MODEL_FRAMEWORK,
            "model_name_or_path": MODEL_PATH,
            "temperature": TEMPERATURE,
            "top_k": TOP_K,
            "top_p": TOP_P,
            "batch_size": BATCH_SIZE,
        }
        call_pred_api(call_api_args)

    evaluate_args = {
        "data_dir": PRED_DIR,
        "benchmark": BENCHMARK
    }
    evaluate(evaluate_args)


if __name__ == "__main__":
    main()