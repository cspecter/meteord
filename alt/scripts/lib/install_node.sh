#!/bin/bash
set -e

curl -sL https://deb.nodesource.com/setup_4.x | bash -
apt-get install -y nodejs

npm cache clean -f
npm install -g n
n stable

npm i -g node-gyp
node-gyp install
npm i talib
