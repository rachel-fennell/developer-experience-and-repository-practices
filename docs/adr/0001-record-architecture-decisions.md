# ADR 0001: Write down important decisions

Date: 2026-11-15
Status: Accepted

## Context
The scheduler has choices about how it is built and run. In future, someone may want to know why we made those choices.

We could leave the reasons unwritten, put them in the main README or give important decisions their own short files.

## Decision
We will write important decisions as numbered files in `docs/adr/`. We will list them in the ADR index

## Consequences
1. People can read why a choice was made
2. The notes stay in the same repository as the scheduler
3. Writing and updating the notes takes time
4. If a choice changes, we will write a new ADR and update the old one’s status