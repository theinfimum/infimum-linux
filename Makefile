LIBC=glibc

all: aleph

aleph:
	docker run --name=infimum-linux-builder-$(LIBC) -v /home/grfpopl/.buildroot-ccache:/root/.buildroot-ccache -it infimum-linux:builder-$(LIBC) /bin/sh

aleph-build:
	docker build -t infimum-linux:builder-$(LIBC) aleph

vagrant-up:
	vagrant up --provider=docker


