# ADR 0004: Share booking rules as a package

Date: 2026-11-18
Status: Accepted

## Context
The scheduler API uses booking-rules. A separate donations app may need the same code. We could copy the code or publish it as a package.

## Decision
The scheduler will use booking-rules as an npm workspace package. A separate donations repo should use a published, versioned package

## Consequences
1. Both apps can use the same rules
2. Donations app can choose when to upgrade
3. Someone must publish new package versions and manage access to the package registry
4. Copying code or using a subtree avoids publishing but each update must be brought into the donations repo by hand

Earlier note: Sharing booking rules (../decisions/sharing-booking-rules.md)