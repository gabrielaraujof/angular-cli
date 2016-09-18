FROM node:latest

MAINTAINER gabrielaraujof <contact@gbiel.com>

# Commands
RUN \
  npm i angular-cli -g

# For tests
ENV DISPLAY :99
ENV CHROME_BIN /usr/bin/chromium
