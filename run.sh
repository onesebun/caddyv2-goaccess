#!/bin/bash
docker rm -f caddy
docker run -d --name caddy \
  -p 80:80 \
  -p 443:443 \
  -v /etc/localtime:/etc/localtime:ro \
  -v $PWD/www:/usr/share/caddy \
  -v $PWD/Caddyfile:/etc/caddy/Caddyfile \
  -v $PWD/caddy_data:/data \
  -v $PWD/access.log:/var/log/access.log \
  caddy
