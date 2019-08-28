#!/bin/sh

set -e

sh -c "wp --allow-root --path=/var/www/html $*"