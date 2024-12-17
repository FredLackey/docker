FROM fredlackey/ubuntu:24.04
LABEL maintainer="Fred Lackey"

RUN DEBIAN_FRONTEND=noninteractive TZ=America/New_York apt install apache2 -y
RUN /etc/init.d/apache2 stop
RUN /etc/init.d/apache2 start

RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php -y
RUN apt install php8.3 php8.3-common php8.3-mysql php8.3-gmp php8.3-curl php8.3-intl php8.3-mbstring php8.3-xmlrpc php8.3-gd php8.3-xml php8.3-cli php8.3-zip -y
RUN apt install php8.3-fpm -y
RUN a2enconf php8.3-fpm
COPY ./files/php.ini /etc/php/8.3/apache2/php.ini
COPY ./files/index.php /var/www/html/index.php
COPY ./files/phpinfo.php /var/www/html/phpinfo.php
RUN mv /var/www/html/index.html /var/www/html/index.old

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]