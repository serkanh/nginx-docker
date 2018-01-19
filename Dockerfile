FROM nginx:1.13-alpine
ADD default.conf.tmpl .
ENTRYPOINT ["/bin/sh", "-c", "envsubst '$SHA_FOLDER' < default.conf.tmpl > /etc/nginx/conf.d/default.conf; nginx -g 'daemon off;'"]

