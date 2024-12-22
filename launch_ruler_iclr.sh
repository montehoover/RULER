# Launch this with:
# launch launch_ruler.sh --classical_logfile_names --gpu_type rtxa6000

# This produces outputs for Full Attention, and it also saves KV caches to /fs/cml-projects/llm-pretraining/topk
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks niah_single_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks niah_single_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks niah_single_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks niah_multikey_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks niah_multikey_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks niah_multikey_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks niah_multivalue
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks niah_multiquery
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks vt
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks cwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks fwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks qa_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 4096 --num_samples 10 --save_kv_cache --tasks qa_2

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks niah_single_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks niah_single_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks niah_single_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks niah_multikey_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks niah_multikey_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks niah_multikey_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks niah_multivalue
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks niah_multiquery
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks vt
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks cwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks fwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks qa_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 8192 --num_samples 10 --save_kv_cache --tasks qa_2

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks niah_single_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks niah_single_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks niah_single_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks niah_multikey_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks niah_multikey_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks niah_multikey_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks niah_multivalue
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks niah_multiquery
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks vt
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks cwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks fwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks qa_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 16384 --num_samples 10 --save_kv_cache --tasks qa_2

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks niah_single_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks niah_single_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks niah_single_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks niah_multikey_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks niah_multikey_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks niah_multikey_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks niah_multivalue
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks niah_multiquery
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks vt
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks cwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks fwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks qa_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 32768 --num_samples 10 --save_kv_cache --tasks qa_2

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks niah_single_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks niah_single_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks niah_single_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks niah_multikey_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks niah_multikey_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks niah_multikey_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks niah_multivalue
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks niah_multiquery
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks vt
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks cwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks fwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks qa_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 65536 --num_samples 10 --save_kv_cache --tasks qa_2

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks niah_single_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks niah_single_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks niah_single_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks niah_multikey_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks niah_multikey_2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks niah_multikey_3
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks niah_multivalue
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks niah_multiquery
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks vt
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks cwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks fwe
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks qa_1
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework local_vllm --num_tokens 131072 --num_samples 10 --save_kv_cache --tasks qa_2


# This uses the KV caches produced above to run all the topk experiments
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 10 --tasks all   --attn_implementation topk --topk 2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --tasks all   --attn_implementation topk --topk 2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 16384 --num_samples 10 --tasks all  --attn_implementation topk --topk 2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 10 --tasks all  --attn_implementation topk --topk 2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 10 --tasks all  --attn_implementation topk --topk 2
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 10 --tasks all --attn_implementation topk --topk 2

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 10 --tasks all   --attn_implementation topk --topk 8
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --tasks all   --attn_implementation topk --topk 8
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 16384 --num_samples 10 --tasks all  --attn_implementation topk --topk 8
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 10 --tasks all  --attn_implementation topk --topk 8
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 10 --tasks all  --attn_implementation topk --topk 8
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 10 --tasks all --attn_implementation topk --topk 8

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 10 --tasks all   --attn_implementation topk --topk 32
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --tasks all   --attn_implementation topk --topk 32
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 16384 --num_samples 10 --tasks all  --attn_implementation topk --topk 32
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 10 --tasks all  --attn_implementation topk --topk 32
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 10 --tasks all  --attn_implementation topk --topk 32
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 10 --tasks all --attn_implementation topk --topk 32

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 10 --tasks all   --attn_implementation topk --topk 128
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --tasks all   --attn_implementation topk --topk 128
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 16384 --num_samples 10 --tasks all  --attn_implementation topk --topk 128
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 10 --tasks all  --attn_implementation topk --topk 128
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 10 --tasks all  --attn_implementation topk --topk 128
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 10 --tasks all --attn_implementation topk --topk 128

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 10 --tasks all   --attn_implementation topk --topk 512
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --tasks all   --attn_implementation topk --topk 512
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 16384 --num_samples 10 --tasks all  --attn_implementation topk --topk 512
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 10 --tasks all  --attn_implementation topk --topk 512
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 10 --tasks all  --attn_implementation topk --topk 512
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 10 --tasks all --attn_implementation topk --topk 512

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 4096 --num_samples 10 --tasks all   --attn_implementation topk --topk 2048
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 10 --tasks all   --attn_implementation topk --topk 2048
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 16384 --num_samples 10 --tasks all  --attn_implementation topk --topk 2048
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 10 --tasks all  --attn_implementation topk --topk 2048
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 10 --tasks all  --attn_implementation topk --topk 2048
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 10 --tasks all --attn_implementation topk --topk 2048

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 16384 --num_samples 10 --tasks all  --attn_implementation topk --topk 8192
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 10 --tasks all  --attn_implementation topk --topk 8192
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 10 --tasks all  --attn_implementation topk --topk 8192
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 10 --tasks all --attn_implementation topk --topk 8192

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 32768 --num_samples 10 --tasks all  --attn_implementation topk --topk 16384
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 10 --tasks all  --attn_implementation topk --topk 16384
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 10 --tasks all --attn_implementation topk --topk 16384

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 65536 --num_samples 10 --tasks all  --attn_implementation topk --topk 32768
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 131072 --num_samples 10 --tasks all --attn_implementation topk --topk 32768


