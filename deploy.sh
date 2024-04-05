#!/bin/bash -v

# Update package lists
sudo apt-get update

# Install Python
sudo apt-get install -y python3


# install nodejs
sudo apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs


# copy build file to vm
cd /opt
wget -O e2e-server.tar "enter-storage-account-url-where-tar-file-is-present"
 
#unzip files
tar -xf e2e-server.tar

#start the artifact
ll
npm install

npm start

