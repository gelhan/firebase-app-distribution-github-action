FROM node:alpine

WORKDIR /app
COPY . /app

RUN apk update && apk add git
RUN git config --global --add safe.directory /github/workspace
RUN npm install -g firebase-tools 

RUN chmod +x /app/distributeApp.sh
ENTRYPOINT [ "/app/distributeApp.sh" ]
