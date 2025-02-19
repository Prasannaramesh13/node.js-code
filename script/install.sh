#!/bin/bash

# Stop execution on any error
set -e

# Navigate to the application directory
cd /home/ubuntu/cicd

# Install Node.js dependencies
npm install

# Optional: Build the project (if applicable)
npm run build || echo "No build step"

echo "✔ Node.js dependencies installed successfully!"
