#!/bin/bash

echo "After Install: Deploying Node.js application..."

cd /home/ubuntu

# Install dependencies
echo "Installing dependencies..."
npm install

# Start the application in the background
echo "Starting the application..."
nohup node server.js > app.log 2>&1 &

echo "Deployment completed successfully!"
