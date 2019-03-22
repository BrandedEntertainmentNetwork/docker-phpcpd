FROM php:7-cli
LABEL version "4.1.0"
LABEL description "PHP Copy/Paste Detector."

RUN useradd --system php && \
    curl -o /opt/phpcpd.phar -L https://phar.phpunit.de/phpcpd-4.1.0.phar 2>/dev/null

USER php

WORKDIR /tmp

ENTRYPOINT [ "php", "/opt/phpcpd.phar" ]
