FROM php:7.2-apache
LABEL maintaner='y-yoshimoto'
## SSL通信用ライブラリ
RUN apt-get update && apt-get install -y libcurl4-openssl-dev pkg-config libssl-dev\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# HTTPプロキシサーバを経由する場合
# RUN pear config-set http_proxy http://proxy:3128

## ライブラリ追加
#RUN docker-php-ext-install pdo_mysql
RUN pecl install redis-5.0.2\
    && docker-php-ext-enable redis \
    #&& pecl install mongodb-1.6.0 \
    #&& docker-php-ext-enable redis mongodb \
    && pecl clear-cache

## 設定ファイル設置
COPY php.ini /usr/local/etc/php/

## コンテツファイルの設置
COPY contents/* /var/www/html/
