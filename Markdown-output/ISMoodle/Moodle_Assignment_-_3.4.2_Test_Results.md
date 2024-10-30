# Moodle Assignment - 3.4.2 Test Results

This page is linked to from Moodle 3.4 Testing - 1st Pass - April/May.

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Tutor Role Tests</th>
<th>Where tested</th>
<th>Date tested</th>
<th>Tester</th>
<th>OK/Not OK</th>
<th>Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><h5 id="MoodleAssignment3.4.2TestResults-[ASS001T]CreateaStandardMoodleAssignment">[ASS001T]  Create a Standard Moodle Assignment</h5>
<ol>
<li>Login as user with 'Tutor' role</li>
<li>Turn editing on &gt; Add an activity or resource&gt; Assignment </li>
<li>Change due date and cut off date to something reasonable. </li>
<li>Check only file upload is permitted. </li>
<li>Under Grade - Anonymous marking set to No.</li>
<li>Change nothing else and save. </li>
<li>--&gt; Go to ASS001S - do all steps once, and if testing Marking workflow (ASS007T) then do steps 1-4 once again so you have two assignments submitted to this box.</li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2010" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2010</a></td>
<td>3-May-18</td>
<td>KSC</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>2.</td>
<td><h5 id="MoodleAssignment3.4.2TestResults-[ASS001S]SubmitaMoodleFileAssignment">[ASS001S]  Submit a Moodle File Assignment</h5>
<ol>
<li>Login as a ''student'''</li>
<li>Click the Standard Moodle assignment.</li>
<li>Upload a file, watch for the maximum file limit size.</li>
<li>You should get a message saying: ‘'''File uploaded successfully'''’ if it is succeeded, otherwise it shows an error message.</li>
<li>Go back out of the submission area and then go back into it before the due date, </li>
<li>Delete the uploaded file (click on the file itself in upload area, then delete) and submit another document. </li>
<li>File should upload successfully and submission should be updated.</li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2010" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2010</a></td>
<td>3-May-18</td>
<td>KSC</td>
<td>Not quite right - fix required.</td>
<td><p>3. Uploaded 2MB Word file with images - no problem</p>
<p>4. NO message saying &quot;File uploaded successfully&quot; BUT our current Moodle doesn't issue this message either.</p>
<p>6. File appeared to be deleted but WAS NOT in fact deleted. It re-appeared when student came out of the assignment and went back into it. And the tutor could still see it after it was &quot;deleted&quot;. Tried this in current Moodle 3.1 assignment with the same settings and student was able to truly delete their file before the due date.</p>
<p>6 &amp; 7. However, if the student &quot;deleted&quot; their file and then without Saving Changes or anything, dragged and dropped in another file, the second file did replace the first one. This seemed to be the only way to actually get rid of the first file.</p>
<p>Setting set to allow only 1 file to be uploaded and indeed only 1 file could be submitted to the assignment.</p></td>
</tr>
<tr class="odd">
<td>3.</td>
<td><h5 id="MoodleAssignment3.4.2TestResults-[ASS002T]CreateaGroupTextMoodleAssignment">[ASS002T]  Create a Group Text Moodle Assignment</h5>
<ol>
<li>Go into Users &gt; Groups </li>
<li>Auto create groups - 3 groups - CW Grp #</li>
<li>Add into new grouping - CW Submission</li>
<li>Save</li>
<li>Back in the course page, turn editing on &gt; Add an activity or resource&gt; Assignment </li>
<li>Change due date and cut off date to something reasonable. </li>
<li>Check only Online text submission is permitted. </li>
<li>Students submit in groups - set to Yes </li>
<li>Require group to make submission - set to Yes </li>
<li>Require all group members submit - set to No</li>
<li>Group mode Visible groups</li>
<li>Set to use CW Submission grouping</li>
<li>Under Grade - Blind marking marking set to No.</li>
<li>Scroll and save.</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td>JK</td>
<td><br />
</td>
<td><p>If student goes to edit Submission the Cancel button has a white  background hence not clearly visible</p>
<p><br />
</p>
<p>Moodle assignment has white background while other activities have a grey background (when viewing link on course home page). The background is also not in alignment</p></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><h5 id="MoodleAssignment3.4.2TestResults-[ASS003T]CreateanAnonymousVideoAssignment">[ASS003T]  Create an Anonymous Video Assignment</h5>
<ol>
<li>Turn editing on &gt; Add an activity or resource&gt; Assignment </li>
<li>Change due date and cut off date to something reasonable. </li>
<li>Check only Video submission is permitted. </li>
<li><p>Change nothing else and save. </p></li>
<li><p>--&gt; Go to ASS003S - and submit video ( x 2 ) - one recorded from webcam, one upload existing.</p></li>
<li><p>--&gt; Go to ASS006T- and grade video assignment. Then return to path here for anonymity testing:</p></li>
<li>Once you have graded, change dates so that due date and cut off date have passed. </li>
<li>Go to course gradebook and confirm that NO grades are showing for this anonymous assignment. </li>
<li>Return to assignment and 'Reveal identities' in the settings block to the right. </li>
<li>You should get a warning that this cannot be undone. </li>
<li>Click to confirm you want to deanonymise. </li>
<li>Check submission inbox to confirm that names of students have now appeared.</li>
<li>Go to course gradebook and confirm that grades have now appeared for this assignment.</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td>JK</td>
<td><br />
</td>
<td>NOT  ENABLED</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><h5 id="MoodleAssignment3.4.2TestResults-[ASS004T]Viewandgradeafileassignment">[ASS004T]  View and grade a file assignment</h5>
<ol>
<li>Login as user with 'Tutor' role</li>
<li>Click on Standard Moodle Assignment (see ASS001T)</li>
<li>In the submission area, click on the 'View all submissions' button. </li>
<li>You’ll get a list that contains one submitted assignment (the one that you have just submitted).</li>
<li>Look at the 'Status' column, and click 'Grade'</li>
<li>A new window loads and you will see the file submission as a PDF. Highlight some part of the text, and add a comment. </li>
<li>To the right, enter the grade for the assignment, put a comment, and upload a feedback file.</li>
<li>(If testing group submission, set the 'Apply grades and feedback to entire group' to Yes.)</li>
<li>Click the arrow (top right) to move to the next submission.</li>
<li>You should be prompted via pop up to Save your grades before moving to next screen.</li>
<li>Confirm that you want to save grades. </li>
<li>Go back to submission inbox and check all grades and feedback are showing as expected.</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td>JK</td>
<td>OK</td>
<td>OK</td>
</tr>
<tr class="even">
<td><br />
</td>
<td><h5 id="MoodleAssignment3.4.2TestResults-[ASS005T]Viewandgradeanonlinetextassignment">[ASS005T]  View and grade an online text assignment</h5>
<ol>
<li>Login as user with 'Tutor' role</li>
<li>Click on Group Text Moodle Assignment (see ASS002T)</li>
<li>In the submission area, click on the 'View all submissions' button. </li>
<li>You’ll get a list that contains one submitted assignment (the one that you have just submitted).</li>
<li>Look at the 'Status' column, and click 'Grade'</li>
<li>A new window loads and you will see the file submission as a PDF. Highlight some part of the text, and add a comment.</li>
<li>To the right, enter the grade for the assignment, put a comment, and upload a feedback file.</li>
<li>(If testing group submission, set the 'Apply grades and feedback to entire group' to Yes.)</li>
<li>Click the arrow (top right) to move to the next submission.</li>
<li>You should be prompted via pop up to Save your grades before moving to next screen.</li>
<li>Confirm that you want to save grades. </li>
<li>Go back to submission inbox and check all grades and feedback are showing as expected.</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td>JK</td>
<td><br />
</td>
<td><p>Text submitted online did not convert to PDF and appears to the right of the screen. This happens in the 'old' Moodle as well.</p>
<p>Need to investigate i- refer to <a href="https://moodle.org/mod/forum/discuss.php?d=333814" class="uri">https://moodle.org/mod/forum/discuss.php?d=333814</a></p></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><h5 id="MoodleAssignment3.4.2TestResults-ASS006T]Viewandgradeavideoassignment">ASS006T]  View and grade a video assignment</h5>
<ol>
<li>Login as user with 'Tutor' role</li>
<li>Click on Anonymous Video Assignment (see ASS003T)</li>
<li>In the submission area, click on the 'View all submissions' button. </li>
<li>You’ll get a list that contains submitted assignment.</li>
<li>Look at the 'Status' column, and click 'Grade'</li>
<li>A new window loads and you will see a blank PDF area.</li>
<li>To the right, click on the 'view submission' link - a pop up should appear and let you play the submitted video.</li>
<li>Check sound and video, and any description added by student has come through. </li>
<li>Enter the grade for the assignment, put a comment, and upload a feedback file.</li>
<li>(If testing group submission, set the 'Apply grades and feedback to entire group' to Yes.)</li>
<li>Click the arrow (top right) to move to the next submission.</li>
<li>You should be prompted via pop up to 'Save your grades' before moving to next screen.</li>
<li>Confirm that you want to save grades. </li>
<li>Go back to submission inbox and check grades and feedback are showing.</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Video assignment not enabled on current version and should not be on the 'new Moodle'</td>
</tr>
<tr class="even">
<td><br />
</td>
<td><h5 id="MoodleAssignment3.4.2TestResults-[ASS007T]TestMarkingworkflow">[ASS007T]  Test Marking workflow</h5>
<ol>
<li>Having graded the first submission normally, log in as a Tutor, and return to Standard Moodle Assignment.</li>
<li>Edit settings. </li>
<li>Under Grade, change Marking workflow to Yes.</li>
<li>Save.</li>
<li>Follow instructions 2-6 in ASS004T</li>
<li>Add a grade of 67/100.</li>
<li>Change Marking workflow state to 'In marking'</li>
<li>Click save</li>
<li>Pop up should appear saying 'The changes to the grade and feedback were saved'.</li>
<li>Log in as student account - check that grade is not shown in submission area, nor in gradebook.</li>
<li>Log back in as staff account, follow steps 2-6 in ASS004T again to get to grading scene.</li>
<li>Change Marking workflow state to 'Released' and save.</li>
<li>Pop up should appear saying 'The changes to the grade and feedback were saved'.</li>
<li>Log in as student - check that grade IS shown in submission area, and in gradebook.</li>
<li>Grade and Grader should be shown in student submission area view.</li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2014" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2014</a></td>
<td>10-May-18</td>
<td>JK &amp; KSC</td>
<td><p>Mostly OK except that...</p>
<p><br />
</p></td>
<td>It does NOT convert Word files to PDFs so it's not possible to use Moodle Assignment's annotation tools to mark the submission. If students submit PDFs then the Moodle Assignment opens the submission thereby facilitating use of the annotation tools.</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><h5 id="MoodleAssignment3.4.2TestResults-[ASS002S]SubmitaMoodleAssignment(onlinetext)">[ASS002S]  Submit a Moodle Assignment (online text)</h5>
<ol>
<li>Login as a Student account. </li>
<li>Click the assignment Group Text Moodle Assignment (see ASS002T)</li>
<li>Click the ‘Add submission’ button, and you should see a text editor where you can put the submission for this assignment</li>
<li>Tick the submission statement above the text editor. </li>
<li>Type any text and click ‘Save Changes’</li>
<li>The page refreshes and takes you back to the submission area, with a preview of your submission text.</li>
<li>Click to 'Edit my submission’ while the due date for the assignment has not passed yet. </li>
<li>Save and see if changes have been recorded.</li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/mod/assign/view.php?id=5588" class="uri">https://v34.moodle-01-u.ucl.ac.uk/mod/assign/view.php?id=5588</a></td>
<td>11-May-18</td>
<td>KSC</td>
<td>NOT OK</td>
<td>Text submitted online did not convert to PDF and so could not be marked using Moodle Assignment's annotation tools.</td>
</tr>
<tr class="even">
<td><br />
</td>
<td><h5 id="MoodleAssignment3.4.2TestResults-[ASS004S]Checkagroupsubmission">[ASS004S]  Check a group submission</h5>
<ol>
<li>Find a student in the same group as the account used to submit to group assignment. </li>
<li>Login as new Student in same group. </li>
<li>Click the assignment Group Text Moodle Assignment (see ASS002T)</li>
<li>You should be able to view and/or edit the submission made by the other student account as long as the due date has not passed. </li>
<li>Type any text and click ‘Save Changes’</li>
<li>The page refreshes and takes you back to the submission area, with a preview of your submission text.</li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/mod/assign/view.php?id=5588" class="uri">https://v34.moodle-01-u.ucl.ac.uk/mod/assign/view.php?id=5588</a></td>
<td>11-May-18</td>
<td>KSC</td>
<td>OK</td>
<td>OK</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><h5 id="MoodleAssignment3.4.2TestResults-[ASS005S]Checkgroupgrade/feedback">[ASS005S]  Check group grade/feedback</h5>
<ol>
<li>Find a student in the same group as the account used to submit to group assignment.</li>
<li>Login as new Student in same group. </li>
<li>Click the assignment Group Text Moodle Assignment (see ASS002T)</li>
<li>You should be able to view the grade and any feedback left on the submitted assignment.</li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/mod/assign/view.php?id=5588" class="uri">https://v34.moodle-01-u.ucl.ac.uk/mod/assign/view.php?id=5588</a></td>
<td>11-May-18</td>
<td>KSC</td>
<td>OK</td>
<td>OK</td>
</tr>
</tbody>
</table>


