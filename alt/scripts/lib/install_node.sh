#!/bin/bash
set -e
nvm install 4.4.7
npm i -g node-gyp
nope-gyp install
npm i -g talib
