# Launch this with:
# launch launch_ruler8k.sh  --classical_logfile_names --gpu_type rtxa4000 --mem 48

# Trial Runs
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir trial --exp_number 1 --range "[[0,16,32]]"
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir trial --exp_number 2 --range "[[0,8,32], [8,16,64]]"

# Final Graph Linears
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir graph/2 --exp_number 3 --range "[[0,14,1],[14,25,2],[25,29,3],[29,30,4],[30,31,5],[31,32,6]]"  --debug

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir graph/8 --exp_number 3 --range "[[0,1,2],[1,2,2],[2,3,3],[3,4,3],[4,5,4],[5,6,4],[6,7,4],[7,8,4],[8,9,5],[9,10,5],[10,11,5],[11,12,5],[12,13,6],[13,14,6],[14,15,7],[15,16,7],[16,17,8],[17,18,8],[18,19,9],[19,20,9],[20,21,10],[21,22,10],[22,23,11],[23,24,11],[24,25,12],[25,26,12],[26,27,13],[27,28,13],[28,29,14],[29,30,14],[30,31,15],[31,32,15]]"  --debug

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir graph/32 --exp_number 1 --range "[[0,1,16],[1,2,17],[2,3,18],[3,4,19],[4,5,20],[5,6,21],[6,7,22],[7,8,23],[8,9,24],[9,10,25],[10,11,26],[11,12,27],[12,13,28],[13,14,29],[14,15,30],[15,16,31],[16,17,33],[17,18,34],[18,19,35],[19,20,36],[20,21,37],[21,22,38],[22,23,39],[23,24,40],[24,25,41],[25,26,42],[26,27,43],[27,28,44],[28,29,45],[29,30,46],[30,31,47],[31,32,48]]"  --debug

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir graph/512 --exp_number 1 --range "[[0,1,140],[1,2,164],[2,3,188],[3,4,212],[4,5,236],[5,6,260],[6,7,284],[7,8,308],[8,9,332],[9,10,356],[10,11,380],[11,12,404],[12,13,428],[13,14,452],[14,15,476],[15,16,500],[16,17,524],[17,18,548],[18,19,572],[19,20,596],[20,21,620],[21,22,644],[22,23,668],[23,24,692],[24,25,716],[25,26,740],[26,27,764],[27,28,788],[28,29,812],[29,30,836],[30,31,860],[31,32,884]]"  --debug

python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir graph/2048 --exp_number 1 --range "[[0,1,1288],[1,2,1337],[2,3,1386],[3,4,1435],[4,5,1484],[5,6,1533],[6,7,1582],[7,8,1631],[8,9,1680],[9,10,1729],[10,11,1778],[11,12,1827],[12,13,1876],[13,14,1925],[14,15,1974],[15,16,2023],[16,17,2073],[17,18,2122],[18,19,2171],[19,20,2220],[20,21,2269],[21,22,2318],[22,23,2367],[23,24,2416],[24,25,2465],[25,26,2514],[26,27,2563],[27,28,2612],[28,29,2661],[29,30,2710],[30,31,2759],[31,32,2808]]" --debug

# Linears
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/8 --exp_number 1 --range "[[0,1,8],[1,2,15],[2,3,22],[3,4,29],[4,5,36],[5,6,43],[6,7,50],[7,8,57],[8,9,64],[9,10,71],[10,11,78],[11,12,85],[12,13,92],[13,14,99],[14,15,106],[15,16,113],[16,17,120],[17,18,127],[18,19,134],[19,20,141],[20,21,148],[21,22,155],[22,23,162],[23,24,169],[24,25,176],[25,26,183],[26,27,190],[27,28,197],[28,29,204],[29,30,211],[30,31,218],[31,32,593]]"

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/16 --exp_number 3 --range "[[0,1,19],[1,2,26],[2,3,33],[3,4,40],[4,5,47],[5,6,54],[6,7,61],[7,8,68],[8,9,75],[9,10,82],[10,11,89],[11,12,96],[12,13,103],[13,14,110],[14,15,117],[15,16,124],[16,17,132],[17,18,139],[18,19,146],[19,20,153],[20,21,160],[21,22,167],[22,23,174],[23,24,181],[24,25,188],[25,26,195],[26,27,202],[27,28,209],[28,29,216],[29,30,223],[30,31,230],[31,32,237]]" --debug

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/32 --exp_number 3 --range "[[0,1,35],[1,2,41],[2,3,47],[3,4,53],[4,5,59],[5,6,65],[6,7,71],[7,8,77],[8,9,83],[9,10,89],[10,11,95],[11,12,101],[12,13,107],[13,14,113],[14,15,119],[15,16,125],[16,17,131],[17,18,137],[18,19,143],[19,20,149],[20,21,155],[21,22,161],[22,23,167],[23,24,173],[24,25,179],[25,26,185],[26,27,191],[27,28,197],[28,29,203],[29,30,209],[30,31,215],[31,32,221]]" --debug

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/48 --exp_number 4 --range "[[0,1,50],[1,2,55],[2,3,60],[3,4,65],[4,5,70],[5,6,75],[6,7,80],[7,8,85],[8,9,90],[9,10,95],[10,11,100],[11,12,105],[12,13,110],[13,14,115],[14,15,120],[15,16,125],[16,17,131],[17,18,136],[18,19,141],[19,20,146],[20,21,151],[21,22,156],[22,23,161],[23,24,166],[24,25,171],[25,26,176],[26,27,181],[27,28,186],[28,29,191],[29,30,196],[30,31,201],[31,32,206]]" --debug

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/64 --exp_number 4 --range "[[0,1,66],[1,2,70],[2,3,74],[3,4,78],[4,5,82],[5,6,86],[6,7,90],[7,8,94],[8,9,98],[9,10,102],[10,11,106],[11,12,110],[12,13,114],[13,14,118],[14,15,122],[15,16,126],[16,17,130],[17,18,134],[18,19,138],[19,20,142],[20,21,146],[21,22,150],[22,23,154],[23,24,158],[24,25,162],[25,26,166],[26,27,170],[27,28,174],[28,29,178],[29,30,182],[30,31,186],[31,32,190]]" --debug

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --kv_cache_dir /scratch/zt1/project/ramanid-prj/shared/kv_caches/ruler/gradientai --task all --root_dir linear/96 --exp_number 4 --range "[[0,1,97],[1,2,99],[2,3,101],[3,4,103],[4,5,105],[5,6,107],[6,7,109],[7,8,111],[8,9,113],[9,10,115],[10,11,117],[11,12,119],[12,13,121],[13,14,123],[14,15,125],[15,16,127],[16,17,129],[17,18,131],[18,19,133],[19,20,135],[20,21,137],[21,22,139],[22,23,141],[23,24,143],[24,25,145],[25,26,147],[26,27,149],[27,28,151],[28,29,153],[29,30,155],[30,31,157],[31,32,159]]" --debug



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
