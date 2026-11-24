# ADR 0005: Use Turborepo for workspace tests

Date: 2026-11-19
Status: Acceptedß

## Context
The scheduler has two workspaces. We can run their tests with npm or use Turborepo. 
We tried Turborepo in the local runs with remote cashing disabled. In our test, the first run took 297 ms. The next run took 41 ms because Turborepo reused the result. 

Nx is another option but it would add a different tool. 
The time saved is small now however Turborepo is already installed and set up to run. This means it will save time having to install another system (such as Nx).

## Decision
We propose using Turborepo to run workspace tests. We will use its cache on our own computers and won’t set up an online cache service.

## Consequences
1. Reusing a test result saved 256 ms in our test
2. We need to keep the Turborepo settings up to date/maintained
3. Tests are quick now, so the time saved is small
4. After code changes, tests still need to run again
5. Will review this choice if the workspace tests in CI take mroe than 2 minutes for three main branches in a row

Earlier note: ADR-003 NPM workspaces monorepo