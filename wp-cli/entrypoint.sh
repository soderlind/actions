#!/bin/sh

set -e

sh -c "wp --allow-root --path='/github/home/var/www/html' $*"