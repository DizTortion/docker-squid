FROM alpine

RUN apk add --no-cache acf-squid

EXPOSE 3128

VOLUME ["/etc/squid", "/var/cache/squid"]

CMD ["/usr/sbin/squid", "-NCd1", "-f", "/etc/squid/squid.conf"]
