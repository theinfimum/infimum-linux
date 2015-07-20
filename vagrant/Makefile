all: docker-build

docker-build:
	docker build -t infimum-linux:vagrant .
docker-run:
	docker run -it infimum-linux:vagrant /bin/sh

builder:
	#docker start $(BUILDER)
	#cd buildroot_overlay; tar -cv * | docker exec -i $(BUILDER) tar -xv
	#docker exec -i $(BUILDER) make
	docker exec $(BUILDER) cat output/images/rootfs.tar | docker import - infimum-linux:vagrant-pre
	docker build -t infimum-linux:vagrant-$(LIBC) .
	docker rmi infimum-linux:vagrant-pre

