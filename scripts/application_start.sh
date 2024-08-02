#!/bin/bash
# Start the new application version

cd /var/www/html/deployment/dist/
chmod +x server.js
echo "Starting the application..."
pm2 start /var/www/html/deployment/dist/server.js
pm2 save