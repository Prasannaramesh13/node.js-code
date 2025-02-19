#!/bin/bash

echo "Installing dependencies..."

# Update the system packages
sudo yum update -y

# Install Node.js and npm (if not installed)
if ! command -v node &> /dev/null; then
  echo "Node.js not found! Installing..."
  curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
  sudo yum install -y nodejs
else
  echo "Node.js is already installed!"
fi

# Navigate to the app directory
cd /home/ubuntu/cicd

# Install npm dependencies
echo "Installing npm dependencies..."
npm install

echo "Installation completed successfully!"
