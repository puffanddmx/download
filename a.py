from huggingface_hub import hf_hub_download
import shutil
import os

# Define the model repository and the files to download
repo_id = "asiansoul/U-GO-GIRL-Remix-Llama-3-KoEn-8B-GGUF"
filenames = ["u-go-girl-remix-llama-3-koen-8b-Q5_K_M.gguf", "Modelfile_Q5_K_M"]

# Create a directory to store the files
target_dir = "./"

# Download files
for filename in filenames:
    # Download the file to the cache directory
    cached_file = hf_hub_download(repo_id=repo_id, filename=filename)

    # Move the file from the cache directory to the target directory
    shutil.move(cached_file, os.path.join(target_dir, filename))

print("Files have been downloaded and moved to the current directory.")
