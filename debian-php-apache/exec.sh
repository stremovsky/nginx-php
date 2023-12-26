#!/bin/sh

/etc/init.d/apache2 start
nginx -g 'daemon off;'