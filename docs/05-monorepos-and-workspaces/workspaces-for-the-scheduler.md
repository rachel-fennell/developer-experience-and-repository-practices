# Workspaces

## Goal
Add "workspaces": ["apps/", "packages/"] and a root test script to package.json. Name the shared package @scheduler/booking-rules with an exports entry and node:test tests, and add it as a dependency of apps/api. Run npm install, npm ls --workspaces --depth=0 and npm test. Update the API Dockerfile to copy the root lockfile and package manifests before npm ci, keep the Compose Watch rule for packages/, and show make dev reloading after a change to booking-rules. 

## Steps taken
1. Added apps/* and packages/* as npm workspaces in the root package.json
2. Added the @scheduler/booking-rules package and linked it as a dependency of @scheduler/api
3. Updated the API to import isFull from @scheduler/booking-rules
4. Added tests for isFull and ran them
5. Updated the API dockerfile to copy the root before running npm ci
6. Started compose watch with make dev
7. Temporarily changed the shared function, checked the health response, restored the function and checked the response again

## Commands
npm install
npm ls --workspaces --depth=0
npm test
make dev
curl localhost:3000/health

## Results
rachel@BEL-MC-260924B developer-experience-and-repository-practices % npm install
added 2 packages, and audited 5 packages in 3s
found 0 vulnerabilities

rachel@BEL-MC-260924B developer-experience-and-repository-practices % npm ls --workspaces --depth=0
scheduler@ /Users/rachel/developer-experience-and-repository-practices
├─┬ @scheduler/api@ -> ./apps/api
│ └── @scheduler/booking-rules@1.0.0 deduped -> ./packages/booking-rules
└── @scheduler/booking-rules@1.0.0 -> ./packages/booking-rules

Shows two tests passing on rules tests:
rachel@BEL-MC-260924B developer-experience-and-repository-practices % npm test
✔ isFull returns true when bookings meet capacity (0.52525ms)
✔ isFull returns false when capacity remains (0.05975ms)
ℹ tests 2
ℹ suites 0
ℹ pass 2
ℹ fail 0
ℹ cancelled 0
ℹ skipped 0
ℹ todo 0

make dev built API image successfully:
developer-experience-and-repository-practices-db-1 Healthy
api-1   |
api-1   | > dev
api-1   | > node --watch server.js
api-1   |
api-1   | api listening on 3000

temp changed function and restored back to original:
rachel@BEL-MC-260924B developer-experience-and-repository-practices % curl localhost:3000/health
{"status":"ok","fullAtCapacity":true}%   

rachel@BEL-MC-260924B developer-experience-and-repository-practices % curl localhost:3000/health
{"status":"ok","fullAtCapacity":false}%     


## Observations
Instructions were easy to follow however found making the tests slightly difficult as hadn't done any in TS before. 