#!/bin/bash

environment=$1

echo "Deploying to ${environment} environment..."

# Add your deployment logic here
# Example: SSH into a server and pull the latest Docker image
# ssh user@server "docker pull ghcr.io/raviteja869/mandelbrot-set-visualizer:latest && docker-compose up -d"

echo "Deployment to ${environment} completed."
