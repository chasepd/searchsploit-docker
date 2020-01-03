#debian container for general purpose and teaching students:
#build with docker build -f debian.docker -t fugitivus/debian:latest .

FROM kalilinux/kali-rolling
MAINTAINER chasepd <1214246+chasepd@users.noreply.github.com>

#environment-variables for non-interactive shell:
ENV DEBIAN_FRONTEND noninteractive

#install updates, some packages and do cleanup:
RUN apt-get update && apt-get upgrade -y\
 && apt-get -y install exploitdb 

ENTRYPOINT ["/usr/bin/searchsploit"]
