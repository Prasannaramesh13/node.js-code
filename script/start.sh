#!/bin/bash

# Navigate to the app directory
cd /home/ubuntu/cicd

# Stop any running Node.js process
pm2 stop all || true

# Start the Node.js application
pm2 start server.js --name "myapp"

echo "✔ Application started successfully!"
