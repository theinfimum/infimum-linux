export LIBC=glibc
export BUILDER=infimum-linux-builder-$(LIBC)

all: aleph

aleph:
	docker run --name=$(BUILDER) -v /home/grfpopl/.buildroot-ccache:/root/.buildroot-ccache -it infimum-linux:builder-$(LIBC)

aleph-build:
	docker build -t infimum-linux:builder-$(LIBC) aleph

vagrant:
	make -C vagrant builder

vagrant-up:
	vagrant up --provider=docker


