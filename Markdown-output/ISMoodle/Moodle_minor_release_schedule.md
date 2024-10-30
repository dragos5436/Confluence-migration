# Moodle minor release schedule

Minor releases of Moodle including bug & security fixes are released every two months. With a solid version controlled & unit tested release process now established ([Moodle new build - Git deployment](Moodle_new_build_-_Git_deployment)) since November 2018 and a clear deployment plan with in-context alerting prior to the site going down for maintenance ([Change Deployment plan for Learning Apps](Change_Deployment_plan_for_Learning_Apps)), we are looking to further reduce the time to deployment and impact of these deployments on end users.

Minor releases are predictable and come out on the Second Monday of July, September, November, January, March and May - <https://docs.moodle.org/dev/Releases#General_release_calendar>

For 2019-20, the release dates are as follows:

-   9th September 2019 - 3.7.2 - was skipped due to change freeze
-   11th November 2019 - 3.7.3
-   13th January 2020 - 3.7.4
-   9th March 2020 - 3.7.5
-   11th May 2020 - 3.7.6
-   13th July 2020 - 3.7.7 - this release will be skipped due to proximity to annual major version upgrade and associated change freeze in the run up to the upgrade

At present our Maintenance Window is 8am-10am which encroaches on teaching time and in a period of time with very high usage  → on a regular day 10am is Moodle peak traffic. Whereas beyond 7pm the usage is much reduced. With UCL teaching extending until 9pm, it would make more sense for these to be deployed 9pm-11pm.

Our current schedule means completing the testing and pre-prod deploy on the release day but waiting over a week to apply to prod mostly because this goes to CAB on Wednesday, is then announced as happening the following Tuesday.

We would like to align the release date and deployment date to allow us to reduce WIP and fulfil the DevOps nirvana. 

These releases only include bug & security fixes, while new plugins are included in the build to reduce the number of maintenance outages these will go through separate Change Requests before going live. Plugins are only included once they have reached step iv) of the Plugins Review Process as defined in the [UCL Moodle Customisation policy](UCL_Moodle_Customisation_policy) and passed through the [Plugins review checklist](Plugins_review_checklist) )


