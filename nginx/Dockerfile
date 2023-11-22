ARG DOMAIN_NAME=example.org

FROM nginx:1.25.3 as nginxserver
ARG DOMAIN_NAME
RUN mkdir -p /var/log/nginx/
COPY ./docker-entrypoint.d/nginx6hReloader.sh /docker-entrypoint.d/nginx6hReloader.sh
RUN chmod +x /docker-entrypoint.d/nginx6hReloader.sh
COPY ./conf/tezktenr-blog.conf /etc/nginx/conf.d/tezktenr-blog.conf
COPY ./webpage/index.html /tezktenrBlog/var/www/index.html
RUN sed -i "s/example.org/$DOMAIN_NAME/g" /etc/nginx/conf.d/tezktenr-blog.conf
