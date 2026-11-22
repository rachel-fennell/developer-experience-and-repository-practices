# Pitfalls on purpoose

## Goal
Reproduce and fix each pitfall, recording the output before and after: replace a recipe tab with spaces and read the error; create a folder named test and run make test with and without test in .PHONY; write a recipe that runs cd on one line and a command on the next, then fix it with &&. Finally add COMPOSE ?= docker compose with up and down targets and run make up COMPOSE="echo docker compose" to show the override.

## Steps taken
1. Replaced the tab before a recipe with spaces and ran make test then restored the tab
2. Created a folder named test, removed test from .PHONY, and ran make test. Restored test in .PHONY and ran it again
3. Temporarily used separate recipe lines for cd apps/api and npm test, then combined them with &&
4. Added COMPOSE ?= docker compose and up and down targets. Ran the up target with an overridden COMPOSE value

## Commands
make test  # spaces before recipe
make test  # test folder exists; test omitted from .PHONY
make test  # test restored in .PHONY
make test  # cd and npm test on separate recipe lines
make test  # cd and npm test joined with &&
make up COMPOSE="echo docker compose"
make       # list all targets

## Results
Tab indents:
rachel@BEL-MC-260924B developer-experience-and-repository-practices % make test
Makefile:12: *** missing separator.  Stop.

phony:
rachel@BEL-MC-260924B developer-experience-and-repository-practices % make test
make: `test' is up to date.
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
ℹ duration_ms 9.109375

the .PHONY declaration prevents a folder named test from suppressing the test recipe

separating and &&:
rachel@BEL-MC-260924B developer-experience-and-repository-practices % make test
cd apps/api
npm test
rachel@BEL-MC-260924B developer-experience-and-repository-practices % make test
cd apps/api && npm test

var override:
rachel@BEL-MC-260924B developer-experience-and-repository-practices % make up COMPOSE="echo docker compose"
echo docker compose up --build -d --wait
docker compose up --build -d --wait
rachel@BEL-MC-260924B developer-experience-and-repository-practices % make
  help       Show available targets
  setup      Install dependencies and create .env from the example
  test       Run the Node.js test suite
  up         Start the stack in the background
  down       Stop the stack


## Observations
Easy to follow instructions and all went as expected