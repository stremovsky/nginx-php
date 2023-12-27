#!/bin/bash

chmod 755 *.sh
docker build -f ../debian-php-fpm/Dockerfile -t nginx-php ..