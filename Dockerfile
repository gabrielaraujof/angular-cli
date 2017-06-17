
FROM node:latest

LABEL maintainer "Gabriel Araujo <contact@gbiel.com>"

# Define working directory.
WORKDIR /home/workspace

# Install image dependencies
RUN \
    apt-get -yqq update && \
    apt-get install -yqq --no-install-recommends xvfb libgconf-2-4 libexif12 chromium && \
    apt-get -yqq autoremove && \
    apt-get -yqq clean && \
    rm -rf /var/lib/apt/lists/* /var/cache/* /tmp/* /var/tmp/*

# Install node dependencies
RUN \
    npm i -g @angular/cli@latest firebase-tools && \
    npm cache clean

# For tests
ENV DISPLAY :99
ENV CHROME_BIN /usr/bin/chromium

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
