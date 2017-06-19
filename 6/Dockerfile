FROM node:boron

LABEL maintainer "Gabriel Araujo <contact@gbiel.com>"

USER node

RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

# Install node dependencies
RUN npm install --quiet --no-progress -g @angular/cli@latest firebase-tools
RUN npm cache clean --force

