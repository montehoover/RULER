import torch
from transformers import AutoTokenizer, AutoModelForCausalLM, pipeline

print(f'USE GPU 1 1 RTXA5000 BECAUSE OTHERWISE DOESNT WORK')
model_kwargs = {'topk_adaptive':-1, 'attn_implementation': 'sdpa'}
second_try = {'topk_adaptive':-1}
print(f'VERIFYING: {torch.cuda.is_available()}')
try:
    print(f'ATTEMPTING MODEL')
    model = AutoModelForCausalLM.from_pretrained("gradientai/Llama-3-8B-Instruct-262k", trust_remote_code=True, device_map="auto", torch_dtype=torch.bfloat16, **model_kwargs)
    print(f'MODEL CHILLING')
except RuntimeError as e:
    print(f'something went wrong: {e}')
print(model)