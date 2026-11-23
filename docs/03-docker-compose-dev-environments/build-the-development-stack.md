# Development stack

## Goal
Create apps/api (server.js, package.json with start and dev scripts, Dockerfile based on node:26-alpine running npm run dev as the node user), packages/booking-rules (index.js exporting isFull; package manifests and workspace links come in module 05) and db/seed/001-warehouses.sql as shown in this module. Write compose.yaml with the database, health check, seed mount, API, depends_on with service_healthy and configurable ports. Add up, down, logs and reset-db targets to the Makefile. Run make up, call the health endpoint and query the seeded warehouses. 

## Steps taken
1. Added the API server, booking-rules package, seed SQL file and API Dockerfile
2. Added compose.yaml with the PostgreSQL service, health check, seed mount, API service, service-health dependency and configurable ports
3. Added the dev, up, down, logs and reset-db targets to the Makefile
4. Checked the API health endpoint and queried the seeded warehouses

## Commands
make up
curl localhost:3000/health
docker compose exec db psql -U scheduler -d scheduler -c "select * from warehouses"

## Results
rachel@BEL-MC-260924B developer-experience-and-repository-practices % make
  help       Show available targets
  setup      Install dependencies and create .env from the example
  test       Run the Node.js test suite
  dev        Start the stack and sync code changes into containers
  up         Start the stack in the background
  down       Stop the stack
  logs       Follow logs for SERVICE (default api)
  reset-db   Delete the database volume and reseed on next start

 ✔ Image developer-experience-and-repository-practices-api       Built                  0.8s
 ✔ Container developer-experience-and-repository-practices-db-1  Healthy                6.3s
 ✔ Container developer-experience-and-repository-practices-api-1 Healthy                0.6s

rachel@BEL-MC-260924B developer-experience-and-repository-practices % curl localhost:3000/health
{"status":"ok","fullAtCapacity":true}%

rachel@BEL-MC-260924B developer-experience-and-repository-practices % docker compose exec db psql -U scheduler -d scheduler -c "select * from warehouses"
 id |   name
----+-----------
  1 | North
  2 | Central
  3 | Riverside
(3 rows)


## Observations
The first make up attempt failed because host port 5432 was already in use. Changed DB_PORT in local .env to 5433 and reran make up. Task was easy to follow and complete otherwise.