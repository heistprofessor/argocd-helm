#!/bin/bash

echo "No Download bundle script as of now..."
yum update -y
yum upgrade -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"
npm install pm2 -g
pm2 completion install
pm2 update
pm2 save