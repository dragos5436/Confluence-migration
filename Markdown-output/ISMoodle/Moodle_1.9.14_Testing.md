# Moodle 1.9.14 Testing

Moodle is available here for testing: <http://v1914.moodle-pp.ucl.ac.uk/course/view.php?id=13369>

Any CONFIRMED bugs at UCL should go in TRAC: <https://svn.ucl.ac.uk/projects/isd/Moodle-195/report/6>

Check that they don't already exist in previous versions make a note of this, but it may not be necessary to fix this before the upgrade.

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th><p>issue</p></th>
<th><p>Done? <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></th>
<th><p>Testing notes</p></th>
<th><p>Details</p></th>
<th><p>who?<br />
</p></th>
<th><p>outcome/decision</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><h5 id="Moodle1.9.14Testing-EssentialTesting">Essential Testing</h5></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><br />
Fixes and Improvements - just list what's improved for users:<br />
Nothing of much interest in the list of fixed bugs.<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p><a href="http://tracker.moodle.org/secure/ReleaseNote.jspa?atl_token=A6PK-W2VX-0DZO-RZAV%7Cc11711d9830b04f9ea1caf6cfb650edf49ab69bc%7Clout&amp;version=10951&amp;styleName=Html&amp;projectId=10011&amp;Create=Create">Moodle.org Release notes 1.9.14</a> #Find new release note link from <a href="http://docs.moodle.org/dev/Releases" class="uri">http://docs.moodle.org/dev/Releases</a> and update URL<br />
<br />
Note down fixes and improvements and pass on relevant ones to staff in an email to Moodle designers - all the bugs in the new release have been thoroughly tested by moodle.org and don't need retesting<br />
</p></td>
<td><p> </p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>Quizzes<br />
<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>Test quizzes thoroughly. We don't want e-exams affected!<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>New algebra question type </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p><strong>Rod's notes from last upgrade to 1912:</strong> Imported an algebra question set from Chem160x - tested 3 questions basic algebra manipulations including log question - looked OK 'cept for lack of LaTex for correct display.<br />
<strong>Jess notes:</strong> Using the Differentation category in the question bank directly in Chem160x. Get an error: &quot;Image not found!&quot; where all LaTeX images are supposed to be displayed. Fixed by Chris. Same error as last time (mimetex.linux needs execute permissions).<br />
 Got the following errors when backing up and quizzes and the restore would then fail:<br />
<strong>Include Quizzes with user data</strong>Failed to load question options from the table question_algebra for questionid 242341<br />
Failed to load question options from the table question_algebra for questionid 242344<br />
Failed to load question options from the table question_algebra for questionid 242347<br />
Failed to load question options from the table question_algebra for questionid 242350<br />
Failed to load question options from the table question_algebra for questionid 242353<br />
Failed to load question options from the table question_algebra for questionid 242356<br />
Linked file 2045/matter/FG05_002.GIF doesn't exist<br />
I copied the FG05_002.GIF from chem160x and placed it in the same folder structure as shown above and still got the error on backup.<br />
The calculated questions with errors above were not set up properly, but were old and have been deleted. They showed the same error on the page when trying to edit them.<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Turnitin plugin<br />
See below for instructions:<br />
<a href="https://wiki.ucl.ac.uk/display/ISLTSS/Turnitin+Testing" class="uri">https://wiki.ucl.ac.uk/display/ISLTSS/Turnitin+Testing</a><br />
New features from release notes:<br />
<br />
- Refactored Back up and restore to allow duplication of TII classes and assignments<br />
- Added erater / ETS support<br />
- Added additional email notification options in the admin config screen<br />
From change log:<br />
2011-08-18 : Refactored Back up and restore to allow duplication of TII classes and assignments<br />
2011-08-18 : Added erater / ETS support<br />
2011-08-18 : Added additional email notification options in the admin config screen<br />
2011-08-18 : Removed / updated deprecated code<br />
2011-08-18 : Addresses postgresql errors and compatibility issues<br />
2011-08-18 : Fixed bug with IE browser window resizing<br />
2011-08-17 : Fixed issue with GradeBook when using grade scales</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>- Steve can you please check the layout problem you experienced on your netbook is still fixed please!<br />
<br />
See:<br />
S:\AASG\LTSS\Moodle\testing\Turnitin_testing_Oct2011.doc for testing details, including Screenshots. (Annora)</p></td>
<td><p> </p></td>
<td><p>New features:<br />
<br />
Scale grades are the wrong way around 100% = D 10% = A<br />
Bulk download of files (original format, PDF and a spreadsheet of assignment marks)<br />
Backing up and restoring works, however upon restore the type is changed to &quot;any submission type&quot;.<br />
<br />
<br />
Clicking on the apple loads the page in the same window which means you can't save as closing the window closes Moodle. This happens on live sometimes as well.<br />
<br />
<a href="http://v1914.moodle-pp.ucl.ac.uk/course/view.php?id=434">LAWS2004_6204</a>: 2010/11 Jurisprudence Affiliate Essay has expired. Might just be an old assignment being used here. Turnitin are talking of removing assignment expirys.<br />
Turnitin grade doesn't seem to be update if you don't click back on the document after changing the grade.<br />
<br />
New error message appears when duplicates exist which is a lot neater and informs users to reset one of the courses (<a href="attachments/18397371/19333178.png">see attached image</a>)<br />
<br />
Resetting once seems to work and I can then upload a new assignment without errors. Resetting twice throws this error: &quot;More than one class exists with this title and unique ids must be used in this case CODE: 220&quot; When I tried a second time it worked!<br />
receipts are sending out to users fine.<br />
</p></td>
</tr>
</tbody>
</table>

|

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>LaTex (Tex filter) </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>*Rod's notes from last upgrade to 1912: *not interpreted currently so all quizzes (and other pages employing maths markup will have errors)RD - PR fixed by changing TEX filter permissions ( as above)</p></td>
<td><p><br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>JMol filter (3D molecular images) ok -   - works if java is installed</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>*Rod's notes from last upgrade to 1912: *Link to jmol file was pointing at wrong server - fixed by editing the offending page.</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>manual backups &amp; restore<br />
Importing</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></td>
<td><p> </p></td>
<td><p>Restore fails. The page stops loading after 'Creating categories and questions'...I managed to restore with quizzes turned off though. The question that breaks the import is Differentiation Revision Quiz -&gt; Section C Thermodynamics -&gt; Calculate the Gibbs energy (both versions).<br />
This quiz backs up and restores in the original course (chem1602_3).<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>The UCL hacks - changes to the code specific to UCL<br />
* showing userid field in user lists (admin - browse list of users)</p>
<ul>
<li>calendar export - recent activity is hard coded to 90 days instead of 60 </li>
<li>course edit form - a new course should default to being hidden from students </li>
<li>Turnitin integration
<ol>
<li>Set your monitor resolution to 1024 X 768 and make sure the tabs along the top of the Turnitin pages display correctly and don't overlap or push down to the row below.</li>
<li>Check the font size is not smaller in the Turnitin tables than other activities fonts</li>
</ol></li>
<li>essay grading in lesson module - page sorts by surname</li>
<li>flv module - when adding/editing</li>
<li>Kosovo added to list of countries </li>
<li>quiz question numbering wraps instead of sitting on 1 long line</li>
</ul></td>
<td><p><br />
<br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<br />
<br />
<br />
<br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p> </p></td>
<td><p>These are listed in Pete's test course.<br />
</p>
<ul>
<li>Page sorts by surname - check Case of the month (id=5407 - <a href="http://v1913.moodle-pp.ucl.ac.uk/mod/lesson/report.php?id=269544" class="uri">http://v1913.moodle-pp.ucl.ac.uk/mod/lesson/report.php?id=269544</a>)</li>
<li>flv module - when adding/editing - click advanced - you'll see entries in the 2 drop-downs for the 'UCL Media streaming' service </li>
<li>Quiz question numbering wraps instead of sitting on 1 long line -  (test with 50+ questions with 1 per page)<br />
</li>
<li><strong>Turnitin integration - check layout issues - too small font size:</strong><br />
</li>
<li>This UCL hack appears to be missing from moodle-pp-1914:<br />
<a href="https://svn.ucl.ac.uk/projects/isd/moodle/changeset/17807" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle/changeset/17807</a></li>
</ul></td>
<td><p> </p></td>
<td></td>
</tr>
<tr class="odd">
<td><h5 id="Moodle1.9.14Testing-LessessentialTesting">Less essential Testing</h5></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td></td>
</tr>
<tr class="even">
<td><p>previously detected issues w UCL Moodle * ##Add any outstanding issues found in TRAC</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>See if any outstanding issues have been resolved. See: <a href="https://svn.ucl.ac.uk/projects/isd/moodle/report/1" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle/report/1</a></p></td>
<td><p> </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Bespoke UCL plugins:<br />
</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

-   blocks/library\_resources
-   blocks/common timetable
-   blocks/library\_search
    Non-standard plugins   
-   mod/book - the book plugin 
-   mod/certificate
-   mod/flv - JW media player plugin
-   mod/questionnaire
-   mod/scheduler
-   mod/slideshow
-   blocks/course\_menu
-   blocks\_email\_list |
    | | Custom certificate for Eastman dental    - Eastman Dental Bites certificate  displaying "Mrs Ruth Glover, DCP tutor"  - keep this - it will be used by Karen Widdowson for research projects in 2011/12 | | |
    <table style="width:100%;">
    <colgroup>
    <col width="16%" />
    <col width="16%" />
    <col width="16%" />
    <col width="16%" />
    <col width="16%" />
    <col width="16%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td><p>forum search </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p><br />
    </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>All resources<br />
    <br />
    Popular activities:</p></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    </tr>
    </tbody>
    </table>

-   Assignments
-   Forums
-   Choice
-   Wiki 
     
    If there's time:
-   database
-   glossary
-   chat
-   lesson | | | May need to backup and restore files from live test course to be able test resources, as pp may no longer have any files | | |
    <table style="width:100%;">
    <colgroup>
    <col width="16%" />
    <col width="16%" />
    <col width="16%" />
    <col width="16%" />
    <col width="16%" />
    <col width="16%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td><p>Anything else that's been tested:<br />
    <br />
    </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    </tbody>
    </table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Turnitin duplicate error.png](attachments/18397371/19333178.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Turnitin\_testing\_Oct2011.doc](attachments/18397371/19333181.doc) (application/msword)

