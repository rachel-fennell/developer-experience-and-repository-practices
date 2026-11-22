# Onboarding time

## Goal
Choose an open-source repository you have never used, or an internal one you are new to (describing it without client names or code). Start a timer, clone it and follow only its documentation until the application runs. Record every stop, question and workaround with a timestamp, the total time and the number of manual steps. 

## Steps taken
1. Selected [expressjs/expressjs.com](https://github.com/expressjs/expressjs.com) as the target
2. Followed the contributing guide, which recommends nvm and runs `nvm install`, `nvm use`, `npm install` and `npm run dev`
3. The first `nvm install` stopped because nvm was not installed. Installed nvm, loaded the zsh profile then continued setup.
4. The development server started at `http://localhost:4321`

## Commands
nvm install

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.41.0/install.sh | bash
source ~/.zshrc
command -v nvm

nvm install
nvm use
npm install
npm run dev

## Results
rachel@BEL-MC-260924B expressjs.com % nvm install
zsh: command not found: nvm

Time to first successful run: 3:43 from clone to working site
Clone time: 30 seconds
Manual steps: 11 terminal commands 
Node and npm: Node v24.15.0 and npm v11.12.1
Dependency install: 841 packages added in 33 seconds
Development server: ready in 7.749 seconds at `http://localhost:4321`



## Observations
contributing guide recommends nvm and tells new contributors to run nvm install but doesnt explain how to install nvm.