.PHONY: dev stop logs-service test build lint

dev:
	docker compose up -d

stop:
	docker compose down

logs-service:
	docker compose logs -f $(SERVICE)

test:
	npx nx run-many --target=test --all

build:
	npx nx run-many --target=build --all

lint:
	npx nx run-many --target=lint --all
