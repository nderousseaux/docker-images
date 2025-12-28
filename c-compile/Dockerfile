FROM ubuntu:25.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update 

RUN apt install -qy unminimize \
    && yes | unminimize

RUN apt install -qy make git gcc valgrind bc vim time \
    psmisc bsdextrautils locales wget \
    man manpages manpages-posix manpages-dev manpages-posix-dev \
    libpcap-dev

ENV LC_ALL C.utf8
CMD bash

