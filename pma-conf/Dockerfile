FROM phpmyadmin/phpmyadmin

RUN a2enmod ssl

COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./config.user.inc.php /etc/phpmyadmin/config.user.inc.php

EXPOSE 443