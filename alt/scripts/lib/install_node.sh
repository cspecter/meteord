#!/bin/bash
set -e

curl -sL https://deb.nodesource.com/setup_4.x | bash -
apt-get update -y
apt-get install -y nodejs
#apt-get install -y libavahi-compat-libdnssd-dev

node -v
npm -v

#npm cache clean -f
#npm install -g n
#n stable

npm -g install npm@latest
npm i -g node-gyp
node-gyp install 4.6.0
node-gyp -v
npm install --global node-pre-gyp
npm install --global nan
export npm_config_loglevel=http; export npm_config_spin=false
#export USER=root
#export HOME=/tmp
#sudo npm i -g talib
