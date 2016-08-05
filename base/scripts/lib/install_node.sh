#!/bin/bash
set -e
NODE_VERSION=4.4.7
NODE_ARCH=x64

# check we need to do this or not

NODE_DIST=node-v${NODE_VERSION}-linux-${NODE_ARCH}

cd /tmp
curl -O -L http://nodejs.org/dist/v${NODE_VERSION}/${NODE_DIST}.tar.gz
tar xvzf ${NODE_DIST}.tar.gz
rm -rf /opt/nodejs
mv ${NODE_DIST} /opt/nodejs

ln -sf /opt/nodejs/bin/node /usr/bin/node
ln -sf /opt/nodejs/bin/npm /usr/bin/npm
npm install --global npm@3
# for npm module re-building
apt-get -y install build-essential libssl-dev git python
npm config set python /usr/bin/python2.7
sudo npm install -g node-gyp
# pre-install node source code for faster building
node-gyp install 4.4.7
