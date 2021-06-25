#!/bin/sh

if [ -f .env ]; then
    export $(egrep -v '^#' .env | xargs)
else
    echo ".env do not exist, please cp .env.example .env first"
    exit 1
fi

docker compose -f $DOCKER_COMPOSE_FILENAME build
docker compose -f $DOCKER_COMPOSE_FILENAME up