from huggingface_hub import hf_hub_download
import os

# Define the model repository and the files to download
repo_id = "asiansoul/Lacers9-Bunny-Llama-3-KoEn-8B-GGUF"
filenames = ["ggml-model-Q5_K_M.gguf", "mmproj-model-f16.gguf", "Modelfile_Q5_K_M"]

# Create a directory to store the files
target_dir = "./Vision"

# Download files
for filename in filenames:
    # Download the file to the current directory
    hf_hub_download(repo_id=repo_id, filename=filename, local_dir=target_dir, local_dir_use_symlinks=False)

print("Files have been downloaded and saved to the current directory.")
