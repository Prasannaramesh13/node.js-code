#!/bin/bash

echo "Before Install: Stopping existing Node.js application if running..."

# Find and stop the process running on port 3000 (Modify if needed)
APP_PID=$(lsof -t -i:3000)

if [ ! -z "$APP_PID" ]; then
  echo "Stopping application with PID $APP_PID..."
  kill -9 $APP_PID
else
  echo "No application is running on port 3000"
fi

# Clean up old application files
echo "Removing old application files..."
rm -rf /home/ubuntu

# Ensure necessary dependencies are installed
echo "Updating system packages..."
sudo yum update -y

echo "Installing Node.js and npm..."
curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install -y nodejs

# Ensure the app directory exists
mkdir -p /home/ubuntu
echo "Before Install script execution completed."
