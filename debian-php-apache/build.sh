#!/bin/bash

chmod 755 *.sh
docker build -f ../debian-php-apache/Dockerfile -t nginx-php ..