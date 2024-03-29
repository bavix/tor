FROM alpine:latest

EXPOSE 9050 9051 5353
RUN apk add --no-cache tor geoip
CMD tor -f /etc/tor/torrc
