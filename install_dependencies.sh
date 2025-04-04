#!/bin/bash
# Use yum instead of apt
echo "Installing system dependencies"
sudo yum update -y
sudo yum install -y python3 python3-pip  # Adjust to install the necessary packages

# If you need to install Python dependencies from requirements.txt
echo "Installing Python dependencies"
pip3 install -r requirements.txt
