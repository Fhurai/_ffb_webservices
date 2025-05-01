#!/bin/bash

./scripts/docker-down.sh
docker system prune --all -f
./scripts/docker-up.sh
