# Dockerised Oauth2-proxy

This project provides you with a dockerised zero trust oauth2 gateway that you can use the ensure that your self-hosted content is safeguarded from unexpected outsiders visiting without your desired credential provider being fulfilled. 

This project uses oauth2-proxy to supply the gateway solution, this project solely smashes it all in a convenient and simple docker container. 

I don't like relying on Cloudflare access to access my services and don't want it all hanging out on the internet without something shielding it. 

To setup, you need to place a ".env" file into the root directory (next to the Dockerfile). Then you will need to place the suitable credentials to connect to the oauth2 provider of your choosing.

Required contents of the ```.env``` file
```
email_domain=
cookie_secret=
client_id=
client_secret=
upstream=
endpoint_port=
provider
```

Example of mine (with redactions of the important bits)
```
email_domain="aaronburt.co.uk"
cookie_secret="thisisasecret"
client_id="somethingsomething.apps.googleusercontent.com"
client_secret="secretstring"
upstream="http://192.168.1.111:8080/"
endpoint_port=4180
provider="google"
```