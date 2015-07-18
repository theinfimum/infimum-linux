# TODO: From scratch

FROM fedora-updated
MAINTAINER Justin Towson <justin@theinfimum.org>

RUN dnf -y install bc bison bzip2 cpio cvs file findutils flex gcc gcc-c++ git kernel-devel make mercurial patch perl-ExtUtils-MakeMaker perl-Thread-Queue rsync subversion tar texinfo unzip wget which
RUN dnf -y install ncurses-devel
#RUN dnf -y install glibc-devel.i686 libstdc++-devel.i686

ENV BUILDROOT_VERSION=2015.05

WORKDIR /usr/src

RUN curl http://buildroot.uclibc.org/downloads/buildroot-2015.05.tar.bz2 | tar -xjv

WORKDIR buildroot-2015.05

ADD overlay/ .

VOLUME ["/root/.buildroot-ccache"]

RUN make infimum_uclibc_defconfig

#RUN make x86_64_glibc_defconfig
#RUN cp -v configs/x86_64_glibc_defconfig .config

#COPY kernel.config board/x86_64/kernel.config
#RUN make source

#RUN make


#COPY buildroot.config .config
#RUN make



#RUN mkdir board/x86_64
#COPY kernel.config board/x86_64/kernel.config

#VOLUME ["/mnt"]
