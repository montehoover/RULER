# Monte's fork of RULER for Nexus

## Getting started
1. Clone this repo and the top-k fork of Huggingface Transformers in the same folder:
   ```
   git clone https://github.com/montehoover/RULER.git
   git clone https://github.com/montehoover/transformers.git
   ```

1. Create conda environment for RULER. The yaml file does an editable install of the local version of transfomers, expecting both repos to be in the same folder.
    ```
    conda env create -f conda_ruler.yml
    conda activate ruler
    ```
2. Confirm environment works by running a tiny Needle In A Haystack task with a single example:
    ```
    srun --pty --gres=gpu:rtxa5000:1 bash
    python run.py --tasks niah_single_1 --num_samples 1 --num_tokens 4096 --debug
    ```

## Running entire benchmark
1. Download data
    ```
    cd scripts/data/synthetic/json/
    python download_paulgraham_essay.py
    bash download_qa_dataset.sh
    cd ../../../..
    ```
2. Run all tasks
    ```
    python run.py --tasks all
    ```

## Accelerating with vLLM
vLLM allows us to do inference on context lengths that cause us to run out of GPU memory when using flash attention or sdpa with huggingface. With a Llama3-8b we can inference on lengths up to 40k on an A5000 and up to 215k on an A6000, each taking less than three minutes to do a full forward pass and generate a paragraph of text. Here are the instructions for using it:
1. Look at [conda_ruler_vllm.yml](conda_ruler_vllm.yml) and edit the last line of the file to be `- vllm==0.6.0`. (The file by default expects you to have a local fork of vllm, and we use that for saving KV caches (see below).)
2. Create a conda environment from this file:
   ```
   conda env create -f conda_ruler_vllm.yml
   conda activate vllm_ruler
   ```
3. Run something with long context:
   ```
   python run.py --framework local_vllm --num_tokens 32768
   ```

## Saving key, value caches for future runs
1. Clone our fork of vLLM: [https://github.com/montehoover/vllm](https://github.com/montehoover/vllm)
2. Look at the instructions in our vLLM repo for building, but instead of using that conda yaml file, use the yaml file here that combines vllm with ruler. Don't change the last line on the file. Unlike the instructions above, this will build the cuda kernels from scratch and takes about an hour. Execute the conda command within a many-cpu SLURM job for improved build time.
   ```
   conda env create -f conda_ruler_vllm.yml
   conda activate vllm_ruler
   ```
5. Run with the save kv cache flag and look for caches in the output data folder:
   ```
   python run.py --framework local_vllm --save_kv_cache
   ```


## Arm64 stuff
```
sudo apt-get install libopencc-dev
conda create -n ruler_arm python=3.11
pip install Cython
pip install -r requirements_arm.txt
```


<br>
Original README:

---------

# 📏 RULER: What’s the Real Context Size of Your Long-Context Language Models?

This repository contains code for our paper [RULER: What’s the Real Context Size of Your Long-Context Language Models](https://arxiv.org/abs/2404.06654). RULER generates synthetic examples to evaluate long-context language models with configurable sequence length and task complexity. We benchmark 17 open-source models across 4 task categories (in total 13 tasks) in RULER, evaluating long-context capabilities beyond simple in-context recall. Here are our main results.

|Models|Claimed Length|Effective Length|4K|8K|16K|32K|64K|128K|Avg.|wAvg. (inc)|wAvg. (dec)|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|[Llama2](https://huggingface.co/meta-llama/Llama-2-7b-chat-hf) (7B)|4K||85.6|
[Gemini-1.5-pro](https://ai.google.dev/gemini-api/docs/models/gemini#:~:text=Gemini-,Gemini%201.5%20Pro%20(Preview%20only),-Text%20and%20images)|1M|>128K|<ins>96.7</ins>|<ins>95.8</ins>|<ins>96.0</ins>|<ins>95.9</ins>|<ins>95.9</ins>|<ins>94.4</ins>|95.8|95.5 **(1st)**|96.1 **(1st)**|
[GPT-4-1106-preview](https://platform.openai.com/docs/models/gpt-4-turbo-and-gpt-4#:~:text=gpt%2D4%2D1106%2Dpreview,Up%20to%20Apr%202023)|128K|64K|<ins>96.6</ins>|<ins>96.3</ins>|<ins>95.2</ins>|<ins>93.2</ins>|<ins>87.0</ins>|81.2|91.6|89.0 **(2nd)**|94.1 **(2nd)**|
[Llama3.1](https://huggingface.co/meta-llama/Meta-Llama-3.1-70B-Instruct) (70B)|128K|64K|<ins>96.5</ins>|<ins>95.8</ins>|<ins>95.4</ins>|<ins>94.8</ins>|<ins>88.4</ins>|66.6|89.6|85.5 **(6th)**|93.7 **(3rd)**|
[Qwen2](https://huggingface.co/Qwen/Qwen2-72B-Instruct) (72B)|128K|32K|<ins>96.9</ins>|<ins>96.1</ins>|<ins>94.9</ins>|<ins>94.1</ins>|79.8|53.7|85.9|79.6 **(12th)**|92.3 **(4th)**|
[Command-R-plus](https://huggingface.co/CohereForAI/c4ai-command-r-plus) (104B)|128K|32K|<ins>95.6</ins>|<ins>95.2</ins>|<ins>94.2</ins>|<ins>92.0</ins>|84.3|63.1|87.4|82.7 **(9th)**|92.1 **(5th)**|
[GLM4](https://huggingface.co/THUDM/glm-4-9b-chat-1m) (9B)|1M|64K|<ins>94.7</ins>|<ins>92.8</ins>|<ins>92.1</ins>|<ins>89.9</ins>|<ins>86.7</ins>|83.1|89.9|88.0 **(3rd)**|91.7 **(6th)**|
[Llama3.1](https://huggingface.co/meta-llama/Meta-Llama-3.1-8B-Instruct) (8B)|128K|32K|<ins>95.5</ins>|<ins>93.8</ins>|<ins>91.6</ins>|<ins>87.4</ins>|84.7|77.0|88.3|85.4 **(7th)**|91.3 **(7th)**|
[Command-R](https://huggingface.co/CohereForAI/c4ai-command-r-v01) (35B)|128K|32K|<ins>93.8</ins>|<ins>93.3</ins>|<ins>92.4</ins>|<ins>89.5</ins>|84.9|76.0|88.3|85.5 **(5th)**|91.1 **(8th)**|
[MegaBeam-Mistral](https://huggingface.co/aws-prototyping/MegaBeam-Mistral-7B-512k) (7B)|512K|32K|<ins>93.8</ins>|<ins>92.5</ins>|<ins>92.0</ins>|<ins>89.2</ins>|83.7|83.7|89.1|87.3 **(4th)**|91.0 **(9th)**|
[Mistral-Large](https://huggingface.co/mistralai/Mistral-Large-Instruct-2407) (123B)|128K|32K|<ins>96.2</ins>|<ins>96.1</ins>|<ins>95.1</ins>|<ins>93.0</ins>|78.8|23.7|80.5|70.6 **(18th)**|90.4 **(10th)**|
[GradientAI/Llama3](https://huggingface.co/gradientai/Llama-3-70B-Instruct-Gradient-1048k) (70B)|1M|16K|<ins>95.1</ins>|<ins>94.4</ins>|<ins>90.8</ins>|85.4|80.9|72.1|86.5|82.6 **(10th)**|90.3 **(11th)**|
[Mixtral-8x22B](https://huggingface.co/mistralai/Mixtral-8x22B-instruct-v0.1) (39B/141B)|64K|32K|<ins>95.6</ins>|<ins>94.9</ins>|<ins>93.4</ins>|<ins>90.9</ins>|84.7|31.7|81.9|73.5 **(16th)**|90.3 **(12th)**|
[Yi](https://huggingface.co/01-ai/Yi-34B-200K) (34B)|200K|32K|<ins>93.3</ins>|<ins>92.2</ins>|<ins>91.3</ins>|<ins>87.5</ins>|83.2|77.3|87.5|84.8 **(8th)**|90.1 **(13th)**|
[Phi3-mini](https://huggingface.co/microsoft/Phi-3-mini-128K-instruct) (3.8B)|128K|32K|<ins>92.2</ins>|<ins>91.5</ins>|<ins>90.7</ins>|<ins>87.5</ins>|80.6|66.7|84.8|80.9 **(11th)**|88.7 **(14th)**|
[Phi3-medium](https://huggingface.co/microsoft/Phi-3-medium-128K-instruct) (14B)|128K|32K|<ins>93.3</ins>|<ins>93.2</ins>|<ins>91.1</ins>|<ins>86.8</ins>|78.6|46.1|81.5|74.8 **(15th)**|88.3 **(15th)**|
[Mixtral-8x7B](https://huggingface.co/mistralai/Mixtral-8x7B-instruct-v0.1) (12.9B/46.7B)|32K|32K|<ins>94.9</ins>|<ins>92.1</ins>|<ins>92.5</ins>|<ins>85.9</ins>|72.4|44.5|80.4|72.8 **(17th)**|87.9 **(16th)**|
[GradientAI/Llama3](https://huggingface.co/gradientai/Llama-3-8B-Instruct-Gradient-1048k) (8B)|1M|16K|<ins>92.8</ins>|<ins>90.3</ins>|<ins>85.7</ins>|79.9|76.3|69.5|82.4|78.5 **(13th)**|86.3 **(17th)**|
[FILM-7B*](https://arxiv.org/pdf/2404.16811) (7B)|32K|32K|<ins>92.8</ins>|<ins>88.2</ins>|<ins>88.1</ins>|<ins>86.9</ins>|70.1|27.1|75.5|66.4 **(20th)**|84.7 **(18th)**|
[InternLM2.5](https://huggingface.co/internlm/internlm2_5-7b-chat-1m) (7B)|1M|4K|<ins>88.1</ins>|85.5|84.5|82.7|75.5|68.9|80.9| 77.8 **(14th)**|83.9 **(19th)**|
[Mistral](https://huggingface.co/mistralai/Mistral-7B-instruct-v0.2) (7B)|32K|16K|<ins>93.6</ins>|<ins>91.2</ins>|<ins>87.2</ins>|75.4|49.0|13.8|68.4|55.6 **(22th)**|81.2 **(20th)**|
[Mistral-Nemo](https://huggingface.co/mistralai/Mistral-Nemo-Instruct-2407)|128K|16K|<ins>87.8</ins>|<ins>87.2</ins>|<ins>87.7</ins>|69.0|46.8|19.0|66.2|54.7 **(23th)**|77.8 **(21th)**|
[GLM3](https://huggingface.co/THUDM/chatglm3-6b-128K) (6B)|128K|4K|<ins>87.8</ins>|83.4|78.6|69.9|56.0|42.0|69.6|62.0 **(21th)**|77.2 **(22th)**|
[LWM](https://huggingface.co/LargeWorldModel/LWM-Text-Chat-1M) (7B)|1M|<4K|82.3|78.4|73.7|69.1|68.1|65.0|72.8|69.9 **(19th)**|75.7 **(23th)**|
[DBRX](https://huggingface.co/databricKs/dbrx-instruct) (36B/132B)|32K|8K|<ins>95.1</ins>|<ins>93.8</ins>|83.6|63.1|2.4|0.0|56.3|38.0 **(24th)**|74.7 **(24th)**|
[Qwen1.5](https://huggingface.co/Qwen/Qwen1.5-72B-Chat) (72B)|32K|8K|<ins>94.9</ins>|<ins>93.8</ins>|78.0|67.8|0.0|0.0|55.7|37.5 **(25th)**|74.0 **(25th)**|
[Together](https://huggingface.co/togethercomputer/Llama-2-7B-32K-instruct) (7B)|32K|4K|<ins>88.2</ins>|81.1|69.4|63.0|0.0|0.0|50.3|33.8 **(26th)**|66.7 **(26th)**|
[LongChat](https://huggingface.co/lmsys/longchat-7b-v1.5-32K) (7B)|32K|<4K|84.7|79.9|70.8|59.3|0.0|0.0|49.1|33.1 **(27th)**|65.2 **(27th)**|
[LongAlpaca](https://huggingface.co/YuKang/LongAlpaca-13B) (13B)| 32K|<4K|60.6|57.0|56.6|43.6|0.0|0.0|36.3|24.7 **(28th)**|47.9 **(28th)**|

- Despite achieving nearly perfect performance on the vanilla needle-in-a-haystack (NIAH) test, all models (except for Gemini-1.5-pro) exhibit large degradation on tasks in RULER as sequence length increases. 
- While all models claim context size of 32k tokens or greater, only half of them can effectively handle sequence length of 32K by exceeding a qualitative threshold, Llama-2-7b performance at 4K (85.6%). The performance exceeding the threshold is <ins>underlined</ins>.
- Almost all models fall below the threshold before reaching the claimed context lengths. 
- Notes (FILM-7B)
    - The results are submitted by authors of this [paper](https://arxiv.org/pdf/2404.16811). They use [YaRN](https://arxiv.org/pdf/2309.00071) without further training for the evaluation length exceeding 32K (64K and 128K). 
    - They do not use the one-shot example for the CWE task.

## 💡 Requirements

- Docker container: `docker pull cphsieh/ruler:0.1.0`
- The requirements are listed in `docker/Dockerfile` and `docker/requirements.txt`. Use the following command to build the container based on NVIDIA's PyTorch container `nvcr.io/nvidia/pytorch:23.08-py3`.
```
cd docker/
DOCKER_BUILDKIT=1 docker build -f Dockerfile -t cphsieh/ruler:0.1.0 .
```


## 🔍 Evaluate long-context LMs
### 1. Download data
- Paul Graham Essays for NIAH are downloaded from [NIAH Github](https://github.com/gkamradt/LLMTest_NeedleInAHaystack/tree/main/needlehaystack/PaulGrahamEssays) and [Paul Graham Blog](https://paulgraham.com/articles.html). 
- QA datasets are downloaded from [SQuAD](https://rajpurkar.github.io/SQuAD-explorer/) and [HotpotQA](https://hotpotqa.github.io/).
```
cd scripts/data/synthetic/json/
python download_paulgraham_essay.py
bash download_qa_dataset.sh
```
### 2. Download model 
- We download the models from [Huggingface](https://huggingface.co/models).
- The input template of each model is stored in `scripts/data/template.py`. Please add new model template if your new model uses a different chat template.
- Increase `max_position_embeddings` in `config.json` if you want to run inference longer than model defined length.
- (Optional) If you are using [TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM/tree/main), please build your model engine based on their example scripts (e.g., [Llama](https://github.com/NVIDIA/TensorRT-LLM/tree/main/examples/llama)) with their [Docker container](https://github.com/NVIDIA/TensorRT-LLM/tree/main?tab=readme-ov-file#installation).

### 3. Run evaluation pipeline

- **Setup `run.sh`**
```
GPUS="" # number of GPUs
ROOT_DIR="" # the path that stores generated task samples and model predictions. 
MODEL_DIR="" # the path that contains individual model folders from Huggingface.
ENGINE_DIR="" # the path that contains individual engine folders from TensorRT-LLM.
```
- **Setup `config_models.sh`**
```    
case $MODEL_NAME in
    YOUR_HF_MODEL_NAME)
        MODEL_PATH=${MODEL_DIR}/YOUR_MODEL_FOLDER
        MODEL_TEMPLATE_TYPE="" # base, meta-chat, etc. defined in `scripts/data/template.py`
        MODEL_FRAMEWORK="" # hf or vllm
        ;;
    YOUR_TRTLLM_ENGINE_NAME)
        MODEL_PATH=${ENGINE_DIR}/YOUR_ENGINE_FOLDER
        MODEL_TEMPLATE_TYPE="" # base, meta-chat, etc. defined in `scripts/data/template.py`
        MODEL_FRAMEWORK="trtllm"
        ;;
    YOUR_OPENAI_MODEL_NAME)
        MODEL_PATH="" # OpenAI model name listed in https://platform.openai.com/docs/models/
        MODEL_TEMPLATE_TYPE="base"
        MODEL_FRAMEWORK="openai"
        TOKENIZER_PATH="cl100k_base"
        TOKENIZER_TYPE="openai"
        OPENAI_API_KEY="" # your OpenAI API key
        ;;
    YOUR_GEMINI_MODEL_NAME)
        MODEL_PATH="" # Gemini model name listed in https://ai.google.dev/gemini-api/docs/models/gemini
        MODEL_TEMPLATE_TYPE="base"
        MODEL_FRAMEWORK="gemini"
        TOKENIZER_PATH=$MODEL_PATH
        TOKENIZER_TYPE="gemini"
        GEMINI_API_KEY="" # your Gemini API key
        ;;
```

- **Start evaluation based on our default `synthetic` benchmark**
```
bash run.sh YOUR_MODEL_NAME synthetic
```

## 🧠 (Optional) Customize task complexity 
The tasks to be evaluated on are stored in `scripts/config_tasks.sh`. Configuration of each task is defined in `scripts/synthetic.yaml`. The complexity of each task can be configured by changing the arguments which we describe in detail below.

| Category           |Task name                 | Configurations   |
|:--------------------:|:---------------------------:|--------------------|
| Retrieval          | niah                      |**type_haystack**: `repeat/essay/needle`<br># repeat: repeated noise sentences<br># essay: Paul Graham Essays<br># needle: distracted needles<br><br>**type_needle_k**: `words/numbers/uuids`<br>**type_needle_v**: `words/numbers/uuids`<br># words: adjective-noun<br># numbers: 7 digits<br># uuids: 32 digits<br><br>**num_needle_k**: `int >= 1`<br># add multiple needles in haystack <br>**num_needle_v**: `int >= 1`<br> # retrieve multiple values from a single key<br>**num_needle_q**: `int >= 1`<br> # retrieve multiple values from multiple keys  |
| Multi-hop<br>Tracing  | variable_tracking         | **num_chains**: `int >= 1`<br>#  number of variable name-binding chains<br>**num_hops**: `int >= 1`<br># number of times binding variable names in each chain                    |
| Aggregation        | common_words_extraction   |**freq_cw**: `int >= 1`<br># frequency of common words<br>**freq_ucw**: `int >= 1`<br># frequency of uncommon words<br>**num_cw**: `int >= 1` <br># number of common words                  |
|  Aggregation   | freq_words_extraction     |**alpha**: `float > 1.0`<br># parameter of the distributation to draw synthetic words. Reducing alpha to increase the difficulty of this task. Note that increasing the number of words to return also increases the difficulty of this task, we use `3` in our evaluations as models show worse performance at short context size when more words need to be returned.                    |
| Question<br>Answering | qa                  |**dataset**: `squad` or `hotpotqa`<br># the short-context qa dataset we use



## 🚀 (Optional) Contribute a new synthetic task 
### 1. Create a python script for data preparation
* Add basic arguments (required) and complexity configurations in the python script.
* Verify the script is reproducible given a tokenizer, a sequence length, and a random seed.
* Save the script under the folder `scripts/data/synthetic`.

### 2. Add task template 
* Add `template` and `tokens_to_generate` in `scripts/data/synthetic/constants.py`.
* Add `answer_predfix` to prevent model from refusing to answer.

### 3. Add evaluation metric
* Add the automatic metric to evaluate your task in `scripts/eval/synthetic/constants.py`

### 4. Add required configurations
* Define your task name and complexity configurations in `scripts/synthetic.yaml`.
* Add your task name in `scripts/config_tasks.sh`

## 🛠️ Limitations
While tasks in RULER are designed to be configurable, we only evaluate the above models with 13 task configurations. These tasks were selected because most models can achieve good (some almost perfect) performance at short context size (<= 4K), which leaves ample room to observe degradation as we extend the input length. We did not include more complexed tasks in RULER that models show worse performance at short context size. We also did not stress test every model with more difficult task configurations. Although RULER covers four task categories extending previous evaluation protocol and provides a clean test bed for sanity-checking LMs with known upper bound performance, it is by no means comprehensive enough and it cannot replace the more preferred realistic tasks. We welcome people to contribute new tasks and/or new task categories to help evaluate long-context capabilities. 


## 📝 Citation
```
@article{hsieh2024ruler,
  title={RULER: What's the Real Context Size of Your Long-Context Language Models?},
  author={Cheng-Ping Hsieh and Simeng Sun and Samuel Kriman and Shantanu Acharya and Dima Rekesh and Fei Jia and Yang Zhang and Boris Ginsburg},
  year={2024}
  journal={arXiv preprint arXiv:2404.06654},
}
```
Disclaimer: This project is strictly for research purposes, and not an official product from NVIDIA.
