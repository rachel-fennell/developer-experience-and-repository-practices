# ADR 0002: Use Compose Watch for development

Date: 2026-11-16
Status: Accepted

## Context
While changing the scheduler, we need to see code changes in the app. We could rebuild and restart the app by hand after each change or use Compose Watch to send changes to the running containers

## Decision
We will use Compose Watch during development. The `make dev` target starts the app with file watching enabled

## Consequences
1. We can see code changes without rebuilding the whole app each time
2. Developers need Docker Compose and the watch rules to be set up correctly
3. Some changes may still need a rebuild