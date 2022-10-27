FROM alpine:latest

WORKDIR /app

ADD app/ /app/

RUN apk update

RUN apk add wget

RUN apk add nano

RUN apk add curl

RUN ["/bin/sh", "/app/install.sh"]

ENTRYPOINT ["sh", "/app/entrypoint.sh"]