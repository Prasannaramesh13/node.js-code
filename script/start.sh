#!/bin/bash
set -e

echo "Running start.sh..."

# Change directory to your application folder
cd /home/ubuntu/cicd

# Start the application in the background and redirect output to a log file
nohup node server.js > app.log 2>&1 &

echo "Application started successfully."
