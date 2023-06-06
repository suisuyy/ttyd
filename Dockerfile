FROM ubuntu:20.04

ARG TARGETARCH
RUN apt-get -y update && apt-get install -y  tini ttyd 

EXPOSE 7681
WORKDIR /root

ENTRYPOINT ["/usr/bin/bash", " "]
CMD ["bash", "-c","/bin/ttyd -p 8000"]
