FROM php:7.1

RUN apt-get update
RUN apt-get install -y python-dev python-pip zip git curl unzip
RUN pip install awsebcli --upgrade --user
RUN php -r "copy('https://getcomposer.org/installer', '/tmp/composer-setup.php');"
RUN php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer