# UCL Moodle Customisation policy

Status: Ratified 

We want to have a Moodle which supports the educational practices of UCL and continually make the system better in a educationally sound and user research driven way, we must however balance any customisation with the maintenance complexity any change can introduce, in order for us to continue to deliver Moodle releases throughout the year.

# I\] Moodle Plugins

Moodle Plugins are generally a straightforward way of introducing new functionality to UCL's Moodle.

## 1) Request Process

i) Requests for these should be added on the Digi-Ed [Enhancement wish list (Plugins, LTI etc)](https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=68846902), along with a JIRA Story on the backlog (Component = Moodle & Epic = Moodle Plugin Requests) by the Requester.

ii) The wish list will be prioritised periodically by the SO and SOM, at which point they will be added to the Learning Apps [Moodle Plugin Reviews](Moodle_Plugin_Reviews) list and priority moved around in the backlog.

iii) Once the plugin review is begun by Learning Apps, a Preview environment will be generated and the plugin will be made available to the Digi-Ed review lead to test. Learning Apps will review the plugin from a technical reliability/maintenance/support standpoint following the [Plugins review checklist](https://wiki.ucl.ac.uk/display/ISMoodle/Plugins+review+checklist).

iv) If Learning Apps confirm plugin is ok and assuming this plugin meets UCL requirements, the plugin can be included in the Moodle build for installation as part of any other planned code release (or the nightly DevOps release window) but will remain disabled until the corresponding online guidance (miniguide etc) is created by the requester ([UCL Moodle Guides (for staff)](https://wiki.ucl.ac.uk/x/-xliAQ)). 

v) Once documentation is ready, then a go-live date will need to be scheduled with LTA and mentioned in the [Release Notes](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/Release+Notes).

vi) Write relevant documentation and send out comms via Digital Education Newsletter

    a) Ensure relevant wiki guidance and expertise is available in the Digi-Ed Team (LT's or DESA's)

    b) Digi-Ed create and share a blog post via relevant channels based on Plugin - Digital Education Newsletter.

Note - Learning Apps may investigate plugins of their own accord for operational reasons in which case these are likely to be fast tracked, however they will still go though a proper [Moodle Plugin Review](Moodle_Plugin_Reviews). Non user facing plugins will not require end user documentation, however their setup and purpose should still be documented on the ISMoodle wiki for reference and the associated improvement is likely to be worth featuring in the [Release Notes](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/Release+Notes).

## 2) Release Schedule

### i) Releasing New Plugins

Plugins can be added to Moodle all year round outside of the ISD change freeze in December and the Moodle change freeze from mid-May to the Moodle Annual Upgrade.

These will need to be installed during the agreed Maintenance window (Weekdays 7pm-11pm) or the nightly DevOps release window (TBC).

### ii) Withdrawing Plugins 

Plugins can only be removed as part of the annual upgrade as additional comms will be required about the migration to the alternative solution  . We reserve the right to suspend plugins during the course of the academic year in the extreme circumstances where they cause severe stability or up-time problems, all endeavours will be made for this to be temporary.

## 3) Plugin Quality

Plugins we install will need to be well maintained and supported, to that effect plugins must go through the [Plugins review checklist](https://wiki.ucl.ac.uk/display/ISMoodle/Plugins+review+checklist). It is also important that plugins do not conflict with other plugins, to that effect **themes, local plugins and any plugins relying on further software or service will face additional scrutiny**.

# II\] Improving Moodle

UCL's Moodle can be improved upon further beyond installing existing plugins from the community. In such cases as we would like to improve Moodle further, this is likely to require development or some amount of effort to achieve.

## 1) Process

General proposals to improve Moodle should be written up under the [Moodle improvement proposals](https://wiki.ucl.ac.uk/display/ISLTSS/Moodle+improvement+proposals) by anyone. A more detailed implementation plan can then be discussed with the SOM. Once refined, these should be discussed with the SO and SOM with regards to resourcing requirements and desirability. This may require a dedicated project proposal which they will advise upon.

If a decision is made to proceed, the individual stories will be added in JIRA (Component = Moodle & Epic = Moodle Development)

## 2) Principles

As a matter of course any development will aim to push back the improvement upstream to the relevant party. For example any improvement to core Moodle would be pushed into core Moodle through the tracker and any changes to a third party plugin or theme which we use would be proposed to the maintainer and incorporated in the commonly available version of the plugin. This will require implementing and thinking beyond our local use case but will ensure much better maintenance in the long run.

# III\] Moodle Core

## 1) Principles

While there are occasions where UCL specific customisation of Moodle is necessary, maintaining these do add a support burden and are a last port of call once all other options are exhausted. We do have a good technical process to handle these ([Moodle new build - Git deployment](Moodle_new_build_-_Git_deployment)) and the current hacks are well documented ([New Moodle - Documented changes to core](New_Moodle_-_Documented_changes_to_core)). Nonetheless, these should be kept to a minimum and complex hacks really should not happen, all institutions who have hacked core heavily have all said they regretted doing so (OU, Sussex, Moodle Partners, Avado...)

The first step with regards to a change of core Moodle is that it should be requested via the Moodle Tracker as a bug or feature request. If no progress is made organically, UCL may want to fund the development of the solution, this should be discussed and submitted in the tracker, designed to work for all Moodle users, Moodle has a robust peer review & testing process which will ensure the feature is well designed and maintained for the long run.

## 2) Core Hacks

We do not expect to take on any additional hacks of core Moodle. A very strong case would have to be made to the SO & SOM by email, the maintenance of any proposal would have to be minimal and an end date for this would need to be set. Such requests are unlikely to be accepted, if it is accepted in principle this request would then be added to JIRA for implementation review and testing, the SOM has a right to veto these unilaterally.

## 3) Backports

A backport request of a change introduced in a newer version of Moodle could be accepted if the change is either something UCL has successfully submitted into core Moodle and has ensured will work equally well on the current Moodle release in production or if the code change is minor and does not affect the database in any way. By their nature, these are changes that are limited in time as they will not be required after the following annual upgrade so do not imply a long term maintenance burden. Such requests can be added directly onto JIRA for implementation review and testing. These will be considered very carefully by the Apps team as there could still be unintended consequences for upcoming upgrades, the SOM has a right to veto these unilaterally.


