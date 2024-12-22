# Launch this with:
# launch launch_ruler64k.sh  --classical_logfile_names --gpu_type rtxa6000 --mem 140

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 128 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 128 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 128 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 128 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 128 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 128 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 128 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 512 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 512 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 512 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 512 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 512 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 512 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 512 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2048 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2048 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2048 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2048 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2048 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2048 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 2048 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8192 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8192 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8192 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8192 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8192 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8192 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 8192 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32768 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32768 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32768 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32768 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32768 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32768 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 40 --attn_implementation topk --topk 32768 --task vt --root_dir outputs_denoise
