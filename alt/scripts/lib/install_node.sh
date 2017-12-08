#!/bin/bash
set -e

curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get update -y
apt-get install -y nodejs

node -v
npm -v


npm -g install npm@latest
npm i -g node-gyp@3.6.2
npm explore npm -g -- npm install node-gyp@3.6.2
node-gyp -v
npm install --global node-pre-gyp@0.6.39
export npm_config_loglevel=http; export npm_config_spin=false