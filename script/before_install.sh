#!/bin/bash
echo "Checking and installing Node.js..."

if ! command -v node &> /dev/null; then
    echo "Installing Node.js..."
    curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
    yum install -y nodejs
fi
