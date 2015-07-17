LIBC=uclibc

all: build


aleph: $(LIBC)

glibc:
	xzcat buildroot-2015.05/output/images/rootfs.tar.xz | docker import - infimum-glibc-aleph

uclibc:
	xzcat buildroot-2015.05/output/images/rootfs.tar.xz | docker import - infimum-uclibc-aleph


