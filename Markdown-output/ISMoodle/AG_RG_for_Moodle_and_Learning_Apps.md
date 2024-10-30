# AG/RG for Moodle and Learning Apps

Current access is based on cceaxyz accounts but is transitioning to ISDcceaxyz accounts, current target is to switch off cceaxyz account access on 31 Aug 2020 

### I\] Moodle Maintainers

ag-itsd-moodle-maintainers

rg-itsd-moodle-maintainers

Provides access to:

-New Gitlab as "Maintainer" of Moodle group of repositories 

-All Moodle servers ssh access  

-VCenter for Moodle servers 

-MySQL on Moodle database servers on production, preprod and preview.

### II\] Moodle SOM

ag-itsd-moodle-som

rg-itsd-moodle-som

Provides access to:

-New Gitlab as "Owner" of Moodle group of repositories 

-All Moodle servers ssh access - same access as maintainer, for now

-VCenter for Moodle servers - same access as maintainer

-MySQL on Moodle database servers on production, preprod and preview - same access as maintainer?

### III\] Moodle Developers

ag-itsd-moodle-developers

rg-itsd-moodle-developers

Provides access to:

-New Gitlab as "Developer" of Moodle group of repositories 

-ssh access to Integration Development environment ([mdl-int-dev-01d.ad](http://mdl-int-dev-01d.ad))

This is only for use by permanent developer, with need to access user data. Ad-hoc developers should be granted access to individual gitlab repositories and use their own Docker/Vagrant local Moodle dev environments.

### IV\] Learning Apps

ag-itsd-learning-apps

rg-itsd-learning-apps

Provides access to:

-New Gitlab as "Owner" of Wiki, Myportfolio, Opinio, Adlib, ClusterPC groups of repositories 

-All Learning Apps servers ssh access  (except Moodle ones) → once these have been migrated to RHEL7

-VCenter access for Wiki, Myportfolio, Opinio, Adlib, ClusterPC

-<http://mydb-uata01n.addev.ucl.ac.uk/> RHEL8/MySQL8 dev server ( access removed 26/11/2021)

### V\] Learning Apps Team Lead

rg-itsd-learning-apps-teamlead

Provides access to manage membership of these rg/ag:

ag-itsd-learning-apps

rg-itsd-learning-apps

ag-itsd-moodle-som

rg-itsd-moodle-som

ag-itsd-moodle-maintainers

rg-itsd-moodle-maintainers

ag-itsd-moodle-developers

rg-itsd-moodle-developers

Members of this will be ISD accounts, as needed to RDP to <https://mgmt.desktop.ucl.ac.uk>


