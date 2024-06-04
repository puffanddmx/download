#!/bin/bash

# Ensure the script exits if any command fails
set -e

# Login to Hugging Face (if not already logged in)
# Uncomment the following line if you haven't logged in yet
# huggingface-cli login

# Download the specific file Modelfile_Q5_K_M (assuming it's in the same repository)
huggingface-cli download asiansoul/U-GO-GIRL-Remix-Llama-3-KoEn-8B-GGUF u-go-girl-remix-llama-3-koen-8b-Q5_K_M.gguf Modelfile_Q5_K_M
 --local-dir ./ --local-dir-use-symlinks False

