#!/bin/bash
echo "Stopping Node.js application..."
pm2 stop all || true
