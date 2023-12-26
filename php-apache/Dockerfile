FROM alpine:3.13
RUN apk add --update --no-cache php7 php7-apache2 apache2 nginx ; mkdir -p /run/nginx
COPY php-fpm/nginx-default.conf /etc/nginx/conf.d/default.conf
ADD src /usr/share/nginx/html/
WORKDIR /app
COPY php-fpm/exec.sh .
EXPOSE 80
CMD ["./exec.sh"]