
COMPOSE=docker-compose -f docker-compose.yaml

.PHONY: ci logs
ci rt:
	$(COMPOSE) build $@
down ps restart create:
	$(COMPOSE) $@
push:
	$(COMPOSE) $@ --ignore-push-failures ci
pull:
	$(COMPOSE) $@ ci rt
logs:
	$(COMPOSE) logs -f --tail 100 ci

run:
	$(COMPOSE) run --rm ci
bash:
	$(COMPOSE) run --rm ci bash
up:
	$(COMPOSE) up -d --force-recreate ci

up-rt:
	$(COMPOSE) up -d --force-recreate rt
logs-rt:
	$(COMPOSE) logs -f rt
