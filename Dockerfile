FROM node:latest

MAINTAINER gabrielaraujof <contact@gbiel.com>

# Commands
RUN \
  apt-get update && \
  apt-get install -y --force-yes \
  xvfb \
  chromium && \
  apt-get autoremove -y && \
  npm i angular-cli firebase-tools -g 

# For tests
ENV DISPLAY :99
ENV CHROME_BIN /usr/bin/chromium

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
