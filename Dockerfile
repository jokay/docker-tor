FROM alpine:3.12.3

RUN apk add --no-cache tor && \
    sed "1s/^/SocksPort 0.0.0.0:9050\n/" /etc/tor/torrc.sample > /etc/tor/torrc

VOLUME ["/etc/tor", "/var/lib/tor"]

EXPOSE 9050

USER tor

CMD ["/usr/bin/tor", "-f", "/etc/tor/torrc"]

HEALTHCHECK --interval=1m --timeout=3s --retries=5 \
    CMD netstat -an | grep 9050 > /dev/null; if [ 0 != $? ]; then exit 1; fi;
