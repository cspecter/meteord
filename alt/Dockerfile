FROM ubuntu:16.04
MAINTAINER Chad Specter

ENV METEORD_DIR /opt/meteor
COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
