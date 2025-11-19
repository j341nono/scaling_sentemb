#!/bin/bash


MODEL_PATH=facebook/opt-2.7b # or  decapoda-research/llama-x-hf  x model size 7b 13b 
LORA=royokong/prompteol-opt-2.7b # or royokong/prompteol-llama-x x model size 7b 13b
TEMPLATE='This_sentence_:_"*sent_0*"_means_in_one_word:"'
uv run evaluation.py \
    --model_name_or_path   $MODEL_PATH \
    --mode test --mask_embedding_sentence \
    --mask_embedding_sentence_template $TEMPLATE --lora_weight $LORA --load_kbit 16 

