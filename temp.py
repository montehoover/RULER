from transformers import AutoModelForCausalLM

print("STARTING")
name = "gradientai/Llama-3-8B-Instruct-262k"
model = AutoModelForCausalLM.from_pretrained(name)
print("DONE FINALLY MY GOD")
