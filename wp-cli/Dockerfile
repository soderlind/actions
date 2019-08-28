FROM wordpress:cli

LABEL repository="http://github.com/soderlind/actions/wp-cli"
LABEL homepage="http://github.com/soderlind/actions/wp-cli"
LABEL maintainer="Per Soderlind <per@soderlind.no>"

LABEL com.github.actions.name="GitHub Action for WP-CLI"
LABEL com.github.actions.description="Wraps the WP-CLI to enable common wp commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"

# COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

# RUN

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod 777 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["wp"]