FROM alpine:latest

WORKDIR /app

ADD app app

RUN apk update

RUN apk add --no-cache wget

RUN apk --no-cache add curl

RUN /app/install.sh

ENTRYPOINT app/entrypoint.sh