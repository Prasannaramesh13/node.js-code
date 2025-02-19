#!/bin/bash
set -e

echo "Running before_install.sh..."

# Find a process listening on port 3000 (adjust the port if needed)
APP_PID=$(lsof -t -i:3000)

if [ -n "$APP_PID" ]; then
  echo "Found running process on port 3000 (PID: $APP_PID), stopping it..."
  kill -9 $APP_PID
else
  echo "No running application found on port 3000."
fi

echo "before_install.sh completed."
