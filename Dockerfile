FROM alpine:3.13

RUN apk --no-cache add dnsmasq-dnssec

COPY dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k", "--log-facility=-"]
