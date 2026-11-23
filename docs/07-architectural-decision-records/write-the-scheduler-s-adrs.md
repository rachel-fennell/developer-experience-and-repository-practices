# Scheduler ADRs

## Goal
Create docs/adr/ with template.md and README.md (the index). Write ADR 0001 accepting the practice of recording decisions, then ADRs 0002 to 0004 for Compose Watch in development, the npm workspaces monorepo (with or without an orchestrator) and how booking rules are shared, each with Title, Date, Status, Context (including options considered), Decision and Consequences (including negatives). Move your earlier docs/decisions notes into these ADRs or link them. 

## Steps taken
1. Added an ADR template and index in docs/adr/
2. Wrote ADRs 0001–0004 for recording decisions, Compose Watch, the npm workspaces monorepo and sharing booking rules
3. Linked the ADR index from the root README.md.
4. Added a comment in apps/api/server.js pointing to ADR 0003
5. Linked the earlier decision notes from ADRs 0003 and 0004

## Commands


## Results
ADR index lists four accepted decisions. Each ADR has a title, date, status, context, decision and consequences

ADRs explain the reasons behind the scheduler’s current setup, including trade-offs. If a decision changes later, a new ADR can record the change while the earlier decision remains available

## Observations
