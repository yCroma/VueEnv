FROM node:12.14.0-alpine

#WORKDIR /usr/src/app

RUN apk update &&\
	npm install -g \
	@vue/cli 
