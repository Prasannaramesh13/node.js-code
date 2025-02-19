#!/bin/bash

echo "Starting the Node.js application..."

# Navigate to the app directory
cd /home/ubuntu

# Stop any running application
APP_PID=$(lsof -t -i:3000)

if [ ! -z "$APP_PID" ]; then
  echo "Stopping existing Node.js application with PID $APP_PID..."
  kill -9 $APP_PID
else
  echo "No existing application running on port 3000"
fi

# Start the application in the background
nohup node server.js > app.log 2>&1 &

echo "Application started successfully!"
