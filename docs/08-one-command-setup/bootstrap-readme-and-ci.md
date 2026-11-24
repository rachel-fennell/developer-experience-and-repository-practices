# Bootstrap setup and CI

## Goal
Add doctor and bootstrap targets as shown in this module, adapting messages to your repository, and run make bootstrap twice to show it is idempotent. Rewrite the README's top section as a quick start with prerequisites, the clone and bootstrap commands, the main tasks and a link to the ADR index. Add .devcontainer/devcontainer.json and .github/workflows/bootstrap.yml running mise, make bootstrap, a health check and make test, and get it passing on a pull request. 

## Steps taken
1. Added doctor and bootstrap targets to the Makefile
2. Ran bootstrap twice then with parallel Make enabled
3. Updated the README quick start with prerequisites, clone and setup steps and a link to the ADR index
4. Added a development container configuration
5. Added a GitHub actions workflow that runs bootstrap, checks the health endpoint and runs the tests
6. Opened a pull request and checked the workflow result

## Commands
make bootstrap
make bootstrap
make -j4 bootstrap
make test

## Results
rachel@BEL-MC-260924B developer-experience-and-repository-practices % make -j4 bootstrap

/Library/Developer/CommandLineTools/usr/bin/make doctor
doctor: all prerequisites found

/Library/Developer/CommandLineTools/usr/bin/make setup
npm install
up to date, audited 7 packages in 815ms
found 0 vulnerabilities

/Library/Developer/CommandLineTools/usr/bin/make up
docker compose  up --build -d --wait
[+] Building 0.7s (16/16) FINISHED


Github actions:

adding in bootstrap #1
Run details

Triggered via pull request 1 minute ago
opened#2

bootstrap
Status Success
Total duration 48s

## Observations
