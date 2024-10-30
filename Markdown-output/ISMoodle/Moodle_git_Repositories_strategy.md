# Moodle git Repositories strategy

UCL Moodle and Moodle plugins code should be managed inline with standard practice in the Moodle Developer Community. In addition, we will consider how this will work in practice within Gitlab once DevOps is fully rolled out. 

Direct quotes from Moodle core devs:

-   Git is de-facto standard source code management system for Moodle plugins.
-   The layout should be that the root of the repository is the root of the plugin folder. In other words, in the root of your repository there should be files like version.php and folders like lang or classes. That way, your plugin can be directly cloned (checked out) into existing Moodle installation without conflicting with other contributed plugins of the same type, also obtained via Git.
-   Plugin repositories (that is activity modules, blocks, filters, themes, local plugins etc) should follow the naming policy of plugintype\_pluginname (also known as "[frankenstyle](https://moodle.org/mod/glossary/showentry.php?eid=10113&displayformat=dictionary "Glossary of common terms: Frankenstyle")" - see the docs). So for example a repository with activity module called Foobar should have name moodle-mod\_foobar
-   There can be as many branches as needed. In Moodle, use "master" as the main development branch and MOODLE\_xx\_STABLE for stable branches. I would recommend following this policy in contrib plugins, too.

<https://docs.moodle.org/dev/Plugin_contribution#Repository>

<https://moodle.org/mod/forum/discuss.php?d=165236#p724312>

Therefore, each component must have it's own git repository, similarly Moodle core should not include plugins in it's repository. The master branch represents the latest fully tested codebase for a plugin.

### Standard Branching

For a significant proportion of plugins, a single protected master branch to which merge requests are submitted from feature branches will suffice. 

**The merge requests (MR) should be based on the latest master in order for the MR to be fast-forward merged in Gitlab.**

From a development perspective this is roughly [GitHub flow](https://guides.github.com/introduction/flow/) but likely to evolve further into [Gitlab Flow](https://docs.gitlab.com/ee/workflow/gitlab_flow.html) once the new & up-to-date Gitlab instance becomes available to use. Use of [Gitflow](https://nvie.com/posts/a-successful-git-branching-model/) in the Moodle community is only practised by Turnitin.

For some more complex plugins, however, there will be a need to maintain separate branches for different versions of Moodle. In line with Moodle, the MOODLE\_xx\_STABLE branches should target particular versions of Moodle. This tends to be particularly relevant for themes as the changes between Moodle versions can be particularly significant.

### Forking of community repositories

In the case of a significant fork of a community plugin or patching of Core Moodle where the MOODLE\_xx\_STABLE namespace is already in use, we will use branches MOODLE\_xx\_UCL.

In those circumstances, where significant patching has occurred and upstream changes need to be pulled in and these do not merge or rebase smoothly, branches can be further named as MOODLE\_xx\_UCL\_RELEASE\_yy creating a git tag of the release would also be advised.

### Bringing all the dependencies together

The full moodle site's codebase is then built by bringing all of the repositories together in a bash script maintained in a dedicated repository along these lines:

> git clone --branch MOODLE\_31\_STABLE <https://github.com/moodle/moodle.git> moodlesite/
>
> git clone --branch MOODLE\_31\_STABLE <https://github.com/moodleou/moodle-mod_forumng> moodlesite/mod/forumng
> git clone --branch master <https://github.com/netspotau/moodle-mod_mediagallery> moodlesite/mod/mediagallery
> git clone --branch MOODLE\_31\_STABLE <https://github.com/moodleou/moodle-mod_ouwiki> moodlesite/mod/ouwiki
> git clone --branch MOODLE\_31\_STABLE <https://github.com/moodleou/moodle-mod_oublog> moodlesite/mod/oublog
>
> cd moodlesite/
>
> git checkout tags/v3.1.7
>
> cd ..
>
> cd moodlesite/mod/mediagallery
>
> git checkout c424fd80a75d792b6bec889814baac17be72d675
>
> cd ../../..
>
> zip -r artefact-moodlesite.zip moodlesite/

If a particular git commit or tag is required, the script can be extended to enter the particular directory and checkout that particular commit or tag for that component.

Current site definition is here [https://git.automation.ucl.ac.uk/moodle/moodle-1819/blob/MOODLE\_34\_STABLE/build.sh](https://git.dcs.ucl.ac.uk/moodle/moodle-1819/blob/MOODLE_34_STABLE/build.sh)

## Commit naming conventions

For changes relating to an issue logged in Mantis or RemedyForce, there should be one commit covering the whole change required and this commit should be formatted as:  \[Mantis *issue number*\] *Title of the issue.*

There again, the aim is to remain in-line with Moodle guidelines - <https://docs.moodle.org/dev/Coding_style#Git_commits>

## Automated testing

Automated testing should occur in 2 places:

1) Component level

Any change to a plugin should be tested in isolation with a clean version of Moodle prior to being merged.

<https://github.com/moodlehq/moodle-local_ci>

<https://docs.moodle.org/dev/Travis_integration>

<https://github.com/blackboard-open-source/moodle-plugin-ci>

2) Site level

All components of the site should be tested together to pick up on any conflicts between plugins

<https://docs.moodle.org/dev/Jenkins_Integration_Testing_for_Plugin_Development>

<https://github.com/ccle/moodle-automated-testing/wiki>

Behat notes:

-   [Acceptance testing using Behat](Acceptance_testing_using_Behat)
-   [Automated Processes (using selenium)](https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=10331688)
-   [Moodle Continuous Integration](Moodle_Continuous_Integration)
-   [Selenium Automated Testing](Selenium_Automated_Testing)

## Load Testing on Pre-Prod

<https://github.com/moodlehq/moodle-performance-comparison>

## Automated Deployment

&lt;!-- Ignore this as Gitlab specific & Artefactory will deal with the pipeline element

The artefact built as part of the CI process is then available for deployment by Gitlab to all of the nodes on Pre-Prod. That is controlled by the .gitlab-ci.yml file in this overall repository. However, this part will depend on the tooling selected for the DevOps rollout by PI which are planning on using a different tool for this.

--&gt;

There should be automated deployment to UAT / Pre-Prod and after human approval, deployment to prod. 

Moodle Testing Environments - Desired state

<https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Moodle%20environments%20desired%20state%20workflows.xml#R3Vpbd5s4EP41fnQOd%2BPHxMm2OafZunF7dvsowxjYYkSF8GV%2F%2FUog7pc4DsTOviQwzIhBmu%2BbGckTdbE9fCIodJ%2BwDf5EkezDRL2fKIqsKQb7xyVHIZFMNZU4xLOFrBCsvH8hUxTS2LMhqihSjH3qhVWhhYMALFqRIULwvqq2wX71rSFyoCFYWchvSv%2FybOqmUlOZFfLP4Dlu9mbZmKdPtihTFl8SucjG%2B5JIfZioC4IxTa%2B2hwX4fPayeUnt%2Fuh4mjtGIKCnGIQPlmrewewruXO%2B%2FT7Ct%2Bc%2Fn6em8I0esw8Gm32%2FuMWEutjBAfIfCukdwXFgAx9VYncu3frsUmaX%2FwClR7GEKKaYiYoRvmAcCj3mMDn%2Bze1vVDMX%2FGSCqXQjKfNMsgTibYECEa9KfeUOdk6BEEU4Jhb0fHcWSog4QHv0jHyhWIgDZt6QI7Mj4CPq7ap%2BIBFqTq5XrAa7EAvyisUR4%2B6QH4s3TRTDZ%2B7erdmFQ5MpSQVxJriHHfg43PIZEc%2FYu%2BO6PpM1xliTTDJ1IACCuINbjG226gzBzYFLBgFmKnHEloppIopaVLbI81kstD3BOHKb8kZoFoHHg2bvehRWIUrWec%2FopxqMYu6AUDj0h0tzeYWBoacWgrsyIO8LHpANIXNLHDCXRoqH%2BZBgLYFQL0NQegWQBwSk8hEAqZwByNUxorCNmNljQMEhzE0csLthgPpj8YU7XRl577HwVKTV4%2FcVs148Pa5aDDdx8rn%2FN8hqsnrzMmrN90Rtnv%2BHge3BoyXUsrufLYCWZ%2FWsmmvUk%2BoFsK6eiHXtklhXz8D6ksB0SbAdWykUm%2FA4DehTAhsCHGAS3gh4rlHE0%2FCG4C2f9tJbpDVsMOEPAVlukqpDHx87MrWPkc0nHyLqBQ6fBc5NNg4gAQQfZwgeuDpmyGAoaMEwm7ygyS28oEijEYPcmJQR8vlrCvMBMa6diHH9khjXOjG%2BwQl42mFeIoLS4hm%2FY5yZTqNksm%2BZgmqEh%2BJhwRR1luhP9H3Mkfr6siey0uZJFcJs%2FLZPb3Wkqnhd8J63pP33hvdY5bqpGRWA30h6nu7Pze4RJfhXvsMxMBfoH6G218%2FI9%2Fewjp0%2BaL5Qvdssr6ZfWEn3leRe5P6G%2BVPemyfle5rJCSB7ioNk3GS0voJkmnyBkxYCyN%2BjIx%2BiVfPj9QK6WU%2F58wYnKLLe5ARZHosTZG2cXmDW0wxoZbKQbt7cCFSpQhmWKowTqULuWPqTuSIxvSUEHUsKIWaddFQaeckFpe7SrPWWc6kWEumIRYDkrr0hZi6yR1tdZX2EVX7r4jVWRzU6SvxsiDSqhFWxbK%2BNgq73jBoFRiM9ffKoj9aN2IhcFPJLlkQsiKKXmXaNrF9OEi9fY%2Bp7AYxWlLXtxczmLUXZbDT%2BnY3Dv9KsxL%2BCctldnWJLrGyoZr1Lu15Wlt%2FruOQsPOqKUgkzVaodhDX0tT79kVi8%2BzAn7m7e9gIUvH1b86PLlkYSdh7s2fPbMIz6atHyaU1iAMHOIzhI94mkMNkIdgSpSGuCAqulqpsuIVF8zl7LHqAtp5T0L3fEsiCkzBzK%2B0xvLyiny8%2FLH4FHxai8UkXJthdztXvv6g5cxE2%2Bn2xyQinLFtwLI04OGd1aPo7tdylrVb3KqmoLq6qq2WRVRRut1R2WVkvHw3LlePiaNrHl%2BTtx4tsS3ryTdrrb2ocDm9kgOf7tOr1a4GDjOXF%2BX4P5Gb0w71Tjte9ZSeeKLF68eGt%2FoO3oC7eiarVvULP7cieqtBRC8ni7U4N2FWXIzpTa7pSsXRFss1rhOksZufaTA83oL2VUWevTH6eUyabwjGPwSfJDrT7mOOOwzAsiirjbi9LwPMmjwBYvYP9wzP%2BmlU8EZJdUMRHe0D0a6szrwiSjVesCreWES9HbSEZ5Pcmw2%2BKXa2lgFT8AVB%2F%2BAw%3D%3D>


