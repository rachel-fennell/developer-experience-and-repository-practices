# Orchestration and decisions

## Goal
Install turbo as a development dependency, add turbo.json with a test task depending on ^test, add .turbo to .gitignore, and run npx turbo run test twice, recording the cache hit. Run it with --filter=@scheduler/booking-rules. Then write docs/decisions/monorepo-and-orchestration.md: monorepo or polyrepo for the scheduler, whether Turborepo (or Nx) is justified now, and the measurable signal that would change your mind. 

## Steps taken
1. Installed Turbo as a development dependency
2. Added a Turbo test task that depends on tests in any package it uses and added .turbo to .gitignore
3. Ran the test task twice and then ran it for the booking-rules package only
4. Wrote the decision in docs/decisions/monorepo-and-orchestration.md

## Commands
npm install --save-dev turbo
npx turbo run test
npx turbo run test
npx turbo run test --filter=@scheduler/booking-rules

## Results
rachel@BEL-MC-260924B developer-experience-and-repository-practices % npx turbo run test

   • turbo 2.11.13
   • Packages in scope: @scheduler/api, @scheduler/booking-rules
   • Running test in 2 packages
   • Remote caching disabled
   @scheduler/booking-rules:test: cache miss, executing f7530539eeaee464

    Tasks:    1 successful, 1 total
Cached:    0 cached, 1 total
  Time:    297ms


rachel@BEL-MC-260924B developer-experience-and-repository-practices % npx turbo run test

   • turbo 2.11.13
   • Packages in scope: @scheduler/api, @scheduler/booking-rules
   • Running test in 2 packages
   • Remote caching disabled
   @scheduler/booking-rules:test: cache hit, replaying logs f7530539eeaee464

    Tasks:    1 successful, 1 total
Cached:    1 cached, 1 total
  Time:    41ms >>> FULL TURBO


rachel@BEL-MC-260924B developer-experience-and-repository-practices % npx turbo run test --filter=@scheduler/booking-rules

   • turbo 2.11.13
   • Packages in scope: @scheduler/booking-rules
   • Running test in 1 package
   • Remote caching disabled
   @scheduler/booking-rules:test: cache hit, replaying logs f7530539eeaee464

 Tasks:    1 successful, 1 total
Cached:    1 cached, 1 total
  Time:    35ms >>> FULL TURBO


## Observations
Able to follow through task and notes easily. No difficulty completing this task