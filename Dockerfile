FROM node:20-alpine as build

USER node
WORKDIR /home/node/app

COPY --chown=node:node ./ ./

RUN rm -rf node_modules && \
    npm ci

FROM node:20-alpine

RUN apk --update --no-cache add bash python3 g++ make postgresql-dev git gcompat

USER node
COPY --chown=node:node ./ ./

CMD [ "npm", "start" ]
