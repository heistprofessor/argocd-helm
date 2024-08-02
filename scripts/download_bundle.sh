#!/bin/bash

echo "No Download bundle script as of now..."
yum update -y
yum upgrade -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"
npm install pm2 -g
pm2 startup
pm2 save