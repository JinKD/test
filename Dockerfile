FROM node:latest
MAINTAINER jkd

RUN mkdir /workspace/ -p
COPY . /workspace/
WORKDIR /workspace/

RUN npm install

RUN npm run serve
