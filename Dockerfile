FROM alpine:3.13
WORKDIR /app
RUN apk add --update --no-cache php7 php7-fpm nginx
COPY nginx-default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/
EXPOSE 80
CMD ["./exec.sh"]