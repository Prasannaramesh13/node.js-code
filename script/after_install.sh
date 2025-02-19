#!/bin/bash
set -e

echo "Running after_install.sh..."

# Change directory to your application folder (adjust the path as necessary)
cd /home/ubuntu/cicd

# Install Node.js dependencies
npm install

echo "after_install.sh completed. Dependencies installed."
