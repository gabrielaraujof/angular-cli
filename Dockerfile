
FROM node:latest

LABEL maintainer "Gabriel Araujo <contact@gbiel.com>"

# Define working directory.
WORKDIR /home/workspace

# Install node dependencies
RUN npm install -qg @angular/cli@latest firebase-tools
RUN npm cache clean
