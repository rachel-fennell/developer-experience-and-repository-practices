.DEFAULT_GOAL := help
.PHONY: help setup test

help: ## Show available targets
	@grep -E '^[a-zA-Z_-]+:.*## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*## "}; {printf "  %-10s %s\n", $$1, $$2}'

setup: ## Install dependencies and create .env from the example
	@test -f .env || cp .env.example .env
	npm install

test: ## Run the Node.js test suite
	npm test
	