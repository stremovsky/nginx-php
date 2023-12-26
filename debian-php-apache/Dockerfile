FROM debian:bullseye-slim
RUN apt update && apt -y upgrade && apt install -y php7.4 libapache2-mod-rpaf apache2 nginx \
    ca-certificates apt-transport-https lsb-release ; mkdir -p /run/php
COPY debian-php-apache/nginx-default.conf /etc/nginx/sites-available/default
ADD src /usr/share/nginx/html/
COPY debian-php-apache/apache-ports.conf /etc/apache2/ports.conf
COPY apache-default.conf /etc/apache2/sites-enabled/000-default.conf 
WORKDIR /app
COPY debian-php-apache/exec.sh .
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD wget -O /dev/null localhost/hello.php
CMD ["./exec.sh"]