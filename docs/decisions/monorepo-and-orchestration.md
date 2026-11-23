# Monorepo and Orchestration Decision

## Decision
Keep the scheduler API and booking rules together in one repository. Keep Turbo set up but don’t add extra caching services yet

## Rationale
API uses the booking-rules package. Keeping them together makes it easier to change and test them in one place

Turbo saves the result of a test run so it can return that result faster next time. In my run, the first test took 297 ms. The second took 41 ms and Turbo reported a cache hit (saves 256 ms). There are only two packages and two tests so the time saved is small right now.

## Reviewing the decision
Review this decision if the scheduler’s automated tests and builds take more than 2 minutes in a row for three runs. At that point, check whether Turbo or another tool could save enough time to be worthwhile