build-groovy:
	docker build -t opstree/groovy:latest -f Dockerfile .

start-groovy:
	docker rm -f groovy || true
	docker run -itd --name groovy -v ${PWD}:/app opstree/groovy:latest

execute-container:
	docker exec -it groovy bash

run-all:
	make build-groovy
	make start-groovy
	make execute-container
