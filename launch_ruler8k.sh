# Launch this with:
# launch launch_ruler8k.sh  --classical_logfile_names --gpu_type rtxa4000 --mem 48

# Trial Runs
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir trial --exp_number 1 --range "[[0,16,32]]"
python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir trial --exp_number 2 --range "[[0,8,32], [8,16,64]]"

# Linears
# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir linear/8 --exp_number 1 --range "[[0,1,8],[1,2,15],[2,3,22],[3,4,29],[4,5,36],[5,6,43],[6,7,50],[7,8,57],[8,9,64],[9,10,71],[10,11,78],[11,12,85],[12,13,92],[13,14,99],[14,15,106],[15,16,113],[16,17,120],[17,18,127],[18,19,134],[19,20,141],[20,21,148],[21,22,155],[22,23,162],[23,24,169],[24,25,176],[25,26,183],[26,27,190],[27,28,197],[28,29,204],[29,30,211],[30,31,218],[31,32,593]]"

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir linear/16 --exp_number 1 --range "[[0,1,16],[1,2,23],[2,3,30],[3,4,37],[4,5,44],[5,6,51],[6,7,58],[7,8,65],[8,9,72],[9,10,79],[10,11,86],[11,12,93],[12,13,100],[13,14,107],[14,15,114],[15,16,121],[16,17,128],[17,18,135],[18,19,142],[19,20,149],[20,21,156],[21,22,163],[22,23,170],[23,24,177],[24,25,184],[25,26,191],[26,27,198],[27,28,205],[28,29,212],[29,30,219],[30,31,226],[31,32,345]]"

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir linear/32 --exp_number 1 --range "[[0,1,32],[1,2,38],[2,3,44],[3,4,50],[4,5,56],[5,6,62],[6,7,68],[7,8,74],[8,9,80],[9,10,86],[10,11,92],[11,12,98],[12,13,104],[13,14,110],[14,15,116],[15,16,122],[16,17,128],[17,18,134],[18,19,140],[19,20,146],[20,21,152],[21,22,158],[22,23,164],[23,24,170],[24,25,176],[25,26,182],[26,27,188],[27,28,194],[28,29,200],[29,30,206],[30,31,212],[31,32,314]]"

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir linear/48 --exp_number 1 --range "[[0,1,48],[1,2,53],[2,3,58],[3,4,63],[4,5,68],[5,6,73],[6,7,78],[7,8,83],[8,9,88],[9,10,93],[10,11,98],[11,12,103],[12,13,108],[13,14,113],[14,15,118],[15,16,123],[16,17,128],[17,18,133],[18,19,138],[19,20,143],[20,21,148],[21,22,153],[22,23,158],[23,24,163],[24,25,168],[25,26,173],[26,27,178],[27,28,183],[28,29,188],[29,30,193],[30,31,198],[31,32,283]]"

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir linear/64 --exp_number 1 --range "[[0,1,64],[1,2,68],[2,3,72],[3,4,76],[4,5,80],[5,6,84],[6,7,88],[7,8,92],[8,9,96],[9,10,100],[10,11,104],[11,12,108],[12,13,112],[13,14,116],[14,15,120],[15,16,124],[16,17,128],[17,18,132],[18,19,136],[19,20,140],[20,21,144],[21,22,148],[22,23,152],[23,24,156],[24,25,160],[25,26,164],[26,27,168],[27,28,172],[28,29,176],[29,30,180],[30,31,184],[31,32,252]]"

# python run.py --model_name gradientai/Llama-3-8B-Instruct-262k --framework hf --num_tokens 8192 --num_samples 40 --attn_implementation topk --topk 2 --task all --root_dir linear/96 --exp_number 1 --range "[[0,1,96],[1,2,98],[2,3,100],[3,4,102],[4,5,104],[5,6,106],[6,7,108],[7,8,110],[8,9,112],[9,10,114],[10,11,116],[11,12,118],[12,13,120],[13,14,122],[14,15,124],[15,16,126],[16,17,128],[17,18,130],[18,19,132],[19,20,134],[20,21,136],[21,22,138],[22,23,140],[23,24,142],[24,25,144],[25,26,146],[26,27,148],[27,28,150],[28,29,152],[29,30,154],[30,31,156],[31,32,198]]"



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
