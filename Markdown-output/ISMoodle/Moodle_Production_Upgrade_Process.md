# Moodle Production Upgrade Process

Example steps for 3.11.12 build process and push to catalyst:

Once build is ready, automated tests checked & passed and tested in preview.

Clone locally relevant submodules branch with  git clone <git@github.com>:ucl-isd/moodle-submodules.git

Checkout the latest branch - git checkout MOODLE\_311\_STABLE-66

Cherry-pick first commit from L194 of build.sh - git cherry-pick 24881e7863651a9d87fb18aa8309604904a25b87 

Resolve conflicts from 3). Use VScode editor to resovle conflicts manually. Blue url (Incoming change) is correct. Green url & branch(current change) should be the autorepo & autobranch.

Once all conflicts are resolved - git add .gitmodules & git commit (use default settings when prompted) Exit & do not save buffer

cherry-pick the other two commits (from last lines L194 of build.sh)- git cherry-pick cea2b356ed5756792ca1d9a42fbe263496f77ddb b32964dc635727003f0686c1ca89b12ec445866d

~~git cherry-pick b71b73137f3208083d1cd2e4686fa40ff3e75d47 (Brendan fix rough as …)~~

Push changes of current branch to UCL submodule repo with - git push origin MOODLE\_311\_STABLE-66

Add catalyst git as remote to be able to push code - git remote add catalyst <git@git.catalyst-eu.net>:ucl/moodle.git

Push the code to catalyst - git push -f catalyst MOODLE\_311\_STABLE-2:UCL\_311\_STABLE

SSH to preview, go to build repo (311-release) and create push.sh text file

-   copy contents from git push.sh in github from \#L18 down (first plugin  i.e. blocks/admin\_presets) + \#L1 
-   make it executable chmod +x push.sh
-   run push.sh with ./push.sh ( make sure the push finishes without errors)

Create/update Catalyst ticket that build is pushed.

Update build.sh with [commit](https://github.com/ucl-isd/moodle-build/pull/19/commits/7623c32415599ce78fd48ff2f44c6771b75f7bbc) L194  (in ucl submodules Switch to Catalyst repos commit ref. e6deac261de69355a775a9b243d7db8d166b6381) (only neeed if there was branch change in the build)

How to test build is ok for Catalyst to deploy:

1.  locally clone git@git.catalyst-eu.net:ucl/moodle.git
2.  checkout UCL\_311\_STABLE
3.  git submodule update --init --recursive

1,2, and 3 can be replaced by -  git clone --branch UCL\_403\_STABLE git@git.catalyst-eu.net:ucl/moodle.git 43rel && cd 43rel && git submodule update --init --recursive

If no errors it should be good for Catalyst to deploy
