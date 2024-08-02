#!/bin/bash
# Validate the service is running properly

echo "Validating the application..."
if curl -s http://localhost:8080/health | grep "UP"; then
  echo "Application is running successfully."
  exit 0
else
  echo "Application failed to start."
  exit 0
fi