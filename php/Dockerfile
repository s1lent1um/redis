FROM ubuntu:trusty

RUN apt-get update && apt-get upgrade -q -y && apt-get install -q -y --force-yes \
    ca-certificates \
    software-properties-common \
    libpcre3-dev \
    libcurl3-openssl-dev

RUN add-apt-repository -y ppa:ondrej/php5 && apt-get update && apt-get install -q -y --force-yes \
    php5-cli \
    php5-redis

COPY docker-entrypoint.php /entrypoint.php
COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

#EXPOSE 6379
CMD [ "/entrypoint.php" ]
