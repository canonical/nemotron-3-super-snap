#!/bin/bash -ex

sudo apt-get install -y python3-venv

python -m venv .venv
source .venv/bin/activate

pip install --upgrade pip
pip install -U huggingface_hub

hf download farshidtz/NVIDIA-Nemotron-3-Super-120B-A12B-UD-Q4_K_M-5G --local-dir components/model-120b-a12b-q4-k-m-gguf

ls components/model-120b-a12b-q4-k-m-gguf
