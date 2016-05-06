# This is a comment
FROM ubuntu:14.04
MAINTAINER Le Phuong <phuong17889@gmail.com>
RUN apt-get update
RUN add-apt-repository ppa:ondrej/php5-5.6
RUN apt-get update
RUN apt-get install git apache2 mysql-server php5-mysql php5 libapache2-mod-php5 php5-mcrypt php5-cli
RUN mysql_install_db
RUN mysql_secure_installation
RUN a2enmod rewrite