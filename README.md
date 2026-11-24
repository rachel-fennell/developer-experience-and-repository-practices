# Developer-experience-and-repository-practices
# Food Bank Volunteer Scheduler

Booking API and shared booking rules for a food bank's volunteer shifts.

## Quick start

Prerequisites: Docker with Compose v5, GNU Make, and mise (https://mise.jdx.dev).

    git clone https://github.com/rachel-fennell/developer-experience-and-repository-practices.git
    cd developer-experience-and-repository-practices
    mise trust && mise install
    make bootstrap

Then open http://localhost:3000/health. Run `make` to see every task.

## Working on the code
- `make dev` syncs code changes into the running containers (Compose Watch)
- `make test` runs every workspace's tests
- `make reset-db` recreates the database from `db/seed/`

## Decisions
See docs/adr/README.md for why the repository is structured this way.
