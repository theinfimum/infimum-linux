BOARD=x86_64
BUILDROOT_VERSION=2015.05
LIBC=glibc
CWD=`pwd`

all: docker-build

docker-build:
	docker build -t infimum-linux:builder-$(LIBC) .

docker-build-no-cache:
	docker build --no-cache -t infimum-linux:builder-$(LIBC) .

aleph: $(LIBC)

glibc:
	docker cp infimum-linux-builder-glibc:/usr/src/buildroot-2015.05/output/images/rootfs.tar.xz - | docker import - infimum-linux:aleph-glibc

uclibc:
	docker cp infimum-linux-builder-uclibc:/usr/src/buildroot-2015.05/output/images/rootfs.tar.xz - | docker import - infimum-linux:aleph-uclibc

run:
	docker run --name=infimum-linux-builder-$(LIBC) -v /home/grfpopl/.buildroot-ccache:/root/.buildroot-ccache -it infimum-linux:builder-$(LIBC) /bin/sh

run-rm:
	docker run --rm --name=infimum-linux-builder-$(LIBC) -v /home/grfpopl/.buildroot-ccache:/root/.buildroot-ccache -it infimum-builder:builder-$(LIBC) /bin/sh

#export-glibc:
	

clean:
	docker rm infimum-linux-builder-$(LIBC)
