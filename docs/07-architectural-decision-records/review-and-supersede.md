# Review and supersede ADR's

## Goal
Propose a new ADR in a pull request (for example adopting Turborepo after measuring test time). Get a review from a colleague if you have one, or, if you are studying alone, review it yourself the next day using the 'what deserves an ADR' test and the format checklist, recording at least two review comments and how you addressed them. Merge it, set its status to Accepted, mark the ADR it replaces as Superseded by the new one, and update the index. 

## Steps taken
1. Opened a pull request for ADR 0005 while its status was proposed
2. Reviewed it alone and left two comments:
        “were these times measured on your computer or through automated tests on github?”
        “turbo saved only a small amount of time. why use it now?”
3. Updated ADR 0005 to address the comments. Added a condition that it would be reviewed again in future if timings became longer
4. Changed ADR 0005’s status to Accepted. Changed ADR 0003’s status to Superseded by ADR 0005 and updated the index
5. Merged the pull request

## Commands


## Results
PR was merged with both review comments addressed:

Pull request successfully merged and closed
You're all set — the branch has been merged.

Branch was deleted after successful merge.

## Observations
