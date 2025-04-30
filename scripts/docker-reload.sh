#!/bin/bash

./scripts/docker-down.sh
docker system --all -f
./scripts/docker-up.sh
