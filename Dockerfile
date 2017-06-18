FROM node:latest

LABEL maintainer "Gabriel Araujo <contact@gbiel.com>"

USER root

# Install node dependencies
RUN npm install --quiet --no-progress -g @angular/cli@latest firebase-tools
RUN npm cache clean --force
