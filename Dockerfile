FROM archlinux:latest

ARG TARGETARCH
RUN pacman -Sy 
RUN pacman -S --noconfirm ttyd 

EXPOSE 7681
WORKDIR /root

ENTRYPOINT ["/bin/sh", " "]
CMD ["/bin/ttyd","-p" ,"80"]
