from transformers import AutoModelForCausalLM, AutoConfig
cache_dir_h2o = "/scratch/zt1/project/ramanid-prj/user/jmelend3"
model_name = "gradientai/Llama-3-8B-Instruct-262k"
print(f"getting config")
config = AutoConfig.from_pretrained(model_name, cache_dir=cache_dir_h2o)
print(f"config done")
print(f"getting model")
model = AutoModelForCausalLM.from_pretrained(model_name, cache_dir=cache_dir_h2o)
print(f"model done")
import sys
import copy
sys.path.append("/home/jmelend3/layerdrop")
from H2O.h2o_hf.utils_lm_eval.modify_llama import convert_kvcache_llama_heavy_recent, LlamaAttention_heavy_hitter
cache_dir_h2o = "/scratch/zt1/project/ramanid-prj/user/jmelend3"
print(f'ENDING IMPORTS\n')
ENABLE_Heavy_Hitter_FUNCTIONS = {
   "llama": convert_kvcache_llama_heavy_recent,
}
print(f'editing model now\n')
config.heavy_ratio = 0.1
config.recent_ratio = 0.1
print(f"{config}\n")
checkpoint = copy.deepcopy(model.state_dict())
print(f"PRE H2O CHANGES: {model._modules.items()}")
model = ENABLE_Heavy_Hitter_FUNCTIONS["llama"](model, config)
print(f"POST H2O CHANGES: {model._modules.items()}")
#model.load_state_dict(checkpoint)
#print(f'\nFINISHED CACHE STUFF\n')
#model.half().eval().cuda()
#print(f'good to go \n')
