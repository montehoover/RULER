# Launch this with:
# launch launch_ruler8k.sh  --classical_logfile_names --gpu_type rtxa4000 --mem 48

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task vt --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task vt --root_dir outputs_denoise


python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise


python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task niah_multiquery --root_dir outputs_denoise

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task niah_multikey_3 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task niah_multivalue --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task cwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task fwe --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task qa_1 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task qa_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task vt --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task niah_multikey_2 --root_dir outputs_denoise
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task niah_multiquery --root_dir outputs_denoise
