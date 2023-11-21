#!/bin/bash

# Deployment script for the Mandelbrot Set Visualizer application

# Arguments
environment=$1

# Deployment logic
echo "Deploying to ${environment} environment..."

# SSH command to pull the latest Docker image and restart the service using Docker Compose
# Replace 'user@server' with your server's SSH login and 'path_to_docker_compose' with the actual path
ssh user@server "cd path_to_docker_compose && \
                docker pull ghcr.io/raviteja869/mandelbrot-set-visualizer:latest && \
                docker-compose down && \
                docker-compose up -d"

echo "Deployment to ${environment} environment completed."
