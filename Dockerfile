FROM nginx:mainline-alpine3.18
WORKDIR /app
RUN apk add --update --no-cache php php-fpm
COPY nginx-default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/
EXPOSE 80
CMD ["./exec.sh"]