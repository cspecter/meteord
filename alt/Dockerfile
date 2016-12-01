FROM ubuntu:16.04
MAINTAINER Chad Specter

ENV METEORD_DIR /opt/meteor
COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh

ONBUILD ADD . /opt/app

ONBUILD RUN cd /opt/meteor/programs/server \
  && ([ -f package.json ] || npm init -f) \
  && npm i --loglevel=silent --unsafe-perm

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
