LIBC=uclibc

all: build


aleph: $(LIBC)

glibc:
	xzcat infimum-glibc-rootfs.tar.xz | docker import - infimum-glibc-aleph

uclibc:
	xzcat infimum-uclibc-rootfs.tar.xz | docker import - infimum-uclibc-aleph
