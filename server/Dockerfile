FROM php:7.4-fpm
RUN apt-get update -y && apt-get install -y openssl zip unzip git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /app
COPY . /app
RUN composer install

ARG JWT_SECRET
ARG MAIL_USERNAME
ARG MAIL_PASSWORD

ENV JWT_SECRET=$JWT_SECRET
ENV MAIL_USERNAME=$MAIL_USERNAME
ENV MAIL_USERNAME=$MAIL_USERNAME

RUN php artisan env:set JWT_SECRET=$JWT_SECRET
RUN php artisan env:set MAIL_USERNAME=$MAIL_USERNAME
RUN php artisan env:set MAIL_PASSWORD=$MAIL_PASSWORD

RUN ["chmod", "+x", "/app/run.sh"]

CMD php artisan serve --host=0.0.0.0 --port=8000
EXPOSE 8000