FROM php:7.1-cli
LABEL version "1.0"
LABEL description "PHP Copy/Paste Detector."

WORKDIR /opt

RUN useradd --system php && \
    curl -OL https://phar.phpunit.de/phpcpd.phar 2>/dev/null

USER php

WORKDIR /tmp

ENTRYPOINT [ "php", "/opt/phpcpd.phar" ]
