all: infimum-builder

infimum-builder:
	docker run --name "infimum-builder-run" --rm -it infimum:builder /bin/sh

infimum-builder-build:
	docker build -t infimum:builder .	

clean:
	docker rm infimum-builder-run
