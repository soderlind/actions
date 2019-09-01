FROM wordpress:php7.3-fpm-alpine

LABEL repository="http://github.com/soderlind/actions/wp-cli"
LABEL homepage="http://github.com/soderlind/actions/wp-cli"
LABEL maintainer="Per Soderlind <per@soderlind.no>"

LABEL com.github.actions.name="GitHub Action for WP-CLI"
LABEL com.github.actions.description="Wraps the WP-CLI to enable common wp commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"

# COPY LICENSE README.md THIRD_PARTY_NOTICE.md /


RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

RUN wp core --allow-root --path=/usr/src/wordpress --url=wpcli.local --title=Example --admin_user=supervisor --admin_password=strongpassword --admin_email=info@wpcli.local

# USER root
COPY "wp-cli.yml" "/wp-cli.yml"
COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod 777 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
# CMD ["wp"]