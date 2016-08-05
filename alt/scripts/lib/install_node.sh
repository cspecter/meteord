#!/bin/bash
set -e
#NODE_VERSION=4.4.7
#NPM_VERSION=3.10.6
#NODE_ARCH=x64
#
## check we need to do this or not
#
#NODE_DIST=node-v${NODE_VERSION}-linux-${NODE_ARCH}
#
#cd /tmp
#curl -O -L http://nodejs.org/dist/v${NODE_VERSION}/${NODE_DIST}.tar.gz
#tar xvzf ${NODE_DIST}.tar.gz
#rm -rf /opt/nodejs
#mv ${NODE_DIST} /opt/nodejs
#
#curl -L https://npmjs.org/install.sh | sh
#
#rm -rf /usr/lib/node_modules/npm
#mkdir -p /tmp/src
#cd /tmp/src
#curl -L https://github.com/npm/npm/archive/v${NPM_VERSION}.tar.gz | \
#    tar zxf - && \
#    cd npm-${NPM_VERSION} && \
#    make && \
#    make install
#
#ln -sf /opt/nodejs/bin/node /usr/bin/node
#ln -sf /opt/nodejs/bin/npm /usr/bin/npm
#
#npm install --global npm@3
#
## for npm module re-building
##apt-get -y install node-gyp
#npm install -g node-gyp

NODE_MAJOR_VERSION=6

# Based on https://github.com/sjevs/docker-node/

apt-get update && \
    apt-get install -y --no-install-recommends git curl apt-transport-https lsb-release ca-certificates && \

    # Installing node
    curl -sL https://deb.nodesource.com/setup_${NODE_MAJOR_VERSION}.x | bash - && \
    apt-get install -y nodejs && \

    apt-get purge --auto-remove -y curl libcurl3 python python-minimal python2.7 python2.7-minimal && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*p


npm install --production --no-optional && /bin/rm -rf /tmp/npm* /root/.npm /root/.node-gyp

# pre-install node source code for faster building
node-gyp install
npm install -g talib
