FROM node:boron

LABEL maintainer "Gabriel Araujo <contact@gbiel.com>"

USER node

# Define working directory.
WORKDIR /home/workspace

# Install node dependencies
RUN sudo npm install --quiet --no-progress -g @angular/cli@latest firebase-tools
RUN sudo npm cache clean --force

