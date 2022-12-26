FROM nginx:mainline-alpine

RUN chmod -R a+w /var/cache/nginx/ \
        && touch /var/run/nginx.pid \
        && chmod a+w /var/run/nginx.pid \
        && rm /etc/nginx/conf.d/*

# copy file to nginx
COPY helloworld-nginx.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/

# expose port
EXPOSE 8080
USER nginx
