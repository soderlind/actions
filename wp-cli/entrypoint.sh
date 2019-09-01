#!/bin/sh

set -e

# if ! $(sh -c "wp --allow-root core is-installed"); then
#     sh -c "wp --allow-root core install"
# fi
# sh -c "wp --allow-root --path=/usr/src/wordpress/ $*"

sh -c "find / -name mysql\*"
sh -c "find / -name wp\*"