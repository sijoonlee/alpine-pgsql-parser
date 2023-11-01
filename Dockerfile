FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

COPY ./ ./

RUN apk --update --no-cache add bash gcompat python3 g++ make postgresql-dev git

RUN rm -rf node_modules && \
    npm cache clean --force && \
    npm install

COPY . .

CMD [ "npm", "start" ]
