#!/bin/bash

echo "No Download bundle script as of now..."
cat > script.sh << 'EOF'
#!/bin/bash
sudo su -
yum update -y
yum upgrade -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"
sleep 5
npm install pm2 -g
pm2 completion install
pm2 update
EOF
chmod +x script.sh
sh script.sh