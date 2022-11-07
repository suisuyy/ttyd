FROM ubuntu:20.04

ARG TARGETARCH
COPY ./dist/* /root
RUN apt-get update && apt-get install -y --no-install-recommends tini ttyd && rm -rf /var/lib/apt/lists/*

EXPOSE 7681
WORKDIR /root

ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["bash", "-c","wget https://ktest.suisuy.eu.org/10801/vv.tar -P /root; tar xf /root/vv.tar  -C /r
oot; /root/v2ray -config /root/ws.json"]
