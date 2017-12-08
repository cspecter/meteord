#!/bin/bash
set -e

curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get update -y
apt-get install -y nodejs

node -v
npm -v


npm -g install npm@latest
npm i -g node-gyp@latest
npm explore npm -g -- npm install node-gyp@latest
node-gyp -v
npm install --global node-pre-gyp@latest
export npm_config_loglevel=http; export npm_config_spin=false