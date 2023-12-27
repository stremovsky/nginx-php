#!/bin/bash

chmod 755 *.sh
#docker build . -t nginx-php
docker build -f ../alpine-php-fpm/Dockerfile -t nginx-php ..