# OLD - Installing Shibboleth with Moodle

-   [Milestones](#OLDInstallingShibbolethwithMoodle-Milestones)
    -   [Phase 1](#OLDInstallingShibbolethwithMoodle-Phase1)
    -   [Phase 2 - non UCL users](#OLDInstallingShibbolethwithMoodle-Phase2-nonUCLusers)
-   [Notes - what we need to think about:](#OLDInstallingShibbolethwithMoodle-Notes-whatweneedtothinkabout:)
    -   [testing on dev](#OLDInstallingShibbolethwithMoodle-testingondev)
    -   [rollout](#OLDInstallingShibbolethwithMoodle-rollout)
    -   [What about LDAP?](#OLDInstallingShibbolethwithMoodle-WhataboutLDAP?)
    -   [how are manual accounts affected?](#OLDInstallingShibbolethwithMoodle-howaremanualaccountsaffected?)
    -   [What will be the default login on front page?](#OLDInstallingShibbolethwithMoodle-Whatwillbethedefaultloginonfrontpage?)
    -   [what about logging off?](#OLDInstallingShibbolethwithMoodle-whataboutloggingoff?)
    -   [Working with other Universities - phase 2 of roll out?](#OLDInstallingShibbolethwithMoodle-WorkingwithotherUniversities-phase2ofrollout?)
    -   [What info can we get out of shibboleth, eg when user logs in can you get dept, phone etc](#OLDInstallingShibbolethwithMoodle-Whatinfocanwegetoutofshibboleth,egwhenuserlogsincanyougetdept,phoneetc)
-   [ACTIONS from 9 February meeting](#OLDInstallingShibbolethwithMoodle-ACTIONSfrom9Februarymeeting)

# Milestones

#### Phase 1

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th><p>What</p></th>
<th><p>Who</p></th>
<th><p>Deadline</p></th>
<th><p>Status</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>upgrade Shibboleth service provider</p></td>
<td><p>Austin</p></td>
<td><p><br />
</p></td>
<td><p>in progress</p></td>
</tr>
<tr class="even">
<td><p>upgrade Shibboleth identity provider</p></td>
<td><p>Adrian</p></td>
<td><p><br />
</p></td>
<td><p>with CAB</p></td>
</tr>
<tr class="odd">
<td><p>write script to force complete logout</p></td>
<td><p>Adrian</p></td>
<td><p>31 March  (last week before Easter)</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>test logout on dev</p></td>
<td><p>LTSS/ATS</p></td>
<td><p>12 April (first week after Easter)</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>sign off login box design (on dev)</p></td>
<td><p>Pete to draft, LTSS to sign off</p></td>
<td><p>late April</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>roll out to moodle-pp</p></td>
<td><p>Adrian / Pete</p></td>
<td><p>late April</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>test login/logout (on moodle-pp)</p></td>
<td><p>LTSS / ATS</p></td>
<td><p>early May</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>load testing with Badboy (on moodle-pp)</p></td>
<td><p>Pete / Adrian</p></td>
<td><p>late May</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>load testing with real users (on moodle-pp)</p></td>
<td><p>LTSS to organise group of users</p></td>
<td><p>week of  9 June 2010?</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>get CAB approval</p></td>
<td><p>Rachel</p></td>
<td><p>Wed  9 June 2010</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>document roll back/switch off instructions and circulate (add to Moodle Emergency doc)</p></td>
<td><p>Adrian / Pete</p></td>
<td><p>late May</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>install on production moodle (don't switch on yet)</p></td>
<td><p>Adrian / Pete</p></td>
<td><p>Tues 15 June 2010<br />
(first Tuesday after finishes)</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>switch on on production Moodle</p></td>
<td><p>Adrian / Pete</p></td>
<td><p>Tues 22 June 2010</p></td>
<td><p><br />
</p></td>
</tr>
</tbody>
</table>

#### Phase 2 - non UCL users

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th><p>What</p></th>
<th><p>Who</p></th>
<th><p>Deadline</p></th>
<th><p>Status</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>test with external users</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>add extra link for external users to login box</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
</tbody>
</table>

# Notes - what we need to think about:

See also <http://wiki.ucl.ac.uk/display/ISLTSS/Shibboleth>

##### testing on dev

<http://v197.moodle-dev.ucl.ac.uk/> has now been set up to use Shibboleth authentication, as well as the normal ldap authentication. Please try it out.
To login to v197 using Shibboleth, go to the home page and follow the Shibboleth login link (to : <http://v197.moodle-dev.ucl.ac.uk/auth/shibboleth/index.php>)
This will take you to the single sign-on page.

-   test logging in to something else, e.g. library/portal, then going to Moodle (shouldn't need to type password again)
-   htaccess? php web forms

##### rollout

-   dates to aim to get it on pp, then roll out to live. Aim for installing to production server by Easter 2010?
-   load testing? need to plan in advance to book a group of students
-   need easy way to switch off Shibboleth if needed (roll back)
-   publicity to users

##### What about LDAP?

It should be possible to login using either ldap or shibboleth, but this needs to be tested with accounts that have never logged in to Moodle before (as the type of authentication used to login is stored in the Moodle database). So, with an account that has never logged in to Moodle, login via Shibboleth, then via ldap, and with another account, try the reverse order.

>  *This is critical, as it means that we can switch to using Shibboleth, and back to LDAP, just by changing the login form on the Moodle home page. Adrian.*

##### how are manual accounts affected?

There any local/manual accounts in use in Moodle. These users will need to continue to use the current method of logging in. This can be done by going to the page: <http://v197.moodle-dev.ucl.ac.uk/ucl-login/>
This page can also be used if there is a need to login directly via ldap.

##### What will be the default login on front page?

-   can we take the standard moodle ldap login box of the front page?
-   documentation/publicity
-   how to cause least confusion to users

##### what about logging off?

One difference with Shibboleth is that there is no 'single logout'. If you click on the 'logout' link, Moodle will log you out, but if you try to login again, you will not be prompted for the userid and password, due to the 'single sign-on'.

##### Working with other Universities - phase 2 of roll out?

-   logging in with another Uni account, do we grant permission to other universities, eg Edinburgh? (fiona has Edinburgh account so she can test).
    *There is an issue here: if we allow non-UCL access, then Shibboleth needs to know their home institution, in order to authenticate them. If access is just to UCL users, then this can be configured into Shibboleth. So, external users have to go via a 'Where Are You From' page, either our own one, listing the external institutions that can access our Moodle, or the one provided by the UK Federation, which has all ac.uk sites. Adrian.*
-   What other external (non UCL) shibboleth systems can we get into using our UCL accounts?

##### What info can we get out of shibboleth, eg when user logs in can you get dept, phone etc

> *Any ldap attributes can be accessed via Shibboleth. Adrian.*

# ACTIONS from 9 February meeting

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> **Rachel** to find out what how other institutions are using Moodle with Shibboleth and how they have it set up - send query to moodle mailing lists

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> **Austin** to get <http://v197.moodle-dev.ucl.ac.uk/> (`wasdev-a`) to use `shibboleth2` (it currently uses `shibboleth1`) - by end February 2010

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> **Adrian** to report on progress of moving other production services to `shibboleth2`
With CAB, see SCP 4533

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> **Pete** to test logging in through Shibboleth with brand new LDAP account and a brand new manual account (that hasn't used Moodle before), what happens? what is created in database?
Pete has done this, add link to notes/findings here ...

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> **Pete** to look at redesigning login page on <http://v197.moodle-dev.ucl.ac.uk/>
- 'single sign on'
- have the username and password box send the values entered straight to the shib page
- a link for 'external users click here' that takes them to list of institutions in UK Federation <http://www.ukfederation.org.uk/> , clicking on their institution takes users to their single sign on page
- a warning to users that encourages them to close their web browser - as clicking 'logout' will no longer log them out fully if we use Shibboleth.

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> **Adrian** to document how users can clear their profile cookies in Firefox, to force sign out of Shibboleth without closing browser

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> **Pete** to think about load testing plan, can we use Jmeter? Badboy? real users?
If real users we would need to schedule it for after an exam, LTSS can advise on a suitable date/group of users?
Aim to load test early March 2010.

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> **Adrian** to send Pete the details of which moodle files need to be edited to enable Shibboleth
DONE `/data/apache/htdocs/moodle-dev/v197/auth/shibboleth/index.php`
