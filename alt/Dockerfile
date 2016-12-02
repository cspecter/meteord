FROM ubuntu:16.04
MAINTAINER Chad Specter

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh

#ONBUILD ADD . /opt/meteor

#ONBUILD RUN cd /bundle/bundle/programs/server \
#  && ([ -f package.json ] || npm init -f) \
#  && npm i --loglevel=silent --unsafe-perm \
#  && npm rebuild --update-binary

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
