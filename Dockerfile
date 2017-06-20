FROM node:latest

LABEL maintainer "Gabriel Araujo <contact@gbiel.com>"

RUN mkdir /etc/.npm-global
ENV PATH=/etc/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/etc/.npm-global

# Install node dependencies
RUN npm install --quiet --no-progress -g @angular/cli@latest firebase-tools
RUN npm cache clean --force
