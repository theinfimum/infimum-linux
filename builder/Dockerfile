FROM fedora
MAINTAINER Justin Towson <justin@theinfimum.org>

RUN dnf -y install bc cvs gcc gcc-c++ git make patch subversion wget

WORKDIR /usr/src

ADD http://buildroot.uclibc.org/downloads/buildroot-2015.05.tar.bz2 buildroot-2015.05/

WORKDIR buildroot-2015.05


