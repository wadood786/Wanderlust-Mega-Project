#!/bin/bash

# Your VM/K8s node IP
ipv4_address="192.168.200.21"

file_to_find="../frontend/.env.docker"

# Update the VITE_API_PATH in the .env file
if [ -f $file_to_find ]; then
    sed -i -e "s|VITE_API_PATH.*|VITE_API_PATH=\"http://${ipv4_address}:31100\"|g" $file_to_find
else
    echo "ERROR: File not found."
fi
