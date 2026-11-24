.DEFAULT_GOAL := help
.PHONY: help setup dev up down test logs reset-db bootstrap doctor

COMPOSE ?= docker compose 
SERVICE ?= api

help: ## Show available targets
	@grep -E '^[a-zA-Z_-]+:.*## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*## "}; {printf "  %-10s %s\n", $$1, $$2}'

setup: ## Install dependencies and create .env from the example
	@test -f .env || cp .env.example .env
	npm install

test: ## Run the Node.js test suite
	npm test

dev: ## Start the stack and sync code changes into containers
	$(COMPOSE) up --build --watch

up: ## Start the stack in the background
	$(COMPOSE) up --build -d --wait

down: ## Stop the stack
	$(COMPOSE) down

logs: ## Follow logs for SERVICE (default api)
	$(COMPOSE) logs -f $(SERVICE)

reset-db: ## Delete the database volume and reseed on next start
	$(COMPOSE) down -v

bootstrap: ## Check prerequisites, install dependencies and start the stack
	$(MAKE) doctor
	$(MAKE) setup
	$(MAKE) up
	@echo ""
	@echo "Scheduler is running:"
	@docker compose port api 3000
	@docker compose port db 5432
	@echo "Next: make test, make dev, or read docs/adr/README.md"

doctor: ## Check that required tools are installed
	@command -v docker >/dev/null || { echo "Docker is required: see README, Prerequisites"; exit 1; }
	@docker compose version >/dev/null 2>&1 || { echo "Docker Compose v5 is required"; exit 1; }
	@node --version | grep -q '^v26\.' || { echo "Node 26 is required: run 'mise install'"; exit 1; }
	@echo "doctor: all prerequisites found"