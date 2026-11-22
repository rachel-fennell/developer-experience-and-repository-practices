.DEFAULT_GOAL := help
.PHONY: help setup test up down

COMPOSE ?= docker compose

help: ## Show available targets
	@grep -E '^[a-zA-Z_-]+:.*## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*## "}; {printf "  %-10s %s\n", $$1, $$2}'

setup: ## Install dependencies and create .env from the example
	@test -f .env || cp .env.example .env
	npm install

test: ## Run the Node.js test suite
	npm test

up: ## Start the stack in the background
	$(COMPOSE) up --build -d --wait

down: ## Stop the stack
	$(COMPOSE) down