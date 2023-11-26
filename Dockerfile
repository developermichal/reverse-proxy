FROM bitnami/nginx:latest
USER root
# Copy build files to app volume

COPY proxy.conf /opt/bitnami/nginx/conf/server_blocks

RUN mkdir -p /opt/bitnami/nginx/conf/app/certs/
COPY drumandbasspolska_com.crt /opt/bitnami/nginx/conf/app/certs/
COPY server.key /opt/bitnami/nginx/conf/app/certs/
