#!/bin/bash
set -e
apt-get update -y
apt-get install -y curl bzip2 build-essential python git
# for npm module re-building
apt-get -y install build-essential libssl-dev git python
npm install -g node-gyp
# pre-install node source code for faster building
node-gyp install 4.4.7
