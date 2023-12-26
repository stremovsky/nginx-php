#!/bin/bash

docker kill nginx-php
docker run -p 8080:80 --rm --name nginx-php -d nginx-php