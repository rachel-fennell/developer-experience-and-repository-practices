# Ownership and sharing recs

## Goal
Add .github/CODEOWNERS with a default owner and specific owners for apps/, packages/, compose.yaml and .github/, using your username (or a team if you have an organisation). With another collaborator or a visible team that has write access, open a pull request changing packages/booking-rules and capture the automatic review request. GitHub excludes the PR author; if studying alone, inspect CODEOWNERS for syntax errors on GitHub and document why no automatic request is expected. Then write docs/decisions/sharing-booking-rules.md recommending how a separate donations repository should consume booking-rules (published package, subtree or copy), with trade-offs. 

## Steps taken
1. Added .github/CODEOWNERS with @rachel-fennell as the default owner and specific rules for apps, packages, compose.yaml and github
2. Used the solo-study option. Viewed the file on GitHub and showed: “This CODEOWNERS file is valid.”
3. Wrote the sharing recommendation in docs/decisions/sharing-booking-rules.md

## Commands


## Results
Github displayed: This CODEOWNERS file is valid

## Observations
Next time I would do it with a partner to see the second route in work