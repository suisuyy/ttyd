FROM ubuntu:20.04

ARG TARGETARCH
COPY ./dist/initvv /usr/bin/initvv
RUN apt-get update && apt-get install -y --no-install-recommends tini ttyd && rm -rf /var/lib/apt/lists/*

EXPOSE 7681
WORKDIR /root

ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["bash", "/usr/bin/initvv"]
