BOARD=x86_64
BUILDROOT_VERSION=2015.05
LIBC=uclibc
CWD=`pwd`

all: docker-build

docker-build:
	docker build -t infimum-builder:$(LIBC) .

docker-build-no-cache:
	docker build --no-cache -t infimum-builder:$(LIBC) .

aleph: $(LIBC)

glibc:
	xzcat buildroot-2015.05/output/images/rootfs.tar.xz | docker import - infimum-glibc-aleph

uclibc:
	xzcat buildroot-2015.05/output/images/rootfs.tar.xz | docker import - infimum-uclibc-aleph

run:
	docker run --name=infimum-builder-$(LIBC) -v /home/grfpopl/.buildroot-ccache:/root/.buildroot-ccache -it infimum-builder:$(LIBC) /bin/sh

run-rm:
	docker run --rm --name=infimum-builder-$(LIBC) -v /home/grfpopl/.buildroot-ccache:/root/.buildroot-ccache -it infimum-builder:$(LIBC) /bin/sh

#export-glibc:
	

clean:
	docker rm infimum-builder-$(LIBC)
