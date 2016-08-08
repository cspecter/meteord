#!/bin/bash
set -e
apt-get update -y
apt-get install -y build-essential libssl-dev
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
bash install_nvm.sh
source ~/.profile
nvm install 4.4.7
npm i -g node-gyp
npm i -g talib
