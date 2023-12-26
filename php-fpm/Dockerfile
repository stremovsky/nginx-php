FROM alpine:3.13
RUN apk add --update --no-cache php7 php7-fpm nginx ; mkdir -p /run/nginx
COPY php-fpm/nginx-default.conf /etc/nginx/conf.d/default.conf
ADD src /usr/share/nginx/html/
WORKDIR /app
COPY php-fpm/exec.sh .
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 wget -O /dev/null localhost/hello.php
CMD ["./exec.sh"]