#!/bin/bash
docker compose down -v --remove-orphans
docker rm -f $(docker ps -a -q)
docker system prune -af --volumes
