FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY server.conf /etc/nginx/templates/server.conf.template
