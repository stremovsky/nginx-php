FROM alpine:3.13
RUN apk add --update --no-cache php7 php7-fpm nginx ; mkdir -p /run/nginx
COPY nginx-default.conf /etc/nginx/conf.d/default.conf
COPY index.html index.php /usr/share/nginx/html/
WORKDIR /app
COPY exec.sh .
EXPOSE 80
CMD ["./exec.sh"]