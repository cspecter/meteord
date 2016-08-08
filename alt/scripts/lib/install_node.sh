#!/bin/bash
set -e
apt-get update
apt-get install build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh
source ~/.profile
nvm install 4.4.7
npm i -g node-gyp
npm i -g talib
