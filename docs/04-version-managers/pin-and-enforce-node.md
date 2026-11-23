# Pin runtime and enforce node

## Goal
Install and activate mise, run mise use node@26 in the scheduler repository and commit mise.toml. Add engines (">=26 <27") and packageManager to the root package.json and engine-strict=true to .npmrc. Use mise to switch temporarily to a different Node major in a shell (mise shell node@24 or similar), run npm install and record the error, then switch back.

## Steps taken
1. Installed mise with Homebrew
2. Ran mise use node@26, which created the repository’s mise.toml
3. Added the Node engine range and npm package manager to the root package.json then added engine-strict=true to .npmrc
4. Switched temporarily to Node 24 with mise and ran npm install
5. Switched back to Node 26

## Commands
brew install mise
echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
mise use node@26
mise shell node@24
npm install
mise shell node@26

## Results
When Node 24 was active, npm install failed:
rachel@BEL-MC-260924B developer-experience-and-repository-practices % mise shell node@24
✓ installed 1 tool in 6.9s: node@24.22.3
rachel@BEL-MC-260924B developer-experience-and-repository-practices % npm install
npm error code EBADENGINE
npm error engine Unsupported engine
npm error engine Not compatible with your version of node/npm: undefined
npm error notsup Not compatible with your version of node/npm: undefined
npm error notsup Required: {"node":">=26 <27"}
npm error notsup Actual:   {"node":"v24.22.3","npm":"11.19.1"}

The strict engine setting made the unsupported Node fail immediately instead of continuing with a potentially incompatible install

## Observations
Very easy to follow instructions