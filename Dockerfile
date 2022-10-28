FROM arm64v8/alpine

WORKDIR /app

ADD app/ /app/

RUN apk update

RUN apk add curl

RUN apk add wget

RUN apk add nano

RUN ["sh", "/app/install.sh"]

RUN ["chmod", "+x", "/app/entrypoint.sh"]

ENTRYPOINT ["sh", "/app/entrypoint.sh"]
