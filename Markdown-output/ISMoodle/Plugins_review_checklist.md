# Plugins review checklist

These are points to consider while reviewing plugins for Moodle. Further explanation of each criteria below.

``` java
[] Moodle Plugins Database
[] Trusted Maintainer
[] Actively Maintained 
[] Automated tests
[] Git
[] Data Protection
[] Known Issues
[] Testing instructions
[] Load
[] Third party code
[] Icon
[] Code Review
[] Clustering
[] Accessibility
[] Mobile Friendly
[] Documentation
[] DPIA
[] Sanity check
```

Acceptable check-marks are Y (for yes), N (for no) or - (for not applicable). All N check-marks should be accompanied by an explanation of the problem that still needs to be addressed.

-   [1) Moodle Plugins Database](#Pluginsreviewchecklist-1)MoodlePluginsDatabase)
-   [2) Trusted Maintainer?](#Pluginsreviewchecklist-2)TrustedMaintainer?)
-   [3) Actively Maintained](#Pluginsreviewchecklist-3)ActivelyMaintained)
-   [4) Automated PHPUnit, Behat, selenium tests](#Pluginsreviewchecklist-4)AutomatedPHPUnit,Behat,seleniumtests)
-   [5) Git](#Pluginsreviewchecklist-5)Git)
-   [6) Data Transfer Protection](#Pluginsreviewchecklist-6)DataTransferProtection)
-   [7) Known Issues](#Pluginsreviewchecklist-7)KnownIssues)
-   [8) Use cases / Testing Instructions](#Pluginsreviewchecklist-8)Usecases/TestingInstructions)
-   [9) Load & Load testing](#Pluginsreviewchecklist-9)Load&Loadtesting)
-   [10) Third party code](#Pluginsreviewchecklist-10)Thirdpartycode)
-   [11) Icon](#Pluginsreviewchecklist-11)Icon)
-   [12) Code Review](#Pluginsreviewchecklist-12)CodeReview)
-   [13) Clustering](#Pluginsreviewchecklist-13)Clustering)
-   [14) Accessibility](#Pluginsreviewchecklist-14)Accessibility)
-   [15) Mobile Friendly](#Pluginsreviewchecklist-15)MobileFriendly)
-   [16) Documentation](#Pluginsreviewchecklist-16)Documentation)
-   [17) DPIA](#Pluginsreviewchecklist-17)DPIA)
-   [18) Sanity Check](#Pluginsreviewchecklist-18)SanityCheck)

### 1) Moodle Plugins Database

Is the plugin in the Moodle Plugins database?

-   If so, this ensures the following has already been reviewed <https://docs.moodle.org/dev/Plugin_contribution_checklist>. 
-   If not, review ourselves against those standards.

If in the plugins DB, does it have a link to a git repository? If not, then assume it is abandoned as this has been a requirement for a long time so plugin most likely doesn't meet current MPD standards.

### 2) Trusted Maintainer?

Is the plugin developed by someone from these trusted groups:

-   Current or past Moodle core developers (e.g. [Dan Marsden](https://github.com/danmarsden), [Andrew Nicols](https://github.com/andrewnicols), [Moodle HQ](https://github.com/moodlehq), [Mark Nelson](https://github.com/markn86), [Damyon Wiese](https://github.com/damyon), [David Mudrak](https://github.com/mudrd8mz), [Dan Poltawski](https://github.com/danpoltawski), [Tim Hunt](https://github.com/timhunt), [Marcus Green](https://github.com/marcusgreen), [David Monllao](https://github.com/dmonllao), [Bas Brands](https://github.com/bmbrands),...)
-   Significant contributors to the Moodle community or current/past Moodle Partners (e.g. [OU](https://github.com/moodleou), [Sam Marshall](https://github.com/sammarshallou), [Netspot](https://github.com/netspotau), [Catalyst](https://github.com/catalyst), [Blackboard Open Source](https://github.com/blackboard-open-source), [Mike Churchward](https://github.com/mchurchward), [Gareth Barnard](https://github.com/gjb2048), [Brendan Heywood](https://github.com/brendanheywood), [Synergy](https://github.com/synergylearning), [Davo Smith](https://github.com/davosmith), [Tomasz Muras](https://github.com/tmuras), [Alexander Bias](https://github.com/abias), [Uulm](https://github.com/moodleuulm), ...)
-   Supplier of a product we are paying for? This indicates that the plugin(s) should be maintained long term but does not provide the guarantee of good coding as we can expect from the above.

### 3) Actively Maintained

Is the plugin actively maintained:

Has there been any recent commits (i.e less than a year)?

Are the issues for this plugin being addressed or is there a long list of unresolved issues? If long list of issues, is this due to being extremely popular or poorly maintained?

### 4) Automated PHPUnit, Behat, selenium tests

Does the plugin have a set of automated tests which cover the key features of the tool?

### 5) Git

Is the plugins publicly available through a git repository we can clone from? 

i.e. does it follow the principles of the [Moodle git Repositories strategy](Moodle_git_Repositories_strategy)?

-   The layout should be that the root of the repository is the root of the plugin folder. In other words, in the root of your repository there should be files like version.php and folders like lang or classes. That way, your plugin can be directly cloned (checked out) into existing Moodle installation without conflicting with other contributed plugins of the same type, also obtained via Git.
-   Plugin repositories (that is activity modules, blocks, filters, themes, local plugins etc) should follow the naming policy of plugintype\_pluginname (also known as "[frankenstyle](https://moodle.org/mod/glossary/showentry.php?eid=10113&displayformat=dictionary "Glossary of common terms: Frankenstyle")" - see the docs). So for example a repository with activity module called Foobar should have name moodle-mod\_foobar
-   There can be as many branches as needed. In Moodle, use "master" as the main development branch and MOODLE\_xx\_STABLE for stable branches. Is this followed? 

**Should we be following master or a stable branch for this plugin?**

i.e. which branch will the additional line in the build.sh will need to pull?

### 6) Data Transfer Protection

Does this plugin report back statistics to a remote server?

Does it rely on a third part server in any way to function?

Is there any personal data being transferred?

If so, can this be switched off without affecting plugin functionality?

Can we self-host the backend or use a service within UK/EU?

If latter option, GDPR compliant contract in place with UCL?

If suppliers aren't clear what to do instead of Privacy Shield -&gt;[ https://noyb.eu/en/next-steps-eu-companies-faqs](https://noyb.eu/en/next-steps-eu-companies-faqs) 

( [https://techcrunch.com/2020/08/18/eu-websites-use-of-google-analytics-and-facebook-connect-targeted-by-post-schrems-ii-privacy-complaints/](https://techcrunch.com/2020/08/18/eu-websites-use-of-google-analytics-and-facebook-connect-targeted-by-post-schrems-ii-privacy-complaints/?guccounter=1) )

### 7) Known Issues

Compile a list of known issues about the plugin from the relevant issue tracker, Moodle Mailing lists, forums, etc

Any major blockers? Are there are any major issues which would need to be mitigated? Can these be mitigated by documentation / User Tours?

Work **together** with Digi-Ed on this.

### 8) Use cases / Testing Instructions

Is the use case clear? Or are there many ways this tool could be used?

Do we need some manual testing plans beyond what is covered by the automated tests?

### 9)  Load & Load testing

Can we cope with the load this plugin will cause?

Is it offloading where possible load to cron for the admin servers to deal with?

Is it doing database intensive tasks at the same time as peak usage or asynchronously?

Do we need to load test certain parts of the application before ?

Do we need to write some load tests to be run moving forward as part of the automated pipeline?

Our cloud infrastructure is much more resilient and most heavy queries will hit the read-only db nodes so should not be much of an issue. Speed of queries with UCL's large dataset may be worth testing. Heavy use of write queries would be a concern we would need to get to the bottom of however.

### 10) Third party code

Does this plugin include or require 3rd party libraries which are not included?

Can we pull these libraries through git or do we need to periodically visit some dodgy website (e.g. sourceforge) to get updates?

### 11) Icon

Does our current theme include a custom icon for this? 

Are we happy with the stock icon?

Up to digi-ed on this whether to get a new one made or just an existing copied (e.g [customcert](https://git.automation.ucl.ac.uk/moodle/moodle-theme_adaptable/commit/7d41b78114c42f16149c1a04d2fb95e74840a402))

### 12) Code Review

At this point, we won't explore this criteria - so just mark as not applicable.

Once we have caught up and stabilised the platform, then we should start going back through existing plugins and new ones. For future reference:

-   <https://moodle.org/mod/forum/discuss.php?d=263614>
-   <https://docs.moodle.org/dev/Plugin_contribution_checklist>
-   <https://docs.moodle.org/dev/Peer_reviewing>

Should start by running the full code checker suite on this new plugin.

site admin &gt; development &gt; code checker

### 13) Clustering

-   Test Database clustering does not break plugin (deploying on PP?)
-   Should not use opcache\_reset())

### 14) Accessibility

WCAG 2.1 AA compliant?

<https://docs.moodle.org/dev/Accessibility>

### 15) Mobile Friendly

Does it work well with our responsive theme?

Does it support the Moodle Mobile App?

### 16) Documentation

Does the plugin have good documentation available?

If yes, good sign and helpful for going live. If not, Digi-Ed will have to write it.

### 17) DPIA

Does this plugin introduce a new kind of processing to the VLE service which would require a DPIA to be completed?

<https://www.ucl.ac.uk/legal-services/ucl-general-data-protection-regulation-gdpr/guidance-notices-ucl-staff/data-protection-impact>

### 18) Sanity Check

Anything else which you are concerned when reviewing this plugin?

We naturally want to prevent another unoconv situation, so raise any concerns about impact on support load here.

Didn't look at these but we may want to add steps from them in future:

<https://docs.moodle.org/36/en/Plugin_Review_Criteria>

<https://www.tituslearning.com/evaluating-moodle-plugins/>

<https://docs.moodle.org/dev/Plugin_contribution_checklist>


