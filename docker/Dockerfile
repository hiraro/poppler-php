FROM php:latest

VOLUME /app
WORKDIR /app

RUN set -x \
    && apt update \
    && apt install -y poppler-utils wget\
    && rm -rf /var/cache/apk/*

ENV DOCKERIZE_VERSION v0.6.1
RUN set -x \
    && wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/bash"]
CMD ["/entrypoint.sh"]
