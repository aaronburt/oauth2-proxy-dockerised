#! /bin/sh
VERSIONOFFILE=`curl -s https://api.github.com/repos/oauth2-proxy/oauth2-proxy/releases/latest | grep "browser_download_url" | grep "linux-arm64.tar.gz" | cut -d : -f 2,3 | tr -d '"'` 
wget $VERSIONOFFILE
tar -zxvf oauth2*.tar.gz
mv oauth2*/oauth* .
rm oauth2*.tar.gz && find . -type d -empty -delete
