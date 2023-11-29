FROM php:8.1-cli-bullseye

RUN apt update -y \
&& apt -y install tzdata \
libicu-dev \
libonig-dev \
libpq-dev \
git \
wget
 
RUN docker-php-ext-configure intl && docker-php-ext-install intl

RUN docker-php-ext-configure pcntl && docker-php-ext-install pcntl

RUN docker-php-ext-configure pdo_pgsql && docker-php-ext-install pdo_pgsql

RUN docker-php-ext-configure mbstring && docker-php-ext-install mbstring

RUN wget -O /usr/bin/phpunit https://phar.phpunit.de/phpunit-10.phar && chmod +x /usr/bin/phpunit

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer