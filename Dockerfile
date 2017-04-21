FROM ikeberlein/basedeb:wheezy

LABEL maintainer "ikeberlein@ya.ru"

RUN install_packages \
	php5-fpm \
	php5 \
	php5-common \
	php5-curl \
	php5-gd \
	php5-gmp \
	php5-imagick \
	php5-mcrypt \
	php5-mhash \
	php5-memcache \
	php5-memcached \
	php5-adodb \
	php5-pgsql \
	php5-mysql \
	php5-xcache \
	php5-xdebug \
	php5-tidy \
	php5-snmp \
	php5-imap \
	libphp-phpmailer \
	php-mail-mimedecode \
	smarty \
	php5-dev \
	make
RUN pecl install redis && apt-get -y purge php5-dev make && apt-get -y autoremove
