FROM debian:stretch
RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install -y nasm
RUN apt-get install -y xorriso
RUN apt-get install -y grub-pc-bin
RUN apt-get install -y grub-common
RUN apt-get install -y vim
RUN apt-get install -y nano 
RUN apt-get install -y libgmp3-dev 
RUN apt-get install -y libmpfr-dev 
RUN apt-get install -y libisl-dev 
RUN apt-get install -y libcloog-isl-dev
RUN apt-get install -y libmpc-dev
RUN apt-get install -y texinfo
RUN apt-get install -y bison
RUN apt-get install -y flex
RUN apt-get install -y bzip2
RUN apt-get install -y patch
RUN apt-get install -y build-essential
VOLUME /root/env
WORKDIR /root/env
