FROM alpine:edge
WORKDIR /front
# Hitch is in testing repository
RUN echo http://dl-4.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk update && apk add hitch
COPY theKey.pem /front/
COPY run-hitch.sh /front/
CMD /front/run-hitch.sh
