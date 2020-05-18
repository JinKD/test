#FROM node:latest as build
#
#RUN mkdir -p /app
#
#WORKDIR /app
#
#ADD package.json .
#ADD package-lock.json .
#RUN npm install
#
#COPY . .
#
#RUN npm run build
#
#FROM nginx:stable-alpine as prod
FROM nginx:stable-alpine

RUN rm -f /etc/nginx/conf.d/*

COPY default.conf /etc/nginx/conf.d/

RUN rm -rf /usr/share/nginx/html/*

#COPY --from=build /app/dist/  /usr/share/nginx/html/
COPY ./dist/  /usr/share/nginx/html/
