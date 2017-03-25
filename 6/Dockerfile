FROM node:boron

MAINTAINER gabrielaraujof <contact@gbiel.com>

# Commands
RUN \
  apt-get update --fix-missing && \
  apt-get install -y --force-yes \
  xvfb libgconf-2-4 libexif12 chromium && \
  apt-get autoremove -y && \
  npm i @angular/cli@latest firebase-tools -g

# For tests
ENV DISPLAY :99
ENV CHROME_BIN /usr/bin/chromium

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
