FROM alpine:latest

RUN apk update && apk add dnsmasq

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
