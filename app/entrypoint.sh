#!/bin/sh
echo "Loading..."
printenv
/app/oauth2-proxy --email-domain="$email_domain" --upstream="$upstream" --cookie-secret="$cookie_secret" --cookie-secure=true --provider=$provider --http-address=0.0.0.0:"$endpoint_port" --reverse-proxy=true --client-id="$client_id" --client-secret="$client_secret"