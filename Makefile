CMD=docker-compose -f docker-compose.yaml
include .env
-include .env.local

include ci/main.make
