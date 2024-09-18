# run with "launch launch_ruler.sh --classical_logfile_names --gpu_type rtxa6000"

python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks niah_single_1
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks niah_single_2
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks niah_single_3
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks niah_multikey_1
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks niah_multikey_2
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks niah_multikey_3
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks niah_multivalue
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks niah_multiquery
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks vt
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks cwe
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks fwe
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks qa_1
python run.py --framework local_vllm --num_tokens 131072 --num_samples 100 --save_kv_cache --tasks qa_2