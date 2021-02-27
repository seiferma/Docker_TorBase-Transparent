FROM alpine:latest

RUN apk add --no-cache tor nftables
COPY ./torrc /etc/tor/
COPY ./nftables.conf /etc/
COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/sh"]
