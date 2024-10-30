# H5P performance

### Jira stories

CTP-1279 - Investigate slow loading when saving course Done

CTP-1280 - Investigate and Fix H5P content types not loading In Testing

CTP-1248 - Investigate H5P activities in Moodle have become very slow to return to display after editing RF 05368484 Done

CTP-1280 - Investigate and Fix H5P content types not loading In Testing

### Current issues

Issue 1

-   When saving a created H5P activity in a course, the saving process takes minutes to completes instead of seconds.  This issues only happens on moodle prod, staging and preview instances.  A local clean moodle does not have this issue.  Been logged to catalyst <https://wrms.catalyst.net.nz/wr.php?request_id=387905> 

Issues 2

-   When switching between the different activities in the H5P hub.  When viewing a 2nd selected activity, it does not load and just displays 'loading.  please wait'.  The github issue logged, what mentioned in workaround only works on a local clean moodle install, does not work with prod, staging or preview <https://github.com/h5p/moodle-mod_hvp/issues/462>

### Investigation

-   When selecting any content type for the 1st time, the content is displayed fine.  When switching to a different content type and then back to the original content type, the content does not display.  This is only affecting certain content types, the following always display their content regardless of how many times switching.
    -   appear.in for Chat and Talk
    -   Accordion
    -   Audio
    -   Audio Recorder
    -   Column
    -   Cornell Notes
    -   Find The Words
    -   Guess the Answer
    -   Iframe Embedder
    -   Speak the Words
    -   Timeline
    -   Twitter
-   Core moodle running on a local docker doesnt have any issues with saving
-   Not being affected by CloudFlare as issues is happening on https://311-release.preview-moodle.ucl.ac.uk/
-   Updating the content libraries has not impact
-   I have change code back to commit https://github.com/h5p/moodle-mod\_hvp/commit/4efcbbbf003b0d0527983bfd5e296a51acfc74b4 and still issues persists

### Fix

Issue 1

No fix so far

Issue 2

issues has been indentified and community implemeneted a fix but code wont be released until H5P update the plugin

https://github.com/h5p/moodle-mod\_hvp/issues/462

https://github.com/h5p/h5p-editor-php-library/pull/144\#issuecomment-1185192487

### Testing

<table>
<thead>
<tr class="header">
<th><br />
</th>
<th><br />
</th>
<th><br />
</th>
<th>prod, staging and preview</th>
<th>local core moodle</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Scenario</td>
<td>Steps</td>
<td>Expected Behavior</td>
<td>Pass/Fail</td>
<td>Pass/Fail</td>
</tr>
<tr class="even">
<td>create and save a H5P activity</td>
<td><ol>
<li>log into moodle &gt; navigate to a course</li>
<li>turn editing on &gt; add an H5P activity</li>
<li>choose 'interactive video' content type &gt; fill in the activity</li>
<li>click save and display</li>
</ol></td>
<td>the activity is displayed within a few seconds</td>
<td><p>fail - the saving takes over 3 minutes to complete</p>
<p><a href="attachments/218006391/218006703.har">moodle.ucl.ac.uk_Archive [22-08-04 13-14-42].har</a></p>
<p>not all content type take minutes to save.  see above investigation for list of content type that save in few seconds</p></td>
<td>pass - all content type are saved within a few seconds</td>
</tr>
<tr class="odd">
<td>switch between different content in the H5P hub</td>
<td><ol>
<li>log into moodle &gt; navigate to a course</li>
<li>turn editing on &gt; add an H5P activity</li>
<li>choose 'interactive video' content type</li>
<li>choose 'twitter' content type</li>
<li>chose 'interactive video' content type</li>
</ol></td>
<td>the 'interactive video' content type is displayed when choosing the 2nd time</td>
<td><p>fail - the content does not show, just stuck on message 'loading.  please wait'.</p>
<p><a href="attachments/218006391/218006706.png">Screenshot 2022-08-04 at 13.54.01.png</a></p></td>
<td>fail.  same as moodle.ucl.ac.uk</td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [moodle.ucl.ac.uk\_Archive \[22-08-04 13-14-42\].har](attachments/218006391/218006703.har) (application/octet-stream)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Screenshot 2022-08-04 at 13.54.01.png](attachments/218006391/218006706.png) (image/png)

