FROM debian:bullseye-slim
RUN apt update && apt -y upgrade && apt install -y php7.4 php7.4-fpm nginx
COPY debian-php-fpm/nginx-default.conf /etc/nginx/sites-available/default
ADD src /usr/share/nginx/html/
WORKDIR /app
COPY debian-php-fpm/exec.sh .
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD wget -O /dev/null localhost/hello.php
CMD ["./exec.sh"]