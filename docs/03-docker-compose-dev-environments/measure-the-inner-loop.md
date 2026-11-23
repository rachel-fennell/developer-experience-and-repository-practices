# measuring inner loop

## Goal
Add the develop.watch rules from this module and a dev target running docker compose up --build --watch. Start it, change the health response in server.js and measure how many seconds pass before curl shows the change; then change the shared package and measure again. Compare with rebuilding the image manually (docker compose up --build -d) and record both times. Finally run make reset-db and make up and show that the seed ran again. 

## Steps taken
1. Started the dev stack with make dev
2. Changed the API health response from isFull(4, 4) to isFull(4, 3). Timed from saving the file until the health response changed
3. Changed the shared rule from booked >= capacity to booked >= capacity - 1. Timed until the health response changed
4. Restored the shared rule and measured a manual rebuild with docker compose up --build -d
5. Ran make reset-db, restarted with make up and queried the warehouse seed rows

## Commands
make dev
curl localhost:3000/health
curl localhost:3000/health
docker compose up --build -d
curl localhost:3000/health
make reset-db
make up
docker compose exec db psql -U scheduler -d scheduler -c "select * from warehouses"

## Results
Compose:
 ✔ Image developer-experience-and-repository-practices-api       Built                  1.2s
 ✔ Container developer-experience-and-repository-practices-db-1  Running                0.0s
 ✔ Container developer-experience-and-repository-practices-api-1 Running                0.0s
        ⦿ Watch enabled
Attaching to api-1, db-1
Container developer-experience-and-repository-practices-db-1 Waiting
Container developer-experience-and-repository-practices-db-1 Healthy

Checks
API source change: 23 seconds 
response changed to {"status":"ok","fullAtCapacity":false}

Shared-package change: 15 seconds
response changed to {"status":"ok","fullAtCapacity":true}

Manual image rebuild: 30 seconds
after restoring the shared rule response was {"status":"ok","fullAtCapacity":false}

Fresh-volume seed: Returned North, Central and Riverside (3 rows)
 id |   name
----+-----------
  1 | North
  2 | Central
  3 | Riverside
(3 rows)

rachel@BEL-MC-260924B developer-experience-and-repository-practices % make reset-db
docker compose  down -v
[+] down 4/4
 ✔ Container developer-experience-and-repository-practices-api-1 Removed                0.2s
 ✔ Container developer-experience-and-repository-practices-db-1  Removed                0.1s
 ✔ Network developer-experience-and-repository-practices_default Removed                0.1s
 ✔ Volume developer-experience-and-repository-practices_pgdata   Removed

## Observations
