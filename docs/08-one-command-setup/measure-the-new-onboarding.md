# Measuring new onboarding time

## Goal
Have a colleague who has never seen the repository clone and run it following only the README, without help; if you are studying alone, use a different machine or a new user account. Time it, count manual steps and record every stop. Fill in the measured column of the baseline table in docs/dx-baseline.md, fix the biggest remaining stop, and record the before and after. 

## Steps taken
1. Started the first attempt and took 58 minutes total
2. Used a windows computer and used ubuntu in WSL because the project’s Makefile needs a Linux-style shell
3. Set up Ubuntu and connected VS Code to the Ubuntu distribution. Enabled Docker Desktop’s WSL integration for Ubuntu and docker compose version reported v5.1.4 
4. Installed GNU Make and mise inside Ubuntu and cloned the repository again inside Ubuntu 
5. Ran mise trust && mise install, which installed Node 26.13.1. Ran make bootstrap and checked the health page
6. Added Windows and WSL setup guidance to the README and repeated the onboarding from a fresh clone
7. Measured the development loop and ran the tests

## Commands
git clone https://github.com/rachel-fennell/developer-experience-and-repository-practices.git
cd developer-experience-and-repository-practices
mise trust && mise install
make bootstrap
curl http://localhost:3000/health
make dev
docker compose up --build -d
make test

## Results
(See observations for issues with loading on Windows)

When using my windows machine, the first full setup took 58 minutes. This included downloading and setting up WSL and prerequisites, plus troubleshooting
Once I had ran this once, I re-ran the setup on the machine which had all of the WSL etc already done. This fresh-clone run took 6 minutes from cloning to the end of setup

Once Ubuntu and the prerequisites were ready, the app itself had taken about 3 minutes to start

The bootstrap build took 29.9 seconds
The health response was {"status":"ok","fullAtCapacity":false}

Compose Watch reflected an API change in 24 seconds and a shared package change in 15 seconds. A manual rebuild took 29.6 seconds
The test run passed 4 tests and reported 40 ms

## Observations
The first attempt took 58 minutes. Getting the Windows environment ready took most of that time. Once Ubuntu and the prerequisites were working, the app took about 3 minutes to start.

The project’s Makefile needs a Linux-style shell, so I used Ubuntu in WSL. VS Code initially connected to Docker Desktop’s internal WSL distribution and I had to connect it to Ubuntu instead. I enabled Docker Desktop’s WSL integration for Ubuntu and docker compose version reported v5.1.4

GNU Make and mise needed to be installed inside Ubuntu. The earlier repository clone was outside Ubuntu, so I cloned it again there. Then mise trust && mise install installed Node 26.13.1. make bootstrap started the scheduler and the health page worked.

I added Windows and WSL setup guidance to the README. On the fresh-clone rerun, the complete setup took 6 minutes. This is within the Module 01 target of under 15 minutes. The first 58-minute run included setting up the environment; the 6-minute rerun started with Ubuntu and the prerequisites ready