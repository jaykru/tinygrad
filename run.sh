#!/usr/bin/env bash
pip install uv
uv venv
source .venv/bin/activate
uv pip install numpy tiktoken
uv pip install -e .
BEAM=5 PYTHONPATH=. python3 examples/llm.c/train_gpt2.py --batch_size 64 --sequence_length 256
