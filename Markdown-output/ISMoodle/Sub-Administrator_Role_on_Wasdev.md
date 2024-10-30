# Sub-Administrator Role on Wasdev

# Plan

Create a duplicate of Administrator role and name to 'Sub-Administrator'

Use the Admin Bookmarks Block to link to all Administrative areas used by 'Sub Administrator'

Change the 'Assign Roles' for the Site Administration Block to Administrator (so sub-admins can no longer see this block).

Test

## Phase 1 - Create Sub-Administrator Role

1.  Removed LTSS\_TEST from the current sub\_sdmin role
2.  Renamed sub\_admin to sub\_admin\_old
3.  Added new role, sub\_admin / Sub Administrator. Legacy type: Administrator. No other changes made, it's an exact duplicate of Administrator.
4.  Moved the new role to the second but top position on the roles list (using the Up arrow)
5.  Added the Allow Role Assignments to allow the sub\_admins to be able to assign ALL roles, including self-elevation to Administrator (for testing purposes only).
6.  Added the following links to Admin Bookmarks Block:
        Users > Accounts
        Browse list of users
        Bulk user actions
        Add a new user
        Upload users
        Upload user pictures

        Courses
        Add/edit courses
        Enrolments
        Course request
        Backups

        Grades
        General settings
        Grade category settings
        Grade item settings
        Scales
        Outcomes
        Letters

        Report Settings
        Grader report
        Overview report
        User report

        Front Page
        Site files

        Reports
        Backups
        Course overview
        Logs
        Question
        Unit tests
        Statistics

7.  Assign user Matt Jenner to sub\_admin
8.  Log into wasdev as LTSS Role Account and remove Matt Jenner as admin
9.  Log into wasdev as Matt Jenner, test Admin Bookmarks.
    Book marks worked perfectly.

10. Hide Site Administration block.
    Affects **all** Administrators

11. Click any Admin link in Admin Bookmarks -&gt; Site Administration block visible again.
12. Turned Blocks Editing on, made Site Administrator block invisible.
    To make Site Administrator block visible again, turn editing on, or turn blocks editing on and then click the eye for block visibility

# Phase 2 - Applying The Sub-Admin Role to Another User

All other admins on wasdev are still Administrators, the process for Sub-admin conversion is:

1.  Make Site Administration block visible (turn editing on, show visibility)
2.  Assign account to sub\_admin role
3.  Remove account from admin role
4.  Make  bookmarks for the user, or possibly give/show Role Specific Block.

# Problems Noted:

**1.** Massive amount of errors on adding HTML-Role Specific block - so unable to run comparison between Admin Bookmarks and Role Specific Block with Sub-admin only links.on wasdev.

------------------------------------------------------------------------

**2.** Site Adminstration can't be role specific, can't physically make a block Administrator only without hacking code - sadly. But is easily possible, Site Admin block contains the following code:

``` java
     function applicable_formats() {
        if (has_capability('moodle/site:config', get_context_instance(CONTEXT_SYSTEM))) {
             //user is an admin, so show the tools
             echo 'admin';
        } else {
             //user isn't admin, don't show
             echo 'not admin';
        }
    }
```

This could be modified to say something like, if user = admin then show Site Admin endif. Then Sub\_admins just rely on a Role Specific Block or the bookmarks. 

------------------------------------------------------------------------

**3.** Admin bookmarks can be unbookmarked fairly easily and then lost until intervention.

