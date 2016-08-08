#!/bin/bash
set -e
apt-get update -y
apt-get install -y curl bzip2 build-essential libssl-dev python git
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
bash install_nvm.sh

