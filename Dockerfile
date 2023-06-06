FROM archlinux:latest

ARG TARGETARCH
RUN pacman -Sy 
RUN pacman -S --noconfirm ttyd 

EXPOSE 7681
WORKDIR /root

ENTRYPOINT ["/usr/bin/bash", " "]
CMD ["bash", "-c","/bin/ttyd -p 8000"]
