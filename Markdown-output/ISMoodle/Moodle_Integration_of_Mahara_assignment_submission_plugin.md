# Moodle Integration of Mahara assignment submission plugin

Steps:

## **Configure Mahara**

1.  Configure LTI in Mahara:

    1.1 Navigate to 'Administration menu (🔧) -&gt; Extension -&gt; Plugin administration -&gt; lti'.

    1.2 Select to 'Auto-configure LTI' and save the form. The necessary web services will be activated.

2.  Generate a consumer key and consumer secret:

    2.1 Navigate to 'Administration menu (🔧) -&gt; Web services -&gt; External apps'.

    2.2 Type a name for the application into the 'Application' text input, e.g. Moodle. Applications are listed alphabetically. If you have multiple institutions on your Mahara site, select the institution for which you want to enable the connection.

    2.3 Select 'Moodle Assignment Submission' from the drop-down menu.

    2.4 Click 'Add'. You will then see the consumer key and secret. These will be used when configuring the assignment activity in Moodle.

3.  Enable account creation (optional):

    3.1 Click the 'Manage' button (cog icon) next to the newly created external application.

    3.2 Enable 'Auto-create accounts' and click the 'Save' button.

4.  Set a parent authentication method:

    4.1 Click the 'Manage' button (cog icon) next to the newly created external application.

    4.2 Set the authentication method that your institution members shall also be able to use (LDAP for now) and click the 'Save' button.

5.  Ensure your Mahara server does not block the oauth authorization header.
    Moodle passes the oauth tokens in an authorization header to the Mahara site, some webservers will block this information and you may get an error "Invalid token selected or none supplied" - If this occurs take a look at this stack-overflow post for information on to fix: <https://stackoverflow.com/questions/26475885/authorization-header-missing-in-php-post-request>

## **Configure Moodle**

1.  Go to Site Administration / Plugins / Activity Modules / Assignment / Submission Plugins / mahara Submissions

2.  Set defaults for whether the option to submit from Mahara should always be enabled and the default state of 'Lock submitted pages'.

3.  If you are only going to use one target instance of Mahara and you wish to set Mahara connection details only once, fill in the rest of the form. These values will default each time:

    -   URL of your Mahara site.
    -   Mahara web services OAuth key (the 'Consumer key' from the external apps list in Mahara).
    -   Mahara web services Oauth secret (the 'Consumer secret' from the external apps list in Mahara).

4.  If you select 'Force global credentials' then these credentials will always be used and course creators will not be able to override them on individual assignments. At the same time, you won't need to provide these details to course creators.


