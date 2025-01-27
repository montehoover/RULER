# Launch this with:
# launch launch_ruler8k.sh  --classical_logfile_names --gpu_type rtxa4000 --mem 48

# Trial Runs
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir trial --exp_number 1 --range "[[0,16,32]]"
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir trial --exp_number 2 --range "[[0,8,32], [8,16,64]]"

# Linears
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/8 --exp_number 1 --range "[[0,1,8],[1,2,15],[2,3,22],[3,4,29],[4,5,36],[5,6,43],[6,7,50],[7,8,57],[8,9,64],[9,10,71],[10,11,78],[11,12,85],[12,13,92],[13,14,99],[14,15,106],[15,16,113],[16,17,120],[17,18,127],[18,19,134],[19,20,141],[20,21,148],[21,22,155],[22,23,162],[23,24,169],[24,25,176],[25,26,183],[26,27,190],[27,28,197],[28,29,204],[29,30,211],[30,31,218],[31,32,593]]"

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/16 --exp_number 1 --range "[[0,1,19],[1,2,26],[2,3,33],[3,4,40],[4,5,47],[5,6,54],[6,7,61],[7,8,68],[8,9,75],[9,10,82],[10,11,89],[11,12,96],[12,13,103],[13,14,110],[14,15,117],[15,16,124],[16,17,132],[17,18,139],[18,19,146],[19,20,153],[20,21,160],[21,22,167],[22,23,174],[23,24,181],[24,25,188],[25,26,195],[26,27,202],[27,28,209],[28,29,216],[29,30,223],[30,31,230],[31,32,237]]" --debug

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/32 --exp_number 1 --range "[[0,1,35],[1,2,41],[2,3,47],[3,4,53],[4,5,59],[5,6,65],[6,7,71],[7,8,77],[8,9,83],[9,10,89],[10,11,95],[11,12,101],[12,13,107],[13,14,113],[14,15,119],[15,16,125],[16,17,131],[17,18,137],[18,19,143],[19,20,149],[20,21,155],[21,22,161],[22,23,167],[23,24,173],[24,25,179],[25,26,185],[26,27,191],[27,28,197],[28,29,203],[29,30,209],[30,31,215],[31,32,221]]" --debug

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/48 --exp_number 1 --range "[[0,1,50],[1,2,55],[2,3,60],[3,4,65],[4,5,70],[5,6,75],[6,7,80],[7,8,85],[8,9,90],[9,10,95],[10,11,100],[11,12,105],[12,13,110],[13,14,115],[14,15,120],[15,16,125],[16,17,131],[17,18,136],[18,19,141],[19,20,146],[20,21,151],[21,22,156],[22,23,161],[23,24,166],[24,25,171],[25,26,176],[26,27,181],[27,28,186],[28,29,191],[29,30,196],[30,31,201],[31,32,206]]" --debug

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/64 --exp_number 1 --range "[[0,1,66],[1,2,70],[2,3,74],[3,4,78],[4,5,82],[5,6,86],[6,7,90],[7,8,94],[8,9,98],[9,10,102],[10,11,106],[11,12,110],[12,13,114],[13,14,118],[14,15,122],[15,16,126],[16,17,130],[17,18,134],[18,19,138],[19,20,142],[20,21,146],[21,22,150],[22,23,154],[23,24,158],[24,25,162],[25,26,166],[26,27,170],[27,28,174],[28,29,178],[29,30,182],[30,31,186],[31,32,190]]" --debug

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/96 --exp_number 1 --range "[[0,1,97],[1,2,99],[2,3,101],[3,4,103],[4,5,105],[5,6,107],[6,7,109],[7,8,111],[8,9,113],[9,10,115],[10,11,117],[11,12,119],[12,13,121],[13,14,123],[14,15,125],[15,16,127],[16,17,129],[17,18,131],[18,19,133],[19,20,135],[20,21,137],[21,22,139],[22,23,141],[23,24,143],[24,25,145],[25,26,147],[26,27,149],[27,28,151],[28,29,153],[29,30,155],[30,31,157],[31,32,159]]" --debug



# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task vt --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --task vt --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 32 --task vt --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 128 --task vt --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 512 --task vt --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2048 --task vt --root_dir outputs_denoise


# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 6 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 8 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 12 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 24 --topk_adaptive 32 --task niah_multiquery --root_dir outputs_denoise


# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1 --topk_adaptive 33 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 4 --topk_adaptive 132 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 16 --topk_adaptive 528 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 64 --topk_adaptive 2112 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 264 --topk_adaptive 8192 --task niah_multiquery --root_dir outputs_denoise

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task niah_multikey_3 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task niah_multivalue --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task cwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task fwe --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task qa_1 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task qa_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task vt --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task niah_multikey_2 --root_dir outputs_denoise
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 1850 --topk_adaptive 8192 --task niah_multiquery --root_dir outputs_denoise
