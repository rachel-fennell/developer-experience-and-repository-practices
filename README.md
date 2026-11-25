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

## Windows setup
Run this project in Ubuntu on WSL 2 because its Makefile uses Linux commands

1. Install WSL and Ubuntu
2. Install Docker Desktop and enable WSL integration for Ubuntu
3. In Ubuntu, make sure Git, GNU Make and mise are installed. The `mise install` step installs the project’s Node version
4. Open the repository in VS Code connected to Ubuntu, then follow Quick Start

## Decisions
See docs/adr/README.md for why the repository is structured this way.

## Evidence files
Module	                            Tag	        Evidence files in docs
01-what-developer-experience-is	    module-01	time-an-onboarding.md, audit-and-set-targets.md
02-makefiles-as-the-task-runner	    module-02	self-documenting-makefile.md, make-pitfalls-on-purpose.md
03-docker-compose-dev-environments	module-03	build-the-development-stack.md, measure-the-inner-loop.md
04-version-managers	                module-04	pin-and-enforce-node.md, a-doctor-target-and-a-fresh-clone.md
05-monorepos-and-workspaces	        module-05	workspaces-for-the-scheduler.md, orchestration-and-the-decision.md
06-sharing-code-and-ownership	    module-06	version-and-publish-safely.md, ownership-and-a-sharing-recommendation.md
07-architectural-decision-records	module-07	write-the-scheduler-s-adrs.md, review-and-supersede.md
08-one-command-setup	            module-08	bootstrap-readme-and-ci.md, measure-the-new-onboarding.md, prepare-and-submit-your-course-repository.md


