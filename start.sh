#!/bin/bash

docker kill nginx-php
docker run -p 8080:80 -v src:/usr/share/nginx/html --rm --name nginx-php -d nginx-php