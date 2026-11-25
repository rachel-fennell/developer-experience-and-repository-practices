# Prepare and Submit Your Course Repository

## Goal
Update the README with run instructions and an evidence index, confirm every module tag and evidence file is present, clean up and scan for secrets, verify the project from a fresh clone, then submit the repository URL. 

## Steps taken
1. Updated the README to include a table linking the moudle tags and each modules doc folder
2. Checked to ensure all tags were correctly added. Added in any missing tags (module 3 and 4). Checked that every module doc had the correcting headings
3. Confirmed that there are no leaks found and that .gitignore was up to date

## Commands
git tag module-03 
git push origin module-03

git tag module-04 
git push origin module-04

git ls-remote --tags origin 'module-*'

for f in docs/[0-9][0-9]-*/*.md; do
  for h in "## Goal" "## Steps taken" "## Commands" "## Results" "## Observations"; do
    grep -q "^$h" "$f" || echo "$f is missing: $h"
  done
done

gitleaks git .

## Results
rachel@Mac developer-experience-and-repository-practices % git ls-remote --tags origin 'module-*'
097388d3523b9af903179a3e5444dfeacf38e8d2        refs/tags/module-01
9d0033289f29b33c1dfac3fa589ae3c189ffb0ee        refs/tags/module-02
8089a5437f9377ba695bb97738c992f836244e10        refs/tags/module-05
e768d593a64827403db0ea35d78b0a3f857bcfb4        refs/tags/module-06
09a1949fdf6871c35eb657864b492d9ce139dddb        refs/tags/module-07

rachel@Mac developer-experience-and-repository-practices % git push origin module-03
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/rachel-fennell/developer-experience-and-repository-practices.git
 * [new tag]         module-03 -> module-03
rachel@Mac developer-experience-and-repository-practices % git push origin module-04
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/rachel-fennell/developer-experience-and-repository-practices.git
 * [new tag]         module-04 -> module-04


 rachel@Mac developer-experience-and-repository-practices % gitleaks git .

    ○
    │╲
    │ ○
    ○ ░
    ░    gitleaks

10:57AM INF 23 commits scanned.
10:57AM INF scanned ~54092 bytes (54.09 KB) in 77.1ms
10:57AM INF no leaks found


## Observations
