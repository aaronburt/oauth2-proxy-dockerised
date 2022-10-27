#!/bin/sh
curl -s https://api.github.com/repos/oauth2-proxy/oauth2-proxy/releases/latest | grep "browser_download_url" | grep "linux-amd64.tar.gz" | cut -d : -f 2,3 | tr -d \" > version
wget -i version
tar -zxvf oauth2*.tar.gz -C .
rm oauth2*.tar.gz
mv oauth2*/oauth2-proxy . && find . -type d -empty -delete
