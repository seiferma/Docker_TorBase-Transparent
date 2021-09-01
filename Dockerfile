FROM quay.io/seiferma/tor-base:latest

RUN apk add --no-cache curl
COPY ./torrc /etc/tor/
COPY ./nftables.conf /etc/
COPY ./entrypoint.sh /entrypoint2.sh

ENTRYPOINT ["/entrypoint2.sh"]
