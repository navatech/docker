# This is a comment
FROM dockerfiles/centos-lamp
MAINTAINER Le Phuong <phuong17889@gmail.com>
RUN yum update -y
RUN yum install -y yum-utils git wget
RUN wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm && rpm -Uvh remi-release-6*.rpm
RUN yum --enablerepo=remi-php56 -y upgrade php*
RUN package-cleanup --quiet --leaves --exclude-bin
RUN cd /usr/bin/ && wget https://getcomposer.org/composer.phar -O composer && chmod +x /usr/bin/composer
RUN php -v
RUN composer --version
RUN cd /var/www/html && ls -la
RUN composer global require "fxp/composer-asset-plugin:~1.1.1"
