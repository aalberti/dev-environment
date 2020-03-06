#!/bin/bash
export PROXYAUTH=$MY_USER:`urlencode $MY_PASSWORD`
export PROXYADRESS=ncproxy:8080
export http_proxy=http://$PROXYAUTH@$PROXYADRESS
export https_proxy=http://$PROXYAUTH@$PROXYADRESS
export all_proxy=http://$PROXYAUTH@$PROXYADRESS
git config --global http.proxy $http_proxy
git config --global https.proxy $http_proxy
git config --global http.sslVerify false
git config --global https.sslVerify false
git config --global http.proxyAuthMethod 'basic'
