# PostgreSQL Deployment Notes

## Current Status

- Docker image: postgres:16
- Image download: successful
- Compose file: docker/docker-compose.yaml
- Environment template: .env.example
- Local environment file: .env
- Container deployment: not started

## Planned Configuration

- Database name: jira
- Database user: jira
- Persistent volume: postgres_data
- Container name: jira-postgres
- Network: jira-backend
- Health check: pg_isready

## Security

- Never commit .env.
- Use .env.example only as a configuration template.
- Do not publish database ports unless explicitly required.
- Keep database credentials out of logs and Git history.

## Pending Decisions

- Select the Jira version and an authorized installation method.
- Verify PostgreSQL compatibility with the selected Jira version.
- Confirm resource requirements before deployment.
- Test database initialization, health checks, persistence, and backup/restore.

## Deployment Policy

Do not start the PostgreSQL container until the database version and
configuration have been verified against the selected Jira release.
