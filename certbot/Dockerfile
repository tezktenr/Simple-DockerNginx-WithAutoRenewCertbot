ARG DOMAIN_NAME=example.org

FROM certbot/certbot:v2.7.4
ARG DOMAIN_NAME
RUN mkdir -p /var/log/certbot/
COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
