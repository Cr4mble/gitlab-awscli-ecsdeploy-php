FROM alpine:3.15.7

LABEL maintainer="Clemens Christen <clemens.christen@cheveo.de>"

RUN apk add --no-cache \
    python3\>=3.9.16-r0 \
    py3-pip\>=20.3.4-r1 \
    docker\>=20.10.16-r0 \
    curl\>=7.80.0-r6 \
    bash\>=5.1.16-r0 \
    jq\>=1.6-r1 \
    php7\>=7.4.33-r0 \
    php7-ctype\>=7.4.33-r0 \
    php7-curl\>=7.4.33-r0 \
    php7-dom\>=7.4.33-r0 \
    php7-fpm\>=7.4.33-r0 \
    php7-gd\>=7.4.33-r0 \
    php7-intl\>=7.4.33-r0 \
    php7-mbstring\>=7.4.33-r0 \
    php7-mysqli\>=7.4.33-r0 \
    php7-opcache\>=7.4.33-r0 \
    php7-openssl\>=7.4.33-r0 \
    php7-session\>=7.4.33-r0 \
    php7-xmlreader\>=7.4.33-r0 \
    php7-json\>=7.4.33-r0 \
    php7-pdo\>=7.4.33-r0 \
    php7-pdo_mysql\>=7.4.33-r0 \
    php7-phar\>=7.4.33-r0 \
    php7-simplexml\>=7.4.33-r0 \
    php7-soap\>=7.4.33-r0 \
    php7-sodium\>=7.4.33-r0 \
    php7-sqlite3\>=7.4.33-r0 \
    php7-tokenizer\>=7.4.33-r0 \
    php7-xmlwriter\>=7.4.33-r0 \
    php7-zip\>=7.4.33-r0 \
    php7-xml\>=7.4.33-r0 \
    php7-pdo_sqlite\>=7.4.33-r0 \
    php7-iconv\>=7.4.33-r0 \
    php7-fileinfo\>=7.4.33-r0 \
    php7-ftp\>=7.4.33-r0 \
    php7-calendar\>=7.4.33-r0 \
    nodejs=14.20.1-r0 --repository=https://dl-cdn.alpinelinux.org/alpine/v3.13/main \
    && pip install --upgrade pip \
    && pip install awscli==1.27.74

RUN curl https://raw.githubusercontent.com/silinternational/ecs-deploy/3.10.7/ecs-deploy | tee /usr/bin/ecs-deploy
RUN chmod +x /usr/bin/ecs-deploy
