# Github migration

VLE Product team repos can be found here -[ https://github.com/orgs/ucl-isd/repositories?q=vle-team&type=all&language=&sort=](https://github.com/orgs/ucl-isd/repositories?q=vle-team&type=all&language=&sort=)

Moodle plugins can be found here - <https://github.com/orgs/ucl-isd/repositories?q=moodle&type=all&language=&sort=>

We have an official team generated here - <https://github.com/orgs/ucl-isd/teams/isd-core-teaching-platforms/members>

I also created a more restricted team here - <https://github.com/orgs/ucl-isd/teams/vle-sre/members>

Migrating a multi-branch pipeline is pretty straightforward - [Create a Jenkins Multi-Branch Pipeline for a GitHub Repository](https://wiki.ucl.ac.uk/display/DP/Create+a+Jenkins+Multi-Branch+Pipeline+for+a+GitHub+Repository) - simplifies the config significantly.

For a single branch pipeline, then we need to create a deploy key & update Jenkins config as an ssh clone from the new github location - [Create a Deploy Key for a GitHub Repository and Add to Jenkins](https://wiki.ucl.ac.uk/display/DP/Create+a+Deploy+Key+for+a+GitHub+Repository+and+Add+to+Jenkins) & [Create a Jenkins Pipeline for a GitHub Repository](https://wiki.ucl.ac.uk/display/DP/Create+a+Jenkins+Pipeline+for+a+GitHub+Repository)

Repo settings

Branch Protection rules:

-   Protect "main" branch
-   Set "Require a pull request before merging" enabled
-   Set "Require approvals" to enabled and require 1
-   Set "Require conversation resolution before merging" enabled
-   Set "Require linear history" to enabled

General repo settings:

-   Set "Allow merge commits" to disabled
-   Set "Allow squash merging" to enabled
-   Set "Allow rebase merging" to enabled
-   Set "Always suggest updating pull request branches" to enabled
-   Set "Automatically delete head branches" to enabled

Collaborators & teams:

-   Add "ucl-isd/vle-sre" team as "Write" access  - Add "isd-core-teaching-platforms" team instead for Moodle repos 
-   Add "ucl-github-moodle" user as "Read" access (Moodle plugin repos fetched by the build.sh only)

Repo page "About" section

-   Add "vle-team" topic to repo OR "moodle" topic for moodle plugins


