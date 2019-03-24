#!/bin/bash -ex

if [[ ! -f "/app/vendor/autoload.php" ]] || [[ ! -f "/app/vendor/bin/phpunit" ]]; then
    dockerize -timeout 300s \
        -wait file:///app/vendor/autoload.php \
        -wait file:///app/vendor/bin/phpunit
fi

/app/vendor/bin/phpunit -c /app/phpunit.xml
