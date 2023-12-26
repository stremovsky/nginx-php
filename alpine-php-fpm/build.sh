#!/bin/bash

chmod 755 *.sh
#docker build . -t nginx-php
docker build -f ../aline-php-fpm/Dockerfile -t nginx-php ..