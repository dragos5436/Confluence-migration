# Continuous Integration quick off

Following meeting 25/09/2017 14:30-16:00

**things to mention:**

 - Most examples online release/rollback only code; they rarely mention having to rollback the database schema (changes in structure, tables and fields).

## Current state

 **We have scripts to take the overnight database backup and restore it - in a new databse - on DEV or UAT.**

The scripts run on DEV or UAT.

The above mentioned scripts are **now obsolete**. Since the database have been migrated to the central database service.

**We have scripts to fetch Moodle official code and merge it with UCL's code.**

commands are documented on LTA wiki pages

**Jenkins**

2 Jenkins job are available

The first jobs calls the second job. Combined, these jobs create a 'vanilla' instance of Moodle with a 'blank' database.

The user specify the desired release of Moodle. The code is fetched from the official Moodle repository, some UCL code is added in.

The jobs are a good starting point for further work. 

## Current limitations

**Cloning the database**

It was error prone and would prevent subsequent processes from running.

It is now obsolete. It cannot be done on the central database service (a ticket would need to be created).

**merging code**

The 'git merge' often stops; merge conflicts need to be solved manually.

## Discussions

Automation and CI means different things to different people. The team has to be clear about it wants to achieve. **SMART objectives**.

In my experience, automation is an incremental process. It will happen in stages, the team will get better at it.

**What people would like**:

-   'push a button' and get a Moodle instance - on dev and uat
-   remove/automate some manual steps
-   test new code easily: push to repo, tests are run on a separate instance
-   more scripting, simplify ways of doing steps
-   should be done by the devops team? - we simply tag and push our work
-   use of redgate software

**LTA requirements/needs**

-   database: just one database (no clone). Alternatively, ticket to the DBAs
-   define the git workflow  
-   No merging - simply add UCL code to 'vanilla Moodle'
-   create patch file for each UCL hack
-   environment to run automated tests - can it beUAT and  PP ?
-   define common work practices

## Other things to think of

 Possible git training; or practical examples of using it in a workflow

Example of "A successful Git branching model"

## To do

<table>
<thead>
<tr class="header">
<th>Task</th>
<th>Owner</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Derfine git workflow to define</td>
<td><br />
</td>
</tr>
</tbody>
</table>


