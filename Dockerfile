FROM ubuntu:12.04

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y git curl apache2 php5 libapache2-mod-php5 php5-mcrypt php5-mysql

# Download and extract wordpress
RUN curl -o wordpress.tar.gz http://wordpress.org/latest.tar.gz
RUN tar -xzvf wordpress.tar.gz --strip-components=1 --directory /wordpress
RUN rm wordpress.tar.gz

# Install app
RUN rm -rf /var/www/*
ADD wordpress /var/www

# Configure apache
RUN a2enmod rewrite
RUN chown -R www-data:www-data /var/www
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
