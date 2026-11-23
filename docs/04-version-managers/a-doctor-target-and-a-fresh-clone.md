# Making a doctor target and fresh clone

## Goal
Add a make doctor target that prints the versions of Node, npm, Docker, Docker Compose and Make, and exits non-zero with a helpful message if node --version does not start with v26. Clone your repository into a new folder, run mise trust and mise install, run make doctor inside the folder, then run node --version outside it and record both. 

## Steps taken
1. Added doctor to the Makefile. It prints node, npm, Docker, Docker Compose and Make versions, then fails with a message unless node starts with v26
2. Checked make doctor with Node 26 and Node 24
3. Cloned the public repo into developer-experience-and-repository-practices-fresh
4. Ran mise trust and mise install in the fresh clone then ran make doctor
5. Opened a terminal outside the repo and ran node --version

## Commands
make doctor
mise shell node@24
make doctor
mise shell node@26

git clone
mise trust
mise install
make doctor
node --version

## Results
rachel@BEL-MC-260924B developer-experience-and-repository-practices % make doctor
v26.13.1
11.20.0
Docker version 29.9.2, build a82e528901
Docker Compose version v5.6.0
GNU Make 3.81

rachel@BEL-MC-260924B developer-experience-and-repository-practices % mise shell node@24

rachel@BEL-MC-260924B developer-experience-and-repository-practices % make doctor
v24.22.3
11.19.1
Docker version 29.9.2, build a82e528901
Docker Compose version v5.6.0
GNU Make 3.81
Node v26 is required
make: *** [doctor] Error 1

rachel@BEL-MC-260924B developer-experience-and-repository-practices-fresh % make doctor
v26.13.1
11.20.0
Docker version 29.9.2, build a82e528901
Docker Compose version v5.6.0
GNU Make 3.81

rachel@BEL-MC-260924B ~ % node --version
v26.13.1

Inside/outside comparison showed the same node version

## Observations
