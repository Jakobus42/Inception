DOCKER_COMPOSE_FILE := ./srcs/docker-compose.yml

.PHONY: all
all: 
	docker compose -f ${DOCKER_COMPOSE_FILE} up --build

.PHONY: dev
dev:
	docker compose -f ${DOCKER_COMPOSE_FILE} up --watch --build

.PHONY: clean
clean:
	docker compose -f ${DOCKER_COMPOSE_FILE} down

.PHONY: fclean
fclean:
	docker compose -f ${DOCKER_COMPOSE_FILE} down -v

