# Build
FROM node:16.3.0-alpine

RUN mkdir /usr/src/app

COPY out.js /usr/src/app/
WORKDIR /usr/src/app

EXPOSE 8080

CMD ["out.js"]
