#!/bin/bash

# Fetch ngrok GPG key and add repository
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | \
  sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/ngrok.gpg && \
  echo "deb [signed-by=/etc/apt/trusted.gpg.d/ngrok.gpg] https://ngrok-agent.s3.amazonaws.com buster main" | \
  sudo tee /etc/apt/sources.list.d/ngrok.list > /dev/null

# Update package list and install ngrok
sudo apt update
sudo apt install ngrok
