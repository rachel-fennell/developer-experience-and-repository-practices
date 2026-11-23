# Version and publish safety

## Goal
Add placesLeft(capacity, booked) with tests to packages/booking-rules, bump it to 1.1.0 and add a CHANGELOG.md entry explaining why this is a minor release. Rename the package scope to your GitHub username if you will publish for real, add publishConfig for GitHub Packages, and commit an .npmrc that uses ${NODE_AUTH_TOKEN}. Run npm publish --dry-run --workspace packages/booking-rules (or publish to your own account), then run gitleaks git . and confirm no token is in the repository. 

## Steps taken
1. Added placesLeft method and tests for remaining spaces and fully booked
2. Bumped from version 1.0.0 to 1.1.0
3. Added a changelog entry explaining minor version bump
4. Added GitHub Packages publish configuration
5. Kept engine-strict=true in the root .npmrc and added the GitHub Packages registry mapping with the ${NODE_AUTH_TOKEN} placeholder
6. Ran a publish dry run and scanned the repository for secrets

## Commands
npm publish --dry-run --workspace packages/booking-rules
gitleaks git .

## Results
rachel@BEL-MC-260924B developer-experience-and-repository-practices % npm publish --dry-run --workspace packages/booking-rules
npm notice
npm notice 📦  @scheduler/booking-rules@1.1.0
npm notice Tarball Contents
npm notice 87B CHANGELOG.md
npm notice 225B index.js
npm notice 550B index.test.js
npm notice 222B package.json
npm notice Tarball Details
npm notice name: @scheduler/booking-rules
npm notice version: 1.1.0
npm notice filename: scheduler-booking-rules-1.1.0.tgz
npm notice package size: 660 B
npm notice unpacked size: 1.1 kB
npm notice shasum: 2b2878543d2343feae55f23a29154f4d149c98d0
npm notice integrity: sha512-yysJEVU+ERAgn[...]Heh/jbB2PzSKQ==
npm notice total files: 4
npm notice
npm notice Publishing to https://npm.pkg.github.com with tag latest and default access (dry-run)
+ @scheduler/booking-rules@1.1.0

listed 4 files and did not publish the package


rachel@BEL-MC-260924B developer-experience-and-repository-practices % gitleaks git .

    ○
    │╲
    │ ○
    ○ ░
    ░    gitleaks

8:47PM INF 12 commits scanned.
8:47PM INF scanned ~32507 bytes (32.51 KB) in 58.5ms
8:47PM INF no leaks found


## Observations

