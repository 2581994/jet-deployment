.DEFAULT_GOAL := help

names := docker-compose postgresql minio
files := $(foreach name,$(names), -f $(name).yaml )

.PHONY: help up down ps

help: ## List commands
	@awk 'BEGIN {FS = ":.*##"; printf ""} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

up: ## Start services
	# Start services...
	@docker-compose $(files) up -d


down: ## Stop services
	# Stop services...
	@docker-compose $(files) down

ps: ## List services
	# List services...
	@docker-compose $(files) ps

postgresql: ## Enter Postgres
	# Entering Postgres...
	@docker-compose $(files) exec postgresql sh

dev_up: ## Start dev deps
	@docker-compose -f docker-compose.dev.yaml up -d

dev_down: ## Stop dev deps
	@docker-compose -f docker-compose.dev.yaml down
