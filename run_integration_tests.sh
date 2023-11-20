#!/bin/bash

# Simple script to test the Flask application endpoints

echo "Running integration tests..."

# Test the home route
curl -f http://localhost:5000/
if [ $? -ne 0 ]; then
    echo "Home route test failed"
    exit 1
fi

# Test the plot route
curl -f -X POST -H "Content-Type: application/json" \
     -d '{"xmin": -2.0, "xmax": 1.0, "ymin": -1.5, "ymax": 1.5}' \
     http://localhost:5000/plot
if [ $? -ne 0 ]; then
    echo "Plot route test failed"
    exit 1
fi

echo "Integration tests passed successfully"
