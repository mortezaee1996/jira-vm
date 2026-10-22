# Docker Health Check

## Purpose

Validate the Docker daemon and Docker Compose configuration
for the jira-vm project.

## Script

scripts/healthcheck/check-docker.sh

## Execution

Run from the project directory:

    sudo ./scripts/healthcheck/check-docker.sh

## Checks Performed

- Docker daemon is active.
- Docker Compose file exists.
- Local environment file exists.
- Compose configuration is valid.
- Running containers are listed.

## Current Test Result

Executed successfully on 2026-10-22.

No project containers were running at the time of testing.
This is expected because Jira deployment has not started.
