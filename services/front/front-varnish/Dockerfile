FROM alpine:edge
WORKDIR /front
RUN apk update && apk add varnish
COPY config.vcl /front/
COPY up.sh /front/
CMD /front/up.sh
