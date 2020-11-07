
DC = docker-compose
IMAGE = tomcat-corretto
CONTAINER = $(IMAGE)

all:
	@make build
	@make up
	@make open

up:
	$(DC) up -d

down:
	$(DC) down

build:
	$(DC) build

bash:
	docker exec -it $(CONTAINER) bash

clean:
	@make down
	docker rmi $(IMAGE)

open:
	open http://localhost:8080/


.PHONY: up down build bash open

