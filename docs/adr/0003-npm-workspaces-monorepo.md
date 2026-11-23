# ADR 0003: Keep the scheduler in one repository

Date: 2026-11-17
Status: Accepted

## Context
API uses the booking-rules package. We could keep them in separate repos or keep them together in one. We could use npm on its own to run tasks or add a tool such as Turbo or Nx to reuse test results

## Decision
We will keep the API and booking-rules in one repo using npm workspaces. We will keep Turbo set up but won’t add extra caching services or make Turbo required in CI

## Consequences
1. API and booking-rules are easier to change and test together
2. One install at the root sets up both
3. Turbo can reuse test results
4. Turbo adds some setup to maintain and the time saved is small for this project
5. We can review this choice if the repo or its tests grow

Earlier note: Monorepo and orchestration (../decisions/monorepo-and-orchestration.md)