#!/bin/bash

# Your VM/K8s node IP
ipv4_address="192.168.200.21"

file_to_find="../backend/.env.docker"

# Update the FRONTEND_URL in the .env file
if [ -f $file_to_find ]; then
    sed -i -e "s|FRONTEND_URL.*|FRONTEND_URL=\"http://${ipv4_address}:5173\"|g" $file_to_find
else
    echo "ERROR: File not found."
fi
