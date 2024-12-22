# Launch with:
# launch launch_ruler_eval.sh  --classical_logfile_names --mem 4

# These are CPU-only jobs that re-run the summary numbers if you have manually changed anything in the outputs folder.
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 1 --attn_implementation sdpa   --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 1 --attn_implementation sdpa   --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 1 --attn_implementation sdpa  --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 1 --attn_implementation sdpa  --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 1 --attn_implementation sdpa  --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 1 --attn_implementation sdpa --task all --root_dir outputs_denoise

python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 40 --attn_implementation topk --topk 8 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 40 --attn_implementation topk --topk 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 40 --attn_implementation topk --topk 128 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 40 --attn_implementation topk --topk 512 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 40 --attn_implementation topk --topk 2048 --task all --root_dir outputs_denoise

python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --attn_implementation topk --topk 1 --topk_adaptive 33 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --attn_implementation topk --topk 4 --topk_adaptive 132 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --attn_implementation topk --topk 16 --topk_adaptive 528 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task all --root_dir outputs_denoise

python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 16384 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 40 --attn_implementation topk --topk 8 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 40 --attn_implementation topk --topk 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 40 --attn_implementation topk --topk 128 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 40 --attn_implementation topk --topk 512 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 40 --attn_implementation topk --topk 2048 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 40 --attn_implementation topk --topk 8192 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 40 --attn_implementation topk --topk 16384 --task all --root_dir outputs_denoise

python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 128 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 512 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2048 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8192 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32768 --task all --root_dir outputs_denoise

python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 40 --attn_implementation topk --topk 8 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 40 --attn_implementation topk --topk 32 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 40 --attn_implementation topk --topk 128 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 40 --attn_implementation topk --topk 512 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 40 --attn_implementation topk --topk 2048 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 40 --attn_implementation topk --topk 8192 --task all --root_dir outputs_denoise
python run_evaluate.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 40 --attn_implementation topk --topk 32768 --task all --root_dir outputs_denoise
