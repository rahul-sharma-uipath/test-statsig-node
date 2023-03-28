# Build
FROM node:16.13.0 as builder

RUN mkdir /usr/src/app

# Run
FROM node:16.3.0-alpine

COPY out.js /usr/src/app/
WORKDIR /usr/src/app

EXPOSE 8080

CMD ["out.js"]
