.DEFAULT_GOAL := help
.PHONY: help setup dev up down test logs reset-db

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