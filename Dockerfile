FROM alpine

RUN apk add --no-cache acf-squid

EXPOSE 80 443 8080 8443 3128

VOLUME ["/etc/squid", "/var/cache/squid", "/var/log/squid"]

CMD ["/usr/sbin/squid", "-NCd1", "-f", "/etc/squid/squid.conf"]
