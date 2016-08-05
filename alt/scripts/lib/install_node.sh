#!/bin/bash
set -e
NODE_VERSION=4.4.7
NPM_VERSION=3.10.6
NODE_ARCH=x64

# check we need to do this or not

NODE_DIST=node-v${NODE_VERSION}-linux-${NODE_ARCH}

cd /tmp
curl -O -L http://nodejs.org/dist/v${NODE_VERSION}/${NODE_DIST}.tar.gz
tar xvzf ${NODE_DIST}.tar.gz
rm -rf /opt/nodejs
mv ${NODE_DIST} /opt/nodejs

#curl -L https://npmjs.org/install.sh | sh

rm -rf /usr/lib/node_modules/npm
mkdir -p /tmp/src
cd /tmp/src

curl -L https://github.com/npm/npm/archive/v${NPM_VERSION}.tar.gz | \
    tar zxf - && \
    cd npm-${NPM_VERSION} && \
    make && \
    make install

ln -sf /opt/nodejs/bin/node /usr/bin/node
ln -sf /opt/nodejs/bin/npm /usr/bin/npm

npm install -g node-gyp

#npm install --global npm@3

#npm install -g node-gyp

# pre-install node source code for faster building
node-gyp install
npm install -g --unsafe-perm talib
