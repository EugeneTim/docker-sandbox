#!/bin/bash
docker run -d --name http-server-two eugene/nginx-web2
docker run -d --name http-server-one eugene/nginx-web1
docker run -d -P --name http-proxy --link http-server-two:http-server-two  --link http-server-one:http-server-one eugene/nginx-proxy
