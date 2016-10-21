FROM ubuntu:16.10
MAINTAINER Chad Specter

##use mirrors for faster apt downloads no matter where the machine that builds the image is
#RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt trusty main restricted universe multiverse" > /etc/apt/sources.list; \
#	echo "deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list; \
#	echo "deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list; \
#	echo "deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
#
##install required software before using nvm/node/npm/bower
#RUN apt-get update && apt-get install -y curl git python build-essential
#
##add user node and use it to install node/npm and run the app
#RUN useradd --home /home/node -m -U -s /bin/bash node
#
##allow some limited sudo commands for user `node`
#RUN echo 'Defaults !requiretty' >> /etc/sudoers; \
#    echo 'node ALL= NOPASSWD: /usr/sbin/dpkg-reconfigure -f noninteractive tzdata, /usr/bin/tee /etc/timezone, /bin/chown -R node\:node /myapp' >> /etc/sudoers;
#
##run all of the following commands as user node from now on
#USER node
#
#RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.31.3/install.sh | bash
#
##change it to your required node version
#ENV NODE_VERSION 4.4.7
#
##needed by nvm install
#ENV NVM_DIR /home/node/.nvm
#
##install the specified node version and set it as the default one, install the global npm packages
#RUN . ~/.nvm/nvm.sh && nvm install $NODE_VERSION && nvm alias default $NODE_VERSION && npm install -g bower forever --user "node"
#
##on container's boot the run script will update/install all required npm/bower packages for the app and run the app
#ADD ./run_all.sh /run_all.sh

## Declare constants
#ENV NVM_VERSION v0.29.0
#ENV NODE_VERSION v5.0.0
#
## Replace shell with bash so we can source files
#RUN rm /bin/sh && ln -s /bin/bash /bin/sh
#
## Install pre-reqs
#RUN apt-get update
#RUN apt-get -y install curl build-essential
#
## Install NVM
#RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/${NVM_VERSION}/install.sh | bash
#
## Install NODE
#RUN source ~/.nvm/nvm.sh; \
#    nvm install $NODE_VERSION; \
#    nvm use --delete-prefix $NODE_VERSION;

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
