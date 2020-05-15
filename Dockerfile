FROM node:6.9
MAINTAINER jkd

RUN mkdir /workspace/ -p
COPY . /workspace/
WORKDIR /workspace/

RUN npm install

RUN npm run build

RUN npm run serve
