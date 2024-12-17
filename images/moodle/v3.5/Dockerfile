FROM fredlackey/ubuntu:24.04

RUN apt install -y software-properties-common
RUN apt install -y git git-core git-doc

RUN add-apt-repository ppa:ondrej/php -y
RUN apt update
RUN apt install -y php7.0
RUN apt install -y php7.0-cli php7.0-json php7.0-common php7.0-mysql php7.0-zip php7.0-gd php7.0-mbstring php7.0-curl php7.0-xml php7.0-bcmath php7.0-intl php7.0-xmlrpc php7.0-soap

RUN apt install -y mysql-client

RUN DEBIAN_FRONTEND=noninteractive TZ=America/New_York apt install apache2 -y
RUN apt install -y apache2

WORKDIR /var/www/html
RUN git clone https://github.com/moodle/moodle.git

WORKDIR /var/www/html/moodle
RUN git checkout -t origin/MOODLE_35_STABLE
RUN chmod 0777 /var/www/html/moodle

WORKDIR /var/www
RUN mkdir /var/www/moodledata
RUN chmod 0777 /var/www/moodledata

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]

# WORKDIR /var/www
# RUN git clone https://github.com/moodle/moodle.git

# WORKDIR /var/www/moodle
# RUN git checkout -t origin/MOODLE_35_STABLE

# WORKDIR /var/www
# RUN chmod 0777 /var/www/moodle




# RUN apt install -y mysql-server mysql-client

# RUN add-apt-repository ppa:ondrej/php5-5.6
# RUN apt install -y php5.6-gd php5.6-curl php5.6-intl php5.6-xmlrpc
# RUN apt install -y php5.6 php5.6-mysql
# RUN apt install -y php5.6-json
# RUN apt install -y apache2



# RUN apt install -y php7.4-gd php7.4-curl php7.4-xmlrpc
# RUN apt install -y php7.4 mysql-server mysql-client apache2 php7.4-mysql
# RUN apt install -y php7.4-json


# RUN apt install php8.3 php8.3-common php8.3-mysql php8.3-gmp php8.3-curl php8.3-intl php8.3-mbstring php8.3-xmlrpc php8.3-gd php8.3-xml php8.3-cli php8.3-zip -y
# RUN apt install php8.3-fpm -y
# RUN a2enconf php8.3-fpm

# COPY ./files/php.ini /etc/php/8.3/apache2/php.ini
# COPY ./files/index.php /var/www/html/index.php
# COPY ./files/phpinfo.php /var/www/html/phpinfo.php
# RUN mv /var/www/html/index.html /var/www/html/index.old

# RUN /etc/init.d/apache2 stop
# RUN /etc/init.d/apache2 start





