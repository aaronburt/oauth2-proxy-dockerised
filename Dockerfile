FROM alpine:latest

WORKDIR /app

ADD app/ /app/

RUN apk update

RUN apk add wget

RUN apk add nano

RUN ["sh", "/app/install.sh"]

ENTRYPOINT /app/entrypoint.sh
