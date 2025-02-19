#!/bin/bash
set -e

echo "Running stop.sh..."

# Find and kill the process running on port 3000
APP_PID=$(lsof -t -i:3000)

if [ -n "$APP_PID" ]; then
  echo "Stopping application with PID: $APP_PID"
  kill -9 $APP_PID
else
  echo "No running application found on port 3000."
fi

echo "stop.sh completed."
