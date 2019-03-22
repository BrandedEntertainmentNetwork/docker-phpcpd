FROM php:7-cli
LABEL version "1.1"
LABEL description "PHP Copy/Paste Detector."

WORKDIR /opt

RUN useradd --system php && \
    curl -OL https://phar.phpunit.de/phpcpd.phar 2>/dev/null

USER php

WORKDIR /tmp

ENTRYPOINT [ "php", "/opt/phpcpd.phar" ]
