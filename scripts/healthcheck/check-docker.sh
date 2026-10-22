#!/usr/bin/env bash
set -Eeuo pipefail

PROJECT_DIR="/opt/jira-vm"
COMPOSE_FILE="${PROJECT_DIR}/docker/docker-compose.yaml"
ENV_FILE="${PROJECT_DIR}/.env"

echo "== Docker daemon =="

if ! systemctl is-active --quiet docker; then
    echo "ERROR: Docker service is not active." >&2
    exit 1
fi

echo "OK: Docker service is active."

echo
echo "== Docker Compose configuration =="

if [[ ! -f "${COMPOSE_FILE}" ]]; then
    echo "ERROR: Compose file not found: ${COMPOSE_FILE}" >&2
    exit 1
fi

if [[ ! -f "${ENV_FILE}" ]]; then
    echo "ERROR: Environment file not found: ${ENV_FILE}" >&2
    exit 1
fi

docker compose \
    --env-file "${ENV_FILE}" \
    -f "${COMPOSE_FILE}" \
    config -q

echo "OK: Compose configuration is valid."

echo
echo "== Running project containers =="

docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Image}}'

echo
echo "Health check completed."
