#!/bin/bash
# Start the new application version

cd /var/www/html/deployment/dist/
chmod +x server.js
echo "Starting the application..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"
npm install pm2 -g
pm2 completion install
pm2 update
pm2 startup
pm2 start /var/www/html/deployment/dist/server.js
pm2 save