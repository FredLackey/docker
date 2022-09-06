FROM fredlackey/apache:5.6
LABEL maintainer="Fred Lackey"

# RUN cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/wordpress.conf
COPY ./files/wordpress.conf /etc/apache2/sites-available/wordpress.conf
RUN a2ensite wordpress.conf
RUN a2dissite 000-default.conf
RUN /etc/init.d/apache2 stop
RUN /etc/init.d/apache2 start

RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
RUN tar -xzvf /tmp/wordpress.tar.gz -C /var/www
RUN chown -R www-data.www-data /var/www/wordpress

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]