FROM alpine:latest

RUN apk add --no-cache geoip tor \
    && apk add --no-cache lyrebird --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing

EXPOSE 9050 9051 5353

CMD tor -f /etc/tor/torrc
