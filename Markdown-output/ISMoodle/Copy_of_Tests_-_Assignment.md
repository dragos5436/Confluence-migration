# Copy of Tests - Assignment

-   [Staff Test Scripts](#CopyofTestsAssignment-StaffTestScripts)
    -   [\[ASS001T\] Create a Standard Moodle Assignment](#CopyofTestsAssignment-%5BASS001T%5DCreateaStandardMoodleAssignment)
    -   [\[ASS001S\] Submit a Moodle File Assignment](#CopyofTestsAssignment-%5BASS001S%5DSubmitaMoodleFileAssignment)
    -   [\[ASS002T\] Create a Group Text Moodle Assignment](#CopyofTestsAssignment-%5BASS002T%5DCreateaGroupTextMoodleAssignment)
    -   [\[ASS002S\] Submit a Moodle Assignment (online text)](#CopyofTestsAssignment-%5BASS002S%5DSubmitaMoodleAssignment(onlinetext))
    -   [\[ASS003T\] Create an Anonymous Video Assignment](#CopyofTestsAssignment-%5BASS003T%5DCreateanAnonymousVideoAssignment)
    -   [\[ASS003S\] Submit a Video Assignment](#CopyofTestsAssignment-%5BASS003S%5DSubmitaVideoAssignment)
    -   [\[ASS006T\] View and grade a video assignment](#CopyofTestsAssignment-%5BASS006T%5DViewandgradeavideoassignment)
    -   [\[ASS004T\] View and grade a file assignment](#CopyofTestsAssignment-%5BASS004T%5DViewandgradeafileassignment)
    -   [\[ASS005T\] View and grade an online text assignment](#CopyofTestsAssignment-%5BASS005T%5DViewandgradeanonlinetextassignment)
    -   [\[ASS007T\] Test Marking workflow](#CopyofTestsAssignment-%5BASS007T%5DTestMarkingworkflow)
    -   [\[ASS004S\] Check a group submission](#CopyofTestsAssignment-%5BASS004S%5DCheckagroupsubmission)
    -   [\[ASS005S\] Check group grade/feedback](#CopyofTestsAssignment-%5BASS005S%5DCheckgroupgrade/feedback)
-   [Other tests](#CopyofTestsAssignment-Othertests)

Mantis: <https://www.ucl.ac.uk/mantis/my_view_page.php>

### Staff Test Scripts

##### \[ASS001T\]  Create a Standard Moodle Assignment

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th>Date</th>
<th><br />
</th>
<th><br />
</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Login as user with 'Tutor' role</td>
<td> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td>None</td>
<td><br />
</td>
<td>6-JUN-18</td>
<td><br />
</td>
<td></td>
</tr>
<tr class="even">
<td>2</td>
<td><p>Turn editing on &gt; Add an activity or resource&gt; Assignment.</p></td>
<td> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></td>
<td>Configuration problems (probably theme related): check boxes are invisible in the <strong>Availability</strong> and <strong>Feedback types</strong> sections. The same is true for <strong>Submission types</strong> where it is not possible to know which options are ticked without looking to see if the <strong>Maximum submission size</strong> (MSS) and/or the <strong>Word limit</strong> (WL) fields are active. If MSS is active then you can assume <strong>File submissions</strong> are allowed and if WL is active presumably <strong>Online text</strong> submissions are enabled.</td>
<td>7600</td>
<td>6-JUN-18</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>3</td>
<td><p>Change due date and cut off date to something reasonable.</p></td>
<td> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>6-JUN-18</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>4</td>
<td>Check only file upload is permitted.</td>
<td> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>6-JUN-18</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>5</td>
<td>Under Grade - Anonymous marking set to No.</td>
<td> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>6-JUN-18</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>6</td>
<td><p>Change nothing else and save.</p></td>
<td> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>6-JUN-18</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>7</td>
<td>--&gt; Go to ASS001S - do all steps once, and if testing <strong>Marking workflow</strong> (ASS007T) then do steps 1-4 once again so you have two assignments submitted to this box.</td>
<td> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></td>
<td>Not testing Marking Workflow on this pass.</td>
<td><br />
</td>
<td>6-JUN-18</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

##### \[ASS001S\]  Submit a Moodle File Assignment

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th>Date</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Login as a ''student'''.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>6-JUN-18</td>
</tr>
<tr class="even">
<td>2</td>
<td>Click the Standard Moodle assignment.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>6-JUN-18</td>
</tr>
<tr class="odd">
<td>3</td>
<td>Upload a file, watch for the maximum file limit size.</td>
<td><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></td>
<td>Configuration problems (probably theme related): the compulsory check box to confirm the submission is the user's own work is invisible and therefore tricky to tick. But if it's not ticked the submission can't be made. <img src="images/icons/emoticons/sad.svg" alt="(sad)" class="emoticon emoticon-sad" /></td>
<td>7601</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>4</td>
<td>You should get a message saying: ‘'''File uploaded successfully'''’ if it is succeeded, otherwise it shows an error message.</td>
<td><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></td>
<td>No message even tho' submission successfully made.</td>
<td>7602</td>
<td>6-JUN-18</td>
</tr>
<tr class="odd">
<td>5</td>
<td><p>Go back out of the submission area and then go back into it before the due date.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td>No message even tho' submission successfully made.</td>
<td><br />
</td>
<td></td>
</tr>
<tr class="even">
<td>6</td>
<td>Delete the uploaded file (click on the file itself in upload area, then delete) and submit another document.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>6-JUN-18</td>
</tr>
<tr class="odd">
<td>7</td>
<td><p>File should upload successfully and submission should be updated.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td>No message even tho' submission successfully made.</td>
<td><br />
</td>
<td>6-JUN-18</td>
</tr>
</tbody>
</table>

##### \[ASS002T\]  Create a Group Text Moodle Assignment

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th>Date</th>
<th><br />
</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><p>Go into Users &gt; Groups</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>2</td>
<td><p>Auto create groups - 3 groups - CW Grp #</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>3</td>
<td>Add into new grouping - CW Submission</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>4</td>
<td>Save</td>
<td>N/A</td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>5</td>
<td><p>Back in the course page, turn editing on &gt; Add an activity or resource&gt; Assignment</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>6</td>
<td><p>Change due date and cut off date to something reasonable.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>7</td>
<td>Check only Online text submission is permitted.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>8</td>
<td>Students submit in groups - set to Yes</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>9</td>
<td><p>Require all group members submit - set to No</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>10</td>
<td>Set to use CW Submission grouping</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>11</td>
<td>Under Grade - Anonymous marking set to No.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>12</td>
<td>Scroll and save.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
<td><br />
</td>
</tr>
</tbody>
</table>

##### \[ASS002S\]  Submit a Moodle Assignment (online text)

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th><p>Date</p>
<p><br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Login as a Student account.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>2</td>
<td>Click the assignment Group Text Moodle Assignment (see ASS002T)</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>3</td>
<td>Click the ‘Add submission’ button, and you should see a text editor where you can put the submission for this assignment</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>4</td>
<td><p>Tick the submission statement above the text editor.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>5</td>
<td>Type any text and click ‘Save Changes’</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>6</td>
<td>The page refreshes and takes you back to the submission area, with a preview of your submission text.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>7</td>
<td>Click to 'Edit submission’ while the due date for the assignment has not passed yet.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>8</td>
<td>Save and see if changes have been recorded.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
</tbody>
</table>

##### \[ASS003T\]  Create an Anonymous Video Assignment

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th><p>Date</p>
<p><br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Turn editing on &gt; Add an activity or resource&gt; Assignment</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>2</td>
<td>Change due date and cut off date to something reasonable.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>3</td>
<td>Check only Video submission is permitted.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>4</td>
<td><p>Change nothing else and save.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>5</td>
<td>--&gt; Go to ASS003S - and submit video <del>( x 2 ) - one recorded from webcam, one</del>.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>6</td>
<td>--&gt; Go to ASS006T- and grade video assignment. Then return to path here for anonymity testing:</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>7</td>
<td>Once you have graded, change dates so that due date and cut off date have passed.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>8</td>
<td><p>Go to course gradebook and confirm that NO grades are showing for this anonymous assignment.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>9</td>
<td>Return to assignment and 'Reveal identities' in the settings block to the right.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>10</td>
<td><p>You should get a warning that this cannot be undone.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>11</td>
<td><p>Click to confirm you want to deanonymise.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>12</td>
<td>Check submission inbox to confirm that names of students have now appeared.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>13</td>
<td>Go to course gradebook and confirm that grades have now appeared for this assignment.</td>
<td><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></td>
<td><p>There are active students enrolled on a course and they are displayed in the assignments themselves, but they are not listed in the Gradebook.</p>
<p>In the Gradebook a pink header states:  All participants: 0/0</p>
<p>It doesn't seem to matter whether the assignments are hidden/unhidden, whether the due dates or post dates are in the past or in the future. The students names, submissions and grades if there are any, are listed in the assignments themselves.</p>
<p>In old Moodle 3.1 student names are listed in the Gradebook regardless of these conditions.</p>
<p>Visit a course in new Moodle that has some assessments added e.g. Moodle/Turnitin assignment or quiz and click on 'Grades' in the 'This course' or 'Navigation' menus.<br />
<br />
Courses tested:<br />
<br />
<a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2014" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2014</a><br />
<a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2010" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2010</a><br />
<a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2010" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2010</a><br />
<a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2008" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2008</a></p></td>
<td>0007607</td>
<td>15-JUN-18</td>
</tr>
</tbody>
</table>

##### \[ASS003S\]  Submit a Video Assignment

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th><p>Date</p>
<p><br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><p>Login as a Student account.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>2</td>
<td>Click the Anonymous Video Assignment (see ASS004T)</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>3</td>
<td>Click the ‘Add submission’ button, and you should see a text editor where you can put the submission for this assignment</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>4</td>
<td><p>Tick the submission statement, then click Add Media button.</p>
<p>NOW EITHER</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>5</td>
<td>Click Upload new media.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>6</td>
<td>Click browse and select a file in one of the formats listed</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>7</td>
<td><p>It should upload with a green progress bar. <del>Click Next when done.</del> </p>
<p><del>OR</del></p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>8</td>
<td><p><del>Click 'Record webcam' on the next screen. And accept any flash access to camera and mic request.</del></p></td>
<td>N/A</td>
<td>Refers to predecessor of MediaCentral</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>9</td>
<td><p><del>Record a brief video - see that mic level changes.</del></p></td>
<td>N/A</td>
<td>Ditto</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>10</td>
<td><p><del>Click 'Play recording' - should be able to see and hear your recording.</del></p></td>
<td>N/A</td>
<td>Ditto</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>11</td>
<td><p><del>When satisfied, click Next. </del></p>
<p><del>THEN FOR BOTH:</del></p></td>
<td>N/A</td>
<td>Ditto</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>12</td>
<td><del>Enter description and tick statement, then click Next.</del></td>
<td>N/A</td>
<td>Ditto</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>13</td>
<td><del>Pick a thumbnail, click Next.</del></td>
<td>N/A</td>
<td>Ditto</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>14</td>
<td><del>Add no Assoc files and click Next.</del></td>
<td>N/A</td>
<td>Ditto</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>15</td>
<td><p><del>Click Next to confirm your submission.</del></p></td>
<td>N/A</td>
<td>Ditto</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>16</td>
<td><p>Save changes <del>when back in add media area.</del></p></td>
<td>N/A</td>
<td>Ditto</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>17</td>
<td><p><del>Back in assignment summary area, click the View submission link to check the video is fully uploaded (make take some time before processed).</del></p></td>
<td>N/A</td>
<td>Ditto</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
</tbody>
</table>

##### \[ASS006T\]  View and grade a video assignment

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th><p>Date</p>
<p><br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><p>Login as user with 'Tutor' role</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>2</td>
<td>Click on Anonymous Video Assignment (see ASS003T)</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>3</td>
<td>In the submission area, click on the 'View all submissions' button.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>4</td>
<td>You’ll get a list that contains submitted assignment.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>5</td>
<td>Look at the 'Status' column, and click 'Grade'</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>6</td>
<td>A new window loads and you will see a blank PDF area.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>7</td>
<td>To the right, click on the submission link - a pop up should appear and let you play the submitted video.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>8</td>
<td><p>Check sound and video, and any description added by student has come through.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>9</td>
<td><p>Enter the grade for the assignment, put a comment, and upload a feedback file.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>10</td>
<td><p>(If testing group submission, set the 'Apply grades and feedback to entire group' to Yes.)</p></td>
<td>N/A</td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>11</td>
<td>Click the arrow (top right) to move to the next submission.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>12</td>
<td>You should be prompted via pop up to 'Save your grades' before moving to next screen.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="odd">
<td>13</td>
<td><p>Confirm that you want to save grades.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
<tr class="even">
<td>14</td>
<td>Go back to submission inbox and check grades and feedback are showing.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>14-JUN-18</td>
</tr>
</tbody>
</table>

##### \[ASS004T\]  View and grade a file assignment

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th><p>Date</p>
<p><br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><p>Login as user with 'Tutor' role</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>2</td>
<td>Click on Standard Moodle Assignment (see ASS001T)</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>3</td>
<td>In the submission area, click on the 'View all submissions' button.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>4</td>
<td>You’ll get a list that contains one submitted assignment (the one that you have just submitted).</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>5</td>
<td>Look at the 'Status' column, and click 'Grade'</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>6</td>
<td>A new window loads and you will see the file submission as a PDF. Highlight some part of the text, and add a comment.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>7</td>
<td>To the right, enter the grade for the assignment, put a comment, and upload a feedback file.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>8</td>
<td><p>(If testing group submission, set the 'Apply grades and feedback to entire group' to Yes.)</p></td>
<td>N/A</td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>9</td>
<td><p>Click the arrow (top right) to move to the next submission.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>10</td>
<td><p>You should be prompted via pop up to Save your grades before moving to next screen.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>11</td>
<td><p>Confirm that you want to save grades.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>12</td>
<td>Go back to submission inbox and check all grades and feedback are showing as expected.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
</tbody>
</table>

##### \[ASS005T\]  View and grade an online text assignment

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th><p>Date</p>
<p><br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><p>Login as user with 'Tutor' role</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>2</td>
<td>Click on Group Text Moodle Assignment (see ASS002T)</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>3</td>
<td>In the submission area, click on the 'View all submissions' button.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>4</td>
<td>You’ll get a list that contains one submitted assignment (the one that you have just submitted).</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>5</td>
<td>Look at the 'Status' column, and click 'Grade'</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>6</td>
<td>A new window loads and you will see the file submission as a PDF. Highlight some part of the text, and add a comment.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>7</td>
<td>To the right, enter the grade for the assignment, put a comment, and upload a feedback file.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>8</td>
<td><p>(If testing group submission, set the 'Apply grades and feedback to entire group' to Yes.)</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>9</td>
<td>Click the arrow (top right) to move to the next submission.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>10</td>
<td><p>You should be prompted via pop up to Save your grades before moving to next screen.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>11</td>
<td>Confirm that you want to save grades.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>12</td>
<td>Go back to submission inbox and check all grades and feedback are showing as expected.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
</tbody>
</table>

##### \[ASS007T\]  Test Marking workflow

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th><p>Date</p>
<p><br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><p>Having graded the first submission normally, log in as a Tutor, and return to Standard Moodle Assignment.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>2</td>
<td>Edit settings.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>3</td>
<td>Under Grade, change Marking workflow to Yes.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>4</td>
<td>Save.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>5</td>
<td>Follow instructions 2-6 in ASS004T</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>6</td>
<td>Add a grade of 67/100.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>7</td>
<td>Change Marking workflow state to 'In marking'</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>8</td>
<td><p>Click save</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>9</td>
<td><p>Pop up should appear saying 'The changes to the grade and feedback were saved'.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>10</td>
<td><p>Log in as student account - check that grade is not shown in submission area, nor in gradebook.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>11</td>
<td>Log back in as staff account, follow steps 2-6 in ASS004T again to get to grading scene.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>12</td>
<td>Change Marking workflow state to 'Released' and save.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>13</td>
<td>Pop up should appear saying 'The changes to the grade and feedback were saved'.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>14</td>
<td>Log in as student - check that grade IS shown in submission area, and in gradebook.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>15</td>
<td>Grade and Grader should be shown in student submission area view.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
</tbody>
</table>

##### \[ASS004S\]  Check a group submission

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th><p>Date</p>
<p><br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><p>Find a student in the same group as the account used to submit to group assignment.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>2</td>
<td><p>Login as new Student in same group.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>3</td>
<td>Click the assignment Group Text Moodle Assignment (see ASS002T)</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>4</td>
<td>You should be able to view and/or edit the submission made by the other student account as long as the due date has not passed.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>5</td>
<td>Type any text and click ‘Save Changes’</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>6</td>
<td>The page refreshes and takes you back to the submission area, with a preview of your submission text.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
</tbody>
</table>

##### \[ASS005S\]  Check group grade/feedback

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Action</th>
<th><p>Passed?</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th>Issue(s)</th>
<th>Mantis</th>
<th><p>Date</p>
<p><br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><p>Find a student in the same group as the account used to submit to group assignment.</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>2</td>
<td>Login as new Student in same group.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="odd">
<td>3</td>
<td>Click the assignment Group Text Moodle Assignment (see ASS002T)</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
<tr class="even">
<td>4</td>
<td>You should be able to view the grade and any feedback left on the submitted assignment.</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
<td><br />
</td>
<td>15-JUN-18</td>
</tr>
</tbody>
</table>

### Other tests

|                                                                                                            |
|------------------------------------------------------------------------------------------------------------|
| A teacher can provide feedback comments and files for an assignment                                        |
| A teacher can change the order in which assignment submissions are listed                                  |
| A teacher can choose to receive notification of assignment submissions                                     |
| A teacher can choose whether to allow late assignment submissions                                          |
| A teacher can choose whether to require students to accept an assignment submission statement.             |
| A teacher can enable blind marking for an assignment                                                       |
| A teacher can grant an extension to a student for an assignment                                            |
| A teacher can set a cut off date for an assignment                                                         |
| A teacher can set 'Available from' and 'Due date' for an assignment                                        |
| A teacher can set the maximum size of file which students can upload                                       |
| A teacher can set up a group assignment                                                                    |
| An assignment can be graded using rubric                                                                   |
| Changing assignment marking maximums                                                                       |
| In 2.3 Assignments with file uploading enabled the Student can use File Picker to upload files.            |
| In an assignment with file submissions enabled, students can upload a set number of files                  |
| Quick grading enables a teacher to grade multiple assignments on one page                                  |
| Students receive notification when their assignment submission is graded                                   |
| The assignment module informs teachers of the number of assignments submitted to-date for file submissions |
| In an assignment, students can add and edit text online                                                    |
| In an assignment, students can upload files for assessment                                                 |

<table>
<tbody>
<tr class="odd">
<td><p>A teacher can provide feedback comments and files for an assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>ASS005T</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>A teacher can change the order in which assignment submissions are listed</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>A teacher can choose to receive notification of assignment submissions</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>A teacher can choose whether to allow late assignment submissions</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>A teacher can choose whether to require students to accept an assignment submission statement.</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>A teacher can enable blind marking for an assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>A teacher can grant an extension to a student for an assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>A teacher can set a cut off date for an assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>A teacher can set 'Available from' and 'Due date' for an assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>A teacher can set the maximum size of file which students can upload</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>A teacher can set up a group assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>An assignment can be graded using rubric</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Changing assignment marking maximums</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>In 2.3 Assignments with file uploading enabled the Student can use File Picker to upload files.</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>In an assignment with file submissions enabled, students can upload a set number of files</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>ASS001S</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>Quick grading enables a teacher to grade multiple assignments on one page</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Students receive notification when their assignment submission is graded</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>The assignment module informs teachers of the number of assignments submitted to-date for file submissions</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>ASS002TS</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>In an assignment, students can add and edit text online</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>ASS003S</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>In an assignment, students can upload files for assessment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>ASS001S</p></td>
<td><p>MB</p></td>
<td><p>Pass</p></td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2018-6-14\_12-26-32.png](attachments/92506555/93815833.png) (image/png)

