# Self documenting makefile

## Goal
In your course repository, create a root package.json with "private": true, a .env.example with DB_PASSWORD=scheduler-local-only, DB_PORT=5432 and API_PORT=3000, and a Makefile with help, setup and test targets, each with a ## description, help as the default goal, and a .PHONY line. setup should copy .env.example to .env only if .env is missing, then run npm install. Add .env to .gitignore. Run make, make setup and make test and paste the output into your evidence file.

## Steps taken
1. Added package.json, .env.example, the .env in .gitignore and a Makefile
2. Ran make to display the targets
3. Ran make setup, changed DB_PASSWORD in .env to the temporary value keep-this-value then ran make setup again
4. Checked that DB_PASSWORD remained keep-this-value after the second setup. Ran make test


## Commands
make
make setup
make test

## Results
rachel@BEL-MC-260924B developer-experience-and-repository-practices % make
  help       Show available targets
  setup      Install dependencies and create .env from the example
  test       Run the Node.js test suite

rachel@BEL-MC-260924B developer-experience-and-repository-practices % make setup
npm install

up to date, audited 1 package in 3s

found 0 vulnerabilities

rachel@BEL-MC-260924B developer-experience-and-repository-practices % make test
npm test

> test
> node --test

ℹ tests 0
ℹ suites 0
ℹ pass 0
ℹ fail 0
ℹ cancelled 0
ℹ skipped 0
ℹ todo 0
ℹ duration_ms 6.8635

## Observations
Easy to complete and instructions were clear to follow.