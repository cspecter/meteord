#!/bin/bash
set -e
apt-get update -y
apt-get install -y curl bzip2 build-essential libssl-dev python git aptitude libstdc++6 pkg-config libglib2.0-0 libavahi-compat-libdnssd-dev libkrb5-dev

ldconfig

echo Europe/Stockholm >/etc/timezone && \
ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime && \
dpkg-reconfigure -f noninteractive tzdata