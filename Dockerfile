FROM node:latest

MAINTAINER gabrielaraujof <contact@gbiel.com>

# Commands
RUN \
  npm i angular-cli -g && \
  # For tests
  export CHROME_BIN=chromium-browser
  export DISPLAY=:99.0
