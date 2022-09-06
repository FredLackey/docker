FROM fredlackey/ubuntu:20.04
LABEL maintainer="Fred Lackey"

RUN DEBIAN_FRONTEND=noninteractive TZ=America/New_York apt install apache2 -y
RUN /etc/init.d/apache2 stop
RUN /etc/init.d/apache2 start

RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php -y
RUN apt install php8.0 php8.0-common php8.0-mysql php8.0-gmp php8.0-curl php8.0-intl php8.0-mbstring php8.0-xmlrpc php8.0-gd php8.0-xml php8.0-cli php8.0-zip -y
COPY ./files/php.ini /etc/php/8.0/apache2/php.ini
COPY ./files/index.php /var/www/html/index.php
COPY ./files/phpinfo.php /var/www/html/phpinfo.php
RUN mv /var/www/html/index.html /var/www/html/index.old

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]