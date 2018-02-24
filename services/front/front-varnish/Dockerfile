FROM alpine:edge
WORKDIR /front
RUN apk update && apk add varnish
COPY config.vcl /front/
COPY up.sh /front/
# ENTRYPOINT varnishd -a 127.0.0.1:9999 -f /front/config.vcl
