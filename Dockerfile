FROM node:16-alpine

RUN apk add --no-cache bash

RUN npm config set cache /home/node/app/.npm-cache --global

RUN npm i -g @loopback/cli@2.9.0 nodemon

RUN apk update
RUN apk add
RUN apk add ffmpeg

USER node

WORKDIR /home/node/app

CMD [ "tail", "-f", "/dev/null" ] 