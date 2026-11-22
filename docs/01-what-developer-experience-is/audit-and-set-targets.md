# Setting targets

## Goal
Score the repository from the first exercise against every row of the audit checklist in this module, and name the three improvements that would save the next joiner the most time, with an estimate of the time saved. Then write docs/dx-baseline.md for your scheduler repository with targets for time to first successful run, manual setup steps, inner-loop time and test feedback time. 

## Steps taken
1. Reviewed the README, contributing guide, project structure guide and CODEOWNERS
2. Scored all eight checklist areas and estimated the time savings for three improvements
3. Set four measurable targets for the scheduler and recorded these in docs/dx-basleine.md

## Commands


## Results

1. README - warning score	
Neither the README or contributing guide explains how to install nvm
2. Tool versions- good	
nvm install selected the correct version
3. Configuration- good	
site ran without an .env file, secrets, or manual config. No runtime config is needed for the documented local start
4. Local services - good	
the site starts as a local Astro server. no database or other local service is needed for the first run
5. Tasks - good	
package.json lists scripts for development, build, lint, checks and tests. The contributing guide describes test commands
6. Data - Good	
local setup uses tracked documentation content and does not require seed data or production data
7. Decisions - good	
the project structure guide explains the architecture policy and why the site avoids additional frontend frameworks
8. Ownership - good	
CODEOWNERS routes website and blog reviews to named teams. The contributing guide also points to captain and committer info


## Observations
Three time saving improvements:

1. Add an nvm installation link besides nvm install: Could save around 1-2 minutes for someone without nvm installed (avoid having to find a fix and install time)
2. Have one complete run sequence in the README:
Could save around a minute to avoid going back and forth between the README and contributing guide to find the complete setup sequences
3. Add in information on how to stop the server after it starts:
Could save around a minute to avoid someone who does not know how to terminate it find the information.