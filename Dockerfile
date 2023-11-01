FROM --platform=linux/amd64 node:20-alpine

# Create app directory
WORKDIR /usr/src/app

COPY ./ ./

RUN apk --update --no-cache add bash make gcompat python3 gcc postgresql-dev g++ git

RUN rm -rf node_modules && \
    npm cache clean --force && \
    npm install

COPY . .

CMD [ "npm", "start" ]
