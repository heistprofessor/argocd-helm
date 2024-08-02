#!/bin/bash
# Start the new application version

cd /var/www/html/deployment/dist/
chmod +x server.js
# yum update -y
# yum upgrade -y
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# source ~/.bashrc
# nvm install --lts
# node -e "console.log('Running Node.js ' + process.version)"
# npm install pm2 -g
# pm2 startup
# pm2 save
echo "Starting the application..."
pm2 start /var/www/html/deployment/dist/server.js
pm2 save