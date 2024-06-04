#!/bin/bash

# Ensure the script exits if any command fails
set -e

# Login to Hugging Face (if not already logged in)
# Uncomment the following line if you haven't logged in yet
# huggingface-cli login

# Specify the model repository and target directory
MODEL_REPO="asiansoul/U-GO-GIRL-Remix-Llama-3-KoEn-8B-GGUF"
TARGET_DIR="u-go-girl-remix-llama-3-koen-8b-Q5_K_M.gguf"

# Create the target directory if it doesn't exist
mkdir -p $TARGET_DIR

# Download all files from the repository to the target directory
huggingface-cli repo download $MODEL_REPO --local-dir $TARGET_DIR --local-dir-use-symlinks False

# Download the specific file Modelfile_Q5_K_M (assuming it's in the same repository)
huggingface-cli download $MODEL_REPO Modelfile_Q5_K_M --local-dir $TARGET_DIR --local-dir-use-symlinks False
