# CLC rollover queue monitoring

<https://moodle.ucl.ac.uk/admin/tasklogs.php?filter=local_courserollover%5Ctask%5Cadhoctask&result=-1>

<https://moodle.ucl.ac.uk/report/courserollover/>

-   [Issues Overview](#CLCrolloverqueuemonitoring-IssuesOverview)
-   [Failures Overview](#CLCrolloverqueuemonitoring-FailuresOverview)
-   [Failures log details](#CLCrolloverqueuemonitoring-Failureslogdetails)

## Issues Overview

<table>
<thead>
<tr class="header">
<th>Jira Issue</th>
<th>Occured</th>
<th>Status</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td>12</td>
<td><p>Let's see whether these are still occurring after tonight's 16/06 release, maybe cron containers weren't updated during the hotfix.</p>
<p>Finally fixed on 16/06 - all affected rollovers now re-processed.</p></td>
</tr>
<tr class="even">
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><p>50</p></td>
<td><div class="content-wrapper" title="">
<p>CTP-1189 - FIX rollover errors writing to MIM database Done</p>
<p>Going to drag this into this sprint - too many rollovers impacted. CTP-1156 really was prematurely marked as done.</p>
</div></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>CTP-1157 - rollover error - file pools In Analysis</p>
</div></td>
<td>4</td>
<td>being investigated</td>
</tr>
<tr class="even">
<td><div class="content-wrapper" title="">
<p>CTP-1134 - Rollover failure 'couldn't move old course to category' Done</p>
</div></td>
<td>7</td>
<td><p>Fixed by 16/06 release - all affected rollovers now re-processed.</p></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Failures Overview

<table>
<thead>
<tr class="header">
<th>Failed rollover id</th>
<th>Jira issue</th>
<th>Status - fix deployed in prod</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>#255</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#248</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#247</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#242</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#239</td>
<td><div class="content-wrapper" title="">
<p>?</p>
</div></td>
<td>The course end date must be after the start date.</td>
</tr>
<tr class="even">
<td>#236</td>
<td><div class="content-wrapper" title="">
<p>?</p>
</div></td>
<td>Cannot create file 2747559/backup/course/0/rollover-backup-17-06-2022.mbz</td>
</tr>
<tr class="odd">
<td>#223</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#220</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#219</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td>re-requested by AS on 22/06 &amp; completed successfully</td>
</tr>
<tr class="even">
<td>#218</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td>re-requested by AuS on 22/06 &amp; completed successfully- forwarded onto user</td>
</tr>
<tr class="odd">
<td>#217</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td>re-requested by AuS on 22/06 &amp; completed successfully- forwarded onto user</td>
</tr>
<tr class="even">
<td>#212</td>
<td>?</td>
<td>Short name is already used for another course (GEOG0015_22-23 Global Events)</td>
</tr>
<tr class="odd">
<td>#199</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#195</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#194</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#190</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#187</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#180</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#176</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#172</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#165</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#150</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#149</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td>re-requested by user on 16/06 completed successfully</td>
</tr>
<tr class="even">
<td>#148</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#147</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td>re-scheduled &amp; completed successfully 16/06 - forwarded onto user</td>
</tr>
<tr class="even">
<td>#146</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td>fixed. Advice sent to user as 2 versions of the course UG &amp; PG with course short name &amp; portico identifier name clash</td>
</tr>
<tr class="odd">
<td>#144</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td>re-scheduled &amp; completed successfully 16/06 - forwarded onto user</td>
</tr>
<tr class="even">
<td>#143</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td>re-scheduled &amp; completed successfully 16/06 - forwarded onto user</td>
</tr>
<tr class="odd">
<td>#142</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td>re-requested by AuS &amp; completed successfully 17/06 - forwarded onto user</td>
</tr>
<tr class="even">
<td>#141</td>
<td><div class="content-wrapper" title="">
<p>CTP-1157 - rollover error - file pools In Analysis</p>
</div></td>
<td>re-requested by AuS &amp; completed successfully 17/06 - forwarded onto user</td>
</tr>
<tr class="odd">
<td>#138</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#136</td>
<td><div class="content-wrapper" title="">
<p>CTP-1157 - rollover error - file pools In Analysis</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#133</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td>re-requested by user on 16/06 completed successfully</td>
</tr>
<tr class="even">
<td>#129</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td>Writing to DB <img src="images/icons/emoticons/sad.svg" alt="(sad)" class="emoticon emoticon-sad" /></td>
</tr>
<tr class="odd">
<td>#124</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td>writing to db <img src="images/icons/emoticons/sad.svg" alt="(sad)" class="emoticon emoticon-sad" /></td>
</tr>
<tr class="even">
<td>#110</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td>re-requested by user on 16/06 completed successfully</td>
</tr>
<tr class="odd">
<td>#106</td>
<td><div class="content-wrapper" title="">
<p>CTP-1134 - Rollover failure 'couldn't move old course to category' Done</p>
</div></td>
<td><p>re-scheduled</p>
<p><a href="https://moodle.ucl.ac.uk/local/courserollover/index.php?id=22974" class="uri">https://moodle.ucl.ac.uk/local/courserollover/index.php?id=22974</a></p></td>
</tr>
<tr class="even">
<td>#104</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td>re-requested by user on 16/06 completed successfully</td>
</tr>
<tr class="odd">
<td>#103</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td>re-scheduled &amp; completed successfully 16/06 - forwarded onto user</td>
</tr>
<tr class="even">
<td>#97</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#91</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td>re-requested by user on 16/06 completed successfully</td>
</tr>
<tr class="even">
<td>#87</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#86</td>
<td><div class="content-wrapper" title="">
<p>CTP-1134 - Rollover failure 'couldn't move old course to category' Done</p>
</div></td>
<td><p>Error: Could not move old course to category: error/Invalid Idnumber Format:</p>
<p>re-scheduled &amp; completed successfully 16/06 - forwarded onto user</p></td>
</tr>
<tr class="even">
<td>#85</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td>re-requested by AuS on 14/06 &amp; completed successfully</td>
</tr>
<tr class="odd">
<td>#82</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td>re-requested by AuS on 14/06 &amp; completed successfully</td>
</tr>
<tr class="even">
<td>#81</td>
<td><div class="content-wrapper" title="">
<p>CTP-1157 - rollover error - file pools In Analysis</p>
</div></td>
<td>re-requested by AuS on 14/06 &amp; completed successfully</td>
</tr>
<tr class="odd">
<td>#80</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td>re-scheduled &amp; completed successfully 16/06 - forwarded onto user</td>
</tr>
<tr class="even">
<td>#78</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#64</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#62</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#61</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#59</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#58</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#57</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#56</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#55</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#54</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#53</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#52</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#51</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#50</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#49</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#45</td>
<td><div class="content-wrapper" title="">
<p>CTP-1134 - Rollover failure 'couldn't move old course to category' Done</p>
</div></td>
<td><p>Error: Could not move old course to category: error/Invalid Idnumber Format:</p>
<p>re-requested by AuS on 7/06 &amp; completed successfully</p></td>
</tr>
<tr class="even">
<td>#44</td>
<td><div class="content-wrapper" title="">
<p>CTP-1134 - Rollover failure 'couldn't move old course to category' Done</p>
</div></td>
<td><p>Fix to be included in 16/06/22 release</p>
<p>re-requested by AuS on 7/06 &amp; completed successfully</p></td>
</tr>
<tr class="odd">
<td>#43</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#36</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td><p>Should have been fixed. Weird re-occurence.</p>
<p>Did cron containers not get re-deployed? No</p>
<p>re-requested by AuS on 7/06 &amp; completed successfully</p></td>
</tr>
<tr class="odd">
<td>#25</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#21</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#20</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#17</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td>re-requested by AuS on 13/06 &amp; completed successfully</td>
</tr>
<tr class="odd">
<td>#16</td>
<td><div class="content-wrapper" title="">
<p>CTP-1157 - rollover error - file pools In Analysis</p>
</div></td>
<td>re-requested by AuS on 13/06 &amp; completed successfully</td>
</tr>
<tr class="even">
<td>#11</td>
<td><div class="content-wrapper" title="">
<p>CTP-1134 - Rollover failure 'couldn't move old course to category' Done</p>
</div></td>
<td><p>Fix to be included in 16/06/22 release</p>
<p>AuS test course. </p></td>
</tr>
<tr class="odd">
<td>#9</td>
<td><div class="content-wrapper" title="">
<p>CTP-1156 - Review rollover errors writing to MIM database Done</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>#7</td>
<td><div class="content-wrapper" title="">
<p>CTP-1125 - Resolve turnitin rollover issue Done</p>
</div></td>
<td><p>Fixed - 06/06/22 </p>
<p>re-requested by user with alternative end date &amp; completed successfully</p></td>
</tr>
<tr class="odd">
<td>#4</td>
<td><div class="content-wrapper" title="">
<p>CTP-1134 - Rollover failure 'couldn't move old course to category' Done</p>
</div></td>
<td>Fix to be included in 16/06/22 release</td>
</tr>
<tr class="even">
<td>#2</td>
<td><div class="content-wrapper" title="">
<p>CTP-1134 - Rollover failure 'couldn't move old course to category' Done</p>
</div></td>
<td>Fix to be included in 16/06/22 release</td>
</tr>
</tbody>
</table>

## Failures log details

``` java
Current tasklog reviewed up to & including: #255


https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275953290
fdfe1c1365e3:24092 Processing rollover request [#239]
fdfe1c1365e3:24092 [#239] Status => Processing
fdfe1c1365e3:24092 [#239] Loaded course [2749] GEOG0063: Overseas Field Course: Gibraltar (21/22) (GEOG0063 Gibraltar)
fdfe1c1365e3:24092 [#239] Step 1. Backing up the current course
fdfe1c1365e3:24092 [#239] Step 1 complete: rollover-backup-17-06-2022.mbz
fdfe1c1365e3:24092 [#239] Step 2. Creating a new blank course
fdfe1c1365e3:24092 [#239] Status => Failed
fdfe1c1365e3:24092 [#239] Error: The course end date must be after the start date.
fdfe1c1365e3:24092 [#239] Reverting rollover

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275958262
b4f498ff98f4:5175 Processing rollover request [#236]
b4f498ff98f4:5175 [#236] Status => Processing
b4f498ff98f4:5175 [#236] Loaded course [19717] Chemistry Pre-University Revision (21/22) (CHEM_Revision_21-22)
b4f498ff98f4:5175 [#236] Step 1. Backing up the current course
b4f498ff98f4:5175 [#236] Status => Failed
b4f498ff98f4:5175 [#236] Error: Cannot create file 2747559/backup/course/0/rollover-backup-17-06-2022.mbz
b4f498ff98f4:5175 [#236] Reverting rollover





https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275500983
6c504e5f9afb:4741 Processing rollover request [#149]
6c504e5f9afb:4741 [#149] Status => Processing
6c504e5f9afb:4741 [#149] Loaded course [22323] MPharm 2021 PHAY0010: Communicating Science and Practice (PHAY0010_21-22)
6c504e5f9afb:4741 [#149] Step 1. Backing up the current course
6c504e5f9afb:4741 [#149] Step 1 complete: rollover-backup-15-06-2022.mbz
6c504e5f9afb:4741 [#149] Step 2. Creating a new blank course
6c504e5f9afb:4741 [#149] Step 2 complete: 26330
6c504e5f9afb:4741 [#149] Step 3. Restoring the backup into the new blank course
6c504e5f9afb:4741 [#149] Status => Failed
6c504e5f9afb:4741 [#149] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
6c504e5f9afb:4741 
6c504e5f9afb:4741 [#149] Reverting rollover
6c504e5f9afb:4741 [#149] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275482428
145ab30f313f:31917 Processing rollover request [#147]
145ab30f313f:31917 [#147] Status => Processing
145ab30f313f:31917 [#147] Loaded course [212] ANTH0029_PG: The Anthropology of Nationalism, Ethnicity and Race (21/22) (ANTH0029_PG_21-22)
145ab30f313f:31917 [#147] Step 1. Backing up the current course
145ab30f313f:31917 [#147] Step 1 complete: rollover-backup-15-06-2022.mbz
145ab30f313f:31917 [#147] Step 2. Creating a new blank course
145ab30f313f:31917 [#147] Step 2 complete: 26328
145ab30f313f:31917 [#147] Step 3. Restoring the backup into the new blank course
145ab30f313f:31917 [#147] Status => Failed
145ab30f313f:31917 [#147] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
145ab30f313f:31917 
145ab30f313f:31917 [#147] Reverting rollover
145ab30f313f:31917 [#147] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275480769
c4e58b9b97d7:1632 Processing rollover request [#146]
c4e58b9b97d7:1632 [#146] Status => Processing
c4e58b9b97d7:1632 [#146] Loaded course [115] ANTH0029_UG: The Anthropology of Nationalism, Ethnicity and Race (21/22) (ANTH0029_UG_21-22)
c4e58b9b97d7:1632 [#146] Step 1. Backing up the current course
c4e58b9b97d7:1632 [#146] Step 1 complete: rollover-backup-15-06-2022.mbz
c4e58b9b97d7:1632 [#146] Step 2. Creating a new blank course
c4e58b9b97d7:1632 [#146] Step 2 complete: 26327
c4e58b9b97d7:1632 [#146] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:1632 [#146] Status => Failed
c4e58b9b97d7:1632 [#146] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
c4e58b9b97d7:1632 
c4e58b9b97d7:1632 [#146] Reverting rollover
c4e58b9b97d7:1632 [#146] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275466596
c4e58b9b97d7:6882 Processing rollover request [#144]
c4e58b9b97d7:6882 [#144] Status => Processing
c4e58b9b97d7:6882 [#144] Loaded course [185] ANTH0102: Ecology of Human Groups (21/22) (ANTH0102_21-22)
c4e58b9b97d7:6882 [#144] Step 1. Backing up the current course
c4e58b9b97d7:6882 [#144] Step 1 complete: rollover-backup-15-06-2022.mbz
c4e58b9b97d7:6882 [#144] Step 2. Creating a new blank course
c4e58b9b97d7:6882 [#144] Step 2 complete: 26322
c4e58b9b97d7:6882 [#144] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:6882 [#144] Status => Failed
c4e58b9b97d7:6882 [#144] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
c4e58b9b97d7:6882 
c4e58b9b97d7:6882 [#144] Reverting rollover
c4e58b9b97d7:6882 [#144] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275455031
145ab30f313f:20826 Processing rollover request [#143]
145ab30f313f:20826 [#143] Status => Processing
145ab30f313f:20826 [#143] Loaded course [188] ANTH0105: Resource Use and Impacts (21/22) (ANTH0105_21-22)
145ab30f313f:20826 [#143] Step 1. Backing up the current course
145ab30f313f:20826 [#143] Step 1 complete: rollover-backup-15-06-2022.mbz
145ab30f313f:20826 [#143] Step 2. Creating a new blank course
145ab30f313f:20826 [#143] Step 2 complete: 26320
145ab30f313f:20826 [#143] Step 3. Restoring the backup into the new blank course
145ab30f313f:20826 [#143] Status => Failed
145ab30f313f:20826 [#143] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
145ab30f313f:20826 
145ab30f313f:20826 [#143] Reverting rollover
145ab30f313f:20826 [#143] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275458545
145ab30f313f:10808 Processing rollover request [#142]
145ab30f313f:10808 [#142] Status => Processing
145ab30f313f:10808 [#142] Loaded course [1236] CHEM0013: Basic Inorganic Chemistry (21/22) (CHEM0013-BasicInorganic)
145ab30f313f:10808 [#142] Step 1. Backing up the current course
145ab30f313f:10808 [#142] Step 1 complete: rollover-backup-15-06-2022.mbz
145ab30f313f:10808 [#142] Step 2. Creating a new blank course
145ab30f313f:10808 [#142] Step 2 complete: 26319
145ab30f313f:10808 [#142] Step 3. Restoring the backup into the new blank course
145ab30f313f:10808 [#142] Step 3 complete
145ab30f313f:10808 [#142] Step 4. Resetting user data on the restored course
145ab30f313f:10808 [#142] Step 4 complete
145ab30f313f:10808 [#142] Step 5. Removing unwanted enrolments
145ab30f313f:10808 [#142] Unenrolled 299 users from restored course
145ab30f313f:10808 [#142] Step 5 complete
145ab30f313f:10808 [#142] Step 6. Applying portico mappings and updates to new course
145ab30f313f:10808 [#142] Status => Failed
145ab30f313f:10808 [#142] Error: Error writing to database
145ab30f313f:10808 [#142] Reverting rollover
145ab30f313f:10808 [#142] Deleting newly created course


https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275446030
Processing rollover request [#141]
45d1516c3327:26221 [#141] Status => Processing
45d1516c3327:26221 [#141] Loaded course [1236] CHEM0013: Basic Inorganic Chemistry (21/22) (CHEM0013-BasicInorganic)
45d1516c3327:26221 [#141] Step 1. Backing up the current course
45d1516c3327:26221 [#141] Step 1 complete: rollover-backup-15-06-2022.mbz
45d1516c3327:26221 [#141] Step 2. Creating a new blank course
45d1516c3327:26221 [#141] Step 2 complete: 26317
45d1516c3327:26221 [#141] Step 3. Restoring the backup into the new blank course
45d1516c3327:26221 [#141] Status => Failed
45d1516c3327:26221 [#141] Error: Cannot create local file pool directories. Please verify permissions in dataroot.
45d1516c3327:26221 [#141] Reverting rollover
45d1516c3327:26221 [#141] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275197303
145ab30f313f:28929 Processing rollover request [#138]
145ab30f313f:28929 [#138] Status => Processing
145ab30f313f:28929 [#138] Loaded course [22517] MSc 2021 Clinical Pharmacy, International Practice and Policy: PHAY0024/0025/0026/0027/0053 (CPIPP_21-22)
145ab30f313f:28929 [#138] Step 1. Backing up the current course
145ab30f313f:28929 [#138] Step 1 complete: rollover-backup-14-06-2022.mbz
145ab30f313f:28929 [#138] Step 2. Creating a new blank course
145ab30f313f:28929 [#138] Step 2 complete: 26309
145ab30f313f:28929 [#138] Step 3. Restoring the backup into the new blank course
145ab30f313f:28929 [#138] Step 3 complete
145ab30f313f:28929 [#138] Step 4. Resetting user data on the restored course
145ab30f313f:28929 [#138] Step 4 complete
145ab30f313f:28929 [#138] Step 5. Removing unwanted enrolments
145ab30f313f:28929 [#138] Unenrolled 1 users from restored course
145ab30f313f:28929 [#138] Step 5 complete
145ab30f313f:28929 [#138] Step 6. Applying portico mappings and updates to new course
145ab30f313f:28929 [#138] Status => Failed
145ab30f313f:28929 [#138] Error: Error writing to database
145ab30f313f:28929 [#138] Reverting rollover
145ab30f313f:28929 [#138] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275190850
45d1516c3327:30190 Processing rollover request [#136]
45d1516c3327:30190 [#136] Status => Processing
45d1516c3327:30190 [#136] Loaded course [25005] MSc 2021 PHAY0056: Research Project for MSc Pharmaceutics (PHAY0056_21-22)
45d1516c3327:30190 [#136] Step 1. Backing up the current course
45d1516c3327:30190 [#136] Step 1 complete: rollover-backup-14-06-2022.mbz
45d1516c3327:30190 [#136] Step 2. Creating a new blank course
45d1516c3327:30190 [#136] Step 2 complete: 26307
45d1516c3327:30190 [#136] Step 3. Restoring the backup into the new blank course
45d1516c3327:30190 [#136] Status => Failed
45d1516c3327:30190 [#136] Error: Cannot create local file pool directories. Please verify permissions in dataroot.
45d1516c3327:30190 [#136] Reverting rollover
45d1516c3327:30190 [#136] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275195127
45d1516c3327:7410 Processing rollover request [#133]
45d1516c3327:7410 [#133] Status => Processing
45d1516c3327:7410 [#133] Loaded course [22323] MPharm 2021 PHAY0010: Communicating Science and Practice (PHAY0010_21-22)
45d1516c3327:7410 [#133] Step 1. Backing up the current course
45d1516c3327:7410 [#133] Step 1 complete: rollover-backup-14-06-2022.mbz
45d1516c3327:7410 [#133] Step 2. Creating a new blank course
45d1516c3327:7410 [#133] Step 2 complete: 26305
45d1516c3327:7410 [#133] Step 3. Restoring the backup into the new blank course
45d1516c3327:7410 [#133] Status => Failed
45d1516c3327:7410 [#133] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
45d1516c3327:7410 
45d1516c3327:7410 [#133] Reverting rollover
45d1516c3327:7410 [#133] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275190566
45d1516c3327:30463 Processing rollover request [#129]
45d1516c3327:30463 [#129] Status => Processing
45d1516c3327:30463 [#129] Loaded course [25001] MSc 2021 PHAY0037: Nanomedicines (PHAY0037_21-22)
45d1516c3327:30463 [#129] Step 1. Backing up the current course
45d1516c3327:30463 [#129] Step 1 complete: rollover-backup-14-06-2022.mbz
45d1516c3327:30463 [#129] Step 2. Creating a new blank course
45d1516c3327:30463 [#129] Step 2 complete: 26301
45d1516c3327:30463 [#129] Step 3. Restoring the backup into the new blank course
45d1516c3327:30463 [#129] Step 3 complete
45d1516c3327:30463 [#129] Step 4. Resetting user data on the restored course
45d1516c3327:30463 [#129] Step 4 complete
45d1516c3327:30463 [#129] Step 5. Removing unwanted enrolments
45d1516c3327:30463 [#129] Unenrolled 2 users from restored course
45d1516c3327:30463 [#129] Step 5 complete
45d1516c3327:30463 [#129] Step 6. Applying portico mappings and updates to new course
45d1516c3327:30463 [#129] Status => Failed
45d1516c3327:30463 [#129] Error: Error writing to database
45d1516c3327:30463 [#129] Reverting rollover
45d1516c3327:30463 [#129] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275186705
6c504e5f9afb:24251 Processing rollover request [#124]
6c504e5f9afb:24251 [#124] Status => Processing
6c504e5f9afb:24251 [#124] Loaded course [24989] MSc 2021 Advanced Pharmacy Practice: PHAY0046/0047/0048/0049/0052 (APP-MSc_21-22)
6c504e5f9afb:24251 [#124] Step 1. Backing up the current course
6c504e5f9afb:24251 [#124] Step 1 complete: rollover-backup-14-06-2022.mbz
6c504e5f9afb:24251 [#124] Step 2. Creating a new blank course
6c504e5f9afb:24251 [#124] Step 2 complete: 26295
6c504e5f9afb:24251 [#124] Step 3. Restoring the backup into the new blank course
6c504e5f9afb:24251 [#124] Step 3 complete
6c504e5f9afb:24251 [#124] Step 4. Resetting user data on the restored course
6c504e5f9afb:24251 [#124] Step 4 complete
6c504e5f9afb:24251 [#124] Step 5. Removing unwanted enrolments
6c504e5f9afb:24251 [#124] Unenrolled 24 users from restored course
6c504e5f9afb:24251 [#124] Step 5 complete
6c504e5f9afb:24251 [#124] Step 6. Applying portico mappings and updates to new course
6c504e5f9afb:24251 [#124] Status => Failed
6c504e5f9afb:24251 [#124] Error: Error writing to database
6c504e5f9afb:24251 [#124] Reverting rollover
6c504e5f9afb:24251 [#124] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275146872
6c504e5f9afb:3617 Processing rollover request [#110]
6c504e5f9afb:3617 [#110] Status => Processing
6c504e5f9afb:3617 [#110] Loaded course [22323] MPharm 2021 PHAY0010: Communicating Science and Practice (PHAY0010_21-22)
6c504e5f9afb:3617 [#110] Step 1. Backing up the current course
6c504e5f9afb:3617 [#110] Step 1 complete: rollover-backup-14-06-2022.mbz
6c504e5f9afb:3617 [#110] Step 2. Creating a new blank course
6c504e5f9afb:3617 [#110] Step 2 complete: 26282
6c504e5f9afb:3617 [#110] Step 3. Restoring the backup into the new blank course
6c504e5f9afb:3617 [#110] Status => Failed
6c504e5f9afb:3617 [#110] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
6c504e5f9afb:3617 
6c504e5f9afb:3617 [#110] Reverting rollover
6c504e5f9afb:3617 [#110] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275132867
c4e58b9b97d7:22201 Processing rollover request [#106]
c4e58b9b97d7:22201 [#106] Status => Processing
c4e58b9b97d7:22201 [#106] Loaded course [22974] MSc 2020-21 Experimental Pharmacology and Therapeutics: PHAY0051 Research Project (PHAY0051_20-21)
c4e58b9b97d7:22201 [#106] Step 1. Backing up the current course
c4e58b9b97d7:22201 [#106] Step 1 complete: rollover-backup-14-06-2022.mbz
c4e58b9b97d7:22201 [#106] Step 2. Creating a new blank course
c4e58b9b97d7:22201 [#106] Step 2 complete: 26277
c4e58b9b97d7:22201 [#106] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:22201 [#106] Step 3 complete
c4e58b9b97d7:22201 [#106] Step 4. Resetting user data on the restored course
c4e58b9b97d7:22201 [#106] Step 4 complete
c4e58b9b97d7:22201 [#106] Step 5. Removing unwanted enrolments
c4e58b9b97d7:22201 [#106] Unenrolled 1 users from restored course
c4e58b9b97d7:22201 [#106] Step 5 complete
c4e58b9b97d7:22201 [#106] Step 6. Applying portico mappings and updates to new course
c4e58b9b97d7:22201 [#106] Mapped MODOCC-B5F013AD09DF27BAE053211E1C0A80F8 to MSc 2022-23 Experimental Pharmacology and Therapeutics: PHAY0051 Research Project
c4e58b9b97d7:22201 [#106] Step 6 complete
c4e58b9b97d7:22201 [#106] Step 7. Move old course to equivalent category
c4e58b9b97d7:22201 [#106] Status => Failed
c4e58b9b97d7:22201 [#106] Error: Could not move old course to category: Can't find data record in database table course_categories.
c4e58b9b97d7:22201 [#106] Reverting rollover
c4e58b9b97d7:22201 [#106] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275132002
45d1516c3327:11482 Processing rollover request [#105]
45d1516c3327:11482 [#105] Status => Processing
45d1516c3327:11482 [#105] Loaded course [17051] MSc 2020-21 Experimental Pharmacology and Therapeutics: PHAY0041 Translational Neuroscience (PHAY0041_20-21)
45d1516c3327:11482 [#105] Step 1. Backing up the current course
45d1516c3327:11482 [#105] Step 1 complete: rollover-backup-14-06-2022.mbz
45d1516c3327:11482 [#105] Step 2. Creating a new blank course
45d1516c3327:11482 [#105] Step 2 complete: 26275
45d1516c3327:11482 [#105] Step 3. Restoring the backup into the new blank course
45d1516c3327:11482 [#105] Status => Failed
45d1516c3327:11482 [#105] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
45d1516c3327:11482 
45d1516c3327:11482 [#105] Reverting rollover
45d1516c3327:11482 [#105] Deleting newly created course


https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275137859
45d1516c3327:24590 Processing rollover request [#104]
45d1516c3327:24590 [#104] Status => Processing
45d1516c3327:24590 [#104] Loaded course [22323] MPharm 2021 PHAY0010: Communicating Science and Practice (PHAY0010_21-22)
45d1516c3327:24590 [#104] Step 1. Backing up the current course
45d1516c3327:24590 [#104] Step 1 complete: rollover-backup-14-06-2022.mbz
45d1516c3327:24590 [#104] Step 2. Creating a new blank course
45d1516c3327:24590 [#104] Step 2 complete: 26278
45d1516c3327:24590 [#104] Step 3. Restoring the backup into the new blank course
45d1516c3327:24590 [#104] Status => Failed
45d1516c3327:24590 [#104] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
45d1516c3327:24590 
45d1516c3327:24590 [#104] Reverting rollover
45d1516c3327:24590 [#104] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275132868
145ab30f313f:25843 Processing rollover request [#103]
145ab30f313f:25843 [#103] Status => Processing
145ab30f313f:25843 [#103] Loaded course [17049] MSc 2020-21 Experimental Pharmacology and Therapeutics: PHAY0028 Investigative Pharmacology (PHAY0028_20-21)
145ab30f313f:25843 [#103] Step 1. Backing up the current course
145ab30f313f:25843 [#103] Step 1 complete: rollover-backup-14-06-2022.mbz
145ab30f313f:25843 [#103] Step 2. Creating a new blank course
145ab30f313f:25843 [#103] Step 2 complete: 26276
145ab30f313f:25843 [#103] Step 3. Restoring the backup into the new blank course
145ab30f313f:25843 [#103] Status => Failed
145ab30f313f:25843 [#103] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
145ab30f313f:25843 
145ab30f313f:25843 [#103] Reverting rollover
145ab30f313f:25843 [#103] Deleting newly created course 

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275129694
45d1516c3327:18671 Processing rollover request [#97]
45d1516c3327:18671 [#97] Status => Processing
45d1516c3327:18671 [#97] Loaded course [22315] MPharm 2021 PHAY0005: Clinical and Professional Considerations (PHAY0005_21-22)
45d1516c3327:18671 [#97] Step 1. Backing up the current course
45d1516c3327:18671 [#97] Step 1 complete: rollover-backup-14-06-2022.mbz
45d1516c3327:18671 [#97] Step 2. Creating a new blank course
45d1516c3327:18671 [#97] Step 2 complete: 26268
45d1516c3327:18671 [#97] Step 3. Restoring the backup into the new blank course
45d1516c3327:18671 [#97] Step 3 complete
45d1516c3327:18671 [#97] Step 4. Resetting user data on the restored course
45d1516c3327:18671 [#97] Step 4 complete
45d1516c3327:18671 [#97] Step 5. Removing unwanted enrolments
45d1516c3327:18671 [#97] Unenrolled 0 users from restored course
45d1516c3327:18671 [#97] Step 5 complete
45d1516c3327:18671 [#97] Step 6. Applying portico mappings and updates to new course
45d1516c3327:18671 [#97] Status => Failed
45d1516c3327:18671 [#97] Error: Error writing to database
45d1516c3327:18671 [#97] Reverting rollover
45d1516c3327:18671 [#97] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275121958
45d1516c3327:15715 Processing rollover request [#91]
45d1516c3327:15715 [#91] Status => Processing
45d1516c3327:15715 [#91] Loaded course [22323] MPharm 2021 PHAY0010: Communicating Science and Practice (PHAY0010_21-22)
45d1516c3327:15715 [#91] Step 1. Backing up the current course
45d1516c3327:15715 [#91] Step 1 complete: rollover-backup-14-06-2022.mbz
45d1516c3327:15715 [#91] Step 2. Creating a new blank course
45d1516c3327:15715 [#91] Step 2 complete: 26263
45d1516c3327:15715 [#91] Step 3. Restoring the backup into the new blank course
45d1516c3327:15715 [#91] Step 3 complete
45d1516c3327:15715 [#91] Step 4. Resetting user data on the restored course
45d1516c3327:15715 [#91] Step 4 complete
45d1516c3327:15715 [#91] Step 5. Removing unwanted enrolments
45d1516c3327:15715 [#91] Unenrolled 83 users from restored course
45d1516c3327:15715 [#91] Step 5 complete
45d1516c3327:15715 [#91] Step 6. Applying portico mappings and updates to new course
45d1516c3327:15715 [#91] Status => Failed
45d1516c3327:15715 [#91] Error: Error writing to database
45d1516c3327:15715 [#91] Reverting rollover
45d1516c3327:15715 [#91] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275114118
6c504e5f9afb:13744 [#87] Status => Processing
6c504e5f9afb:13744 [#87] Loaded course [22315] MPharm 2021 PHAY0005: Clinical and Professional Considerations (PHAY0005_21-22)
6c504e5f9afb:13744 [#87] Step 1. Backing up the current course
6c504e5f9afb:13744 [#87] Step 1 complete: rollover-backup-14-06-2022.mbz
6c504e5f9afb:13744 [#87] Step 2. Creating a new blank course
6c504e5f9afb:13744 [#87] Step 2 complete: 26258
6c504e5f9afb:13744 [#87] Step 3. Restoring the backup into the new blank course
6c504e5f9afb:13744 [#87] Step 3 complete
6c504e5f9afb:13744 [#87] Step 4. Resetting user data on the restored course
6c504e5f9afb:13744 [#87] Step 4 complete
6c504e5f9afb:13744 [#87] Step 5. Removing unwanted enrolments
6c504e5f9afb:13744 [#87] Unenrolled 0 users from restored course
6c504e5f9afb:13744 [#87] Step 5 complete
6c504e5f9afb:13744 [#87] Step 6. Applying portico mappings and updates to new course
6c504e5f9afb:13744 [#87] Status => Failed
6c504e5f9afb:13744 [#87] Error: Error writing to database
6c504e5f9afb:13744 [#87] Reverting rollover

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=275070230
145ab30f313f:17481 Processing rollover request [#86]
145ab30f313f:17481 [#86] Status => Processing
145ab30f313f:17481 [#86] Loaded course [2952] CLAS0001: Greek Myth: Its Use and Meaning (21/22) (CLAS0001_21-22)
145ab30f313f:17481 [#86] Step 1. Backing up the current course
145ab30f313f:17481 [#86] Step 1 complete: rollover-backup-14-06-2022.mbz
145ab30f313f:17481 [#86] Step 2. Creating a new blank course
145ab30f313f:17481 [#86] Step 2 complete: 26257
145ab30f313f:17481 [#86] Step 3. Restoring the backup into the new blank course
145ab30f313f:17481 [#86] Step 3 complete
145ab30f313f:17481 [#86] Step 4. Resetting user data on the restored course
145ab30f313f:17481 [#86] Step 4 complete
145ab30f313f:17481 [#86] Step 5. Removing unwanted enrolments
145ab30f313f:17481 [#86] Unenrolled 2 users from restored course
145ab30f313f:17481 [#86] Step 5 complete
145ab30f313f:17481 [#86] Step 6. Applying portico mappings and updates to new course
145ab30f313f:17481 [#86] Mapped MODOCC-CFB3B55E0E20F040E053011E1D0AD060 to CLAS0001: Greek Myth: Its Use and Meaning 22/23
145ab30f313f:17481 [#86] Step 6 complete
145ab30f313f:17481 [#86] Step 7. Move old course to equivalent category
145ab30f313f:17481 [#86] Status => Failed
145ab30f313f:17481 [#86] Error: Could not move old course to category: error/Invalid Idnumber Format: 
145ab30f313f:17481 [#86] Reverting rollover
145ab30f313f:17481 [#86] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274932078
45d1516c3327:27673 Processing rollover request [#85]
45d1516c3327:27673 [#85] Status => Processing
45d1516c3327:27673 [#85] Loaded course [9008] Chemistry Safety 2021-22 (SAFECHEM-21-22)
45d1516c3327:27673 [#85] Step 1. Backing up the current course
45d1516c3327:27673 [#85] Step 1 complete: rollover-backup-13-06-2022.mbz
45d1516c3327:27673 [#85] Step 2. Creating a new blank course
45d1516c3327:27673 [#85] Step 2 complete: 26256
45d1516c3327:27673 [#85] Step 3. Restoring the backup into the new blank course
45d1516c3327:27673 [#85] Step 3 complete
45d1516c3327:27673 [#85] Step 4. Resetting user data on the restored course
45d1516c3327:27673 [#85] Step 4 complete
45d1516c3327:27673 [#85] Step 5. Removing unwanted enrolments
45d1516c3327:27673 [#85] Unenrolled 561 users from restored course
45d1516c3327:27673 [#85] Step 5 complete
45d1516c3327:27673 [#85] Step 6. Applying portico mappings and updates to new course
45d1516c3327:27673 [#85] Status => Failed
45d1516c3327:27673 [#85] Error: Error writing to database
45d1516c3327:27673 [#85] Reverting rollover
45d1516c3327:27673 [#85] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274907231
c4e58b9b97d7:17465 Processing rollover request [#82]
c4e58b9b97d7:17465 [#82] Status => Processing
c4e58b9b97d7:17465 [#82] Loaded course [9008] Chemistry Safety 2021-22 (SAFECHEM-21-22)
c4e58b9b97d7:17465 [#82] Step 1. Backing up the current course
c4e58b9b97d7:17465 [#82] Step 1 complete: rollover-backup-13-06-2022.mbz
c4e58b9b97d7:17465 [#82] Step 2. Creating a new blank course
c4e58b9b97d7:17465 [#82] Step 2 complete: 26255
c4e58b9b97d7:17465 [#82] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:17465 [#82] Step 3 complete
c4e58b9b97d7:17465 [#82] Step 4. Resetting user data on the restored course
c4e58b9b97d7:17465 [#82] Step 4 complete
c4e58b9b97d7:17465 [#82] Step 5. Removing unwanted enrolments
c4e58b9b97d7:17465 [#82] Unenrolled 561 users from restored course
c4e58b9b97d7:17465 [#82] Step 5 complete
c4e58b9b97d7:17465 [#82] Step 6. Applying portico mappings and updates to new course
c4e58b9b97d7:17465 [#82] Status => Failed
c4e58b9b97d7:17465 [#82] Error: Error writing to database
c4e58b9b97d7:17465 [#82] Reverting rollover
c4e58b9b97d7:17465 [#82] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274892770
6c504e5f9afb:867 Processing rollover request [#81]
6c504e5f9afb:867 [#81] Status => Processing
6c504e5f9afb:867 [#81] Loaded course [9008] Chemistry Safety 2021-22 (SAFECHEM-21-22)
6c504e5f9afb:867 [#81] Step 1. Backing up the current course
6c504e5f9afb:867 [#81] Step 1 complete: rollover-backup-13-06-2022.mbz
6c504e5f9afb:867 [#81] Step 2. Creating a new blank course
6c504e5f9afb:867 [#81] Step 2 complete: 26252
6c504e5f9afb:867 [#81] Step 3. Restoring the backup into the new blank course
6c504e5f9afb:867 [#81] Status => Failed
6c504e5f9afb:867 [#81] Error: Cannot create local file pool directories. Please verify permissions in dataroot.
6c504e5f9afb:867 [#81] Reverting rollover
6c504e5f9afb:867 [#81] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274883295
c4e58b9b97d7:22992 Processing rollover request [#80]
c4e58b9b97d7:22992 [#80] Status => Processing
c4e58b9b97d7:22992 [#80] Loaded course [21113] COMP0154: Future Global Technologies for Disability & Development (21-22) (COMP0154 21-22)
c4e58b9b97d7:22992 [#80] Step 1. Backing up the current course
c4e58b9b97d7:22992 [#80] Step 1 complete: rollover-backup-13-06-2022.mbz
c4e58b9b97d7:22992 [#80] Step 2. Creating a new blank course
c4e58b9b97d7:22992 [#80] Step 2 complete: 26251
c4e58b9b97d7:22992 [#80] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:22992 [#80] Status => Failed
c4e58b9b97d7:22992 [#80] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
c4e58b9b97d7:22992 
c4e58b9b97d7:22992 [#80] Reverting rollover
c4e58b9b97d7:22992 [#80] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274802005
6c504e5f9afb:19965 Processing rollover request [#78]
6c504e5f9afb:19965 [#78] Status => Processing
6c504e5f9afb:19965 [#78] Loaded course [23492] Department of Psychology and Human Development  PGT Journal Club 21/22 (Psychology & Human Development Journal Club 21/22)
6c504e5f9afb:19965 [#78] Step 1. Backing up the current course
6c504e5f9afb:19965 [#78] Step 1 complete: rollover-backup-13-06-2022.mbz
6c504e5f9afb:19965 [#78] Step 2. Creating a new blank course
6c504e5f9afb:19965 [#78] Step 2 complete: 26247
6c504e5f9afb:19965 [#78] Step 3. Restoring the backup into the new blank course
6c504e5f9afb:19965 [#78] Step 3 complete
6c504e5f9afb:19965 [#78] Step 4. Resetting user data on the restored course
6c504e5f9afb:19965 [#78] Step 4 complete
6c504e5f9afb:19965 [#78] Step 5. Removing unwanted enrolments
6c504e5f9afb:19965 [#78] Unenrolled 0 users from restored course
6c504e5f9afb:19965 [#78] Step 5 complete
6c504e5f9afb:19965 [#78] Step 6. Applying portico mappings and updates to new course
6c504e5f9afb:19965 [#78] Status => Failed
6c504e5f9afb:19965 [#78] Error: Error writing to database
6c504e5f9afb:19965 [#78] Reverting rollover
6c504e5f9afb:19965 [#78] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274177838
6c504e5f9afb:16214 Processing rollover request [#64]
6c504e5f9afb:16214 [#64] Status => Processing
6c504e5f9afb:16214 [#64] Loaded course [24278] Primary PGCE: Maths Pathway 2021/22 (PPGCEMP2122)
6c504e5f9afb:16214 [#64] Step 1. Backing up the current course
6c504e5f9afb:16214 [#64] Step 1 complete: rollover-backup-11-06-2022.mbz
6c504e5f9afb:16214 [#64] Step 2. Creating a new blank course
6c504e5f9afb:16214 [#64] Step 2 complete: 26231
6c504e5f9afb:16214 [#64] Step 3. Restoring the backup into the new blank course
6c504e5f9afb:16214 [#64] Step 3 complete
6c504e5f9afb:16214 [#64] Step 4. Resetting user data on the restored course
6c504e5f9afb:16214 [#64] Step 4 complete
6c504e5f9afb:16214 [#64] Step 5. Removing unwanted enrolments
6c504e5f9afb:16214 [#64] Unenrolled 30 users from restored course
6c504e5f9afb:16214 [#64] Step 5 complete
6c504e5f9afb:16214 [#64] Step 6. Applying portico mappings and updates to new course
6c504e5f9afb:16214 [#64] Status => Failed
6c504e5f9afb:16214 [#64] Error: Error writing to database
6c504e5f9afb:16214 [#64] Reverting rollover
6c504e5f9afb:16214 [#64] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274121150
145ab30f313f:4506 Processing rollover request [#62]
145ab30f313f:4506 [#62] Status => Processing
145ab30f313f:4506 [#62] Loaded course [24278] Primary PGCE: Maths Pathway 2021/22 (PPGCEMP2122)
145ab30f313f:4506 [#62] Step 1. Backing up the current course
145ab30f313f:4506 [#62] Step 1 complete: rollover-backup-10-06-2022.mbz
145ab30f313f:4506 [#62] Step 2. Creating a new blank course
145ab30f313f:4506 [#62] Step 2 complete: 26228
145ab30f313f:4506 [#62] Step 3. Restoring the backup into the new blank course
145ab30f313f:4506 [#62] Step 3 complete
145ab30f313f:4506 [#62] Step 4. Resetting user data on the restored course
145ab30f313f:4506 [#62] Step 4 complete
145ab30f313f:4506 [#62] Step 5. Removing unwanted enrolments
145ab30f313f:4506 [#62] Unenrolled 30 users from restored course
145ab30f313f:4506 [#62] Step 5 complete
145ab30f313f:4506 [#62] Step 6. Applying portico mappings and updates to new course
145ab30f313f:4506 [#62] Status => Failed
145ab30f313f:4506 [#62] Error: Error writing to database
145ab30f313f:4506 [#62] Reverting rollover
145ab30f313f:4506 [#62] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274121558
45d1516c3327:30006 Processing rollover request [#61]
45d1516c3327:30006 [#61] Status => Processing
45d1516c3327:30006 [#61] Loaded course [24277] Primary PGCE: Early Years Pathway 2021-22 (PPGCEEYP2122)
45d1516c3327:30006 [#61] Step 1. Backing up the current course
45d1516c3327:30006 [#61] Step 1 complete: rollover-backup-10-06-2022.mbz
45d1516c3327:30006 [#61] Step 2. Creating a new blank course
45d1516c3327:30006 [#61] Step 2 complete: 26229
45d1516c3327:30006 [#61] Step 3. Restoring the backup into the new blank course
45d1516c3327:30006 [#61] Step 3 complete
45d1516c3327:30006 [#61] Step 4. Resetting user data on the restored course
45d1516c3327:30006 [#61] Step 4 complete
45d1516c3327:30006 [#61] Step 5. Removing unwanted enrolments
45d1516c3327:30006 [#61] Unenrolled 53 users from restored course
45d1516c3327:30006 [#61] Step 5 complete
45d1516c3327:30006 [#61] Step 6. Applying portico mappings and updates to new course
45d1516c3327:30006 [#61] Status => Failed
45d1516c3327:30006 [#61] Error: Error writing to database
45d1516c3327:30006 [#61] Reverting rollover
45d1516c3327:30006 [#61] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274120768
6c504e5f9afb:11859 Processing rollover request [#59]
6c504e5f9afb:11859 [#59] Status => Processing
6c504e5f9afb:11859 [#59] Loaded course [24276] Primary PGCE: Professional Studies 2021-22 (Primary_PP_PS_2021)
6c504e5f9afb:11859 [#59] Step 1. Backing up the current course
6c504e5f9afb:11859 [#59] Step 1 complete: rollover-backup-10-06-2022.mbz
6c504e5f9afb:11859 [#59] Step 2. Creating a new blank course
6c504e5f9afb:11859 [#59] Step 2 complete: 26226
6c504e5f9afb:11859 [#59] Step 3. Restoring the backup into the new blank course
6c504e5f9afb:11859 [#59] Step 3 complete
6c504e5f9afb:11859 [#59] Step 4. Resetting user data on the restored course
6c504e5f9afb:11859 [#59] Step 4 complete
6c504e5f9afb:11859 [#59] Step 5. Removing unwanted enrolments
6c504e5f9afb:11859 [#59] Unenrolled 293 users from restored course
6c504e5f9afb:11859 [#59] Step 5 complete
6c504e5f9afb:11859 [#59] Step 6. Applying portico mappings and updates to new course
6c504e5f9afb:11859 [#59] Status => Failed
6c504e5f9afb:11859 [#59] Error: Error writing to database
6c504e5f9afb:11859 [#59] Reverting rollover
6c504e5f9afb:11859 [#59] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274119464
145ab30f313f:8498 Processing rollover request [#58]
145ab30f313f:8498 [#58] Status => Processing
145ab30f313f:8498 [#58] Loaded course [24709] Primary PGCE : School Experience 2021-22 (Primary_PP_SE_2021)
145ab30f313f:8498 [#58] Step 1. Backing up the current course
145ab30f313f:8498 [#58] Step 1 complete: rollover-backup-10-06-2022.mbz
145ab30f313f:8498 [#58] Step 2. Creating a new blank course
145ab30f313f:8498 [#58] Step 2 complete: 26225
145ab30f313f:8498 [#58] Step 3. Restoring the backup into the new blank course
145ab30f313f:8498 [#58] Step 3 complete
145ab30f313f:8498 [#58] Step 4. Resetting user data on the restored course
145ab30f313f:8498 [#58] Step 4 complete
145ab30f313f:8498 [#58] Step 5. Removing unwanted enrolments
145ab30f313f:8498 [#58] Unenrolled 292 users from restored course
145ab30f313f:8498 [#58] Step 5 complete
145ab30f313f:8498 [#58] Step 6. Applying portico mappings and updates to new course
145ab30f313f:8498 [#58] Status => Failed
145ab30f313f:8498 [#58] Error: Error writing to database
145ab30f313f:8498 [#58] Reverting rollover
145ab30f313f:8498 [#58] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274119668
45d1516c3327:18547 Processing rollover request [#57]
45d1516c3327:18547 [#57] Status => Processing
45d1516c3327:18547 [#57] Loaded course [24275] Primary PGCE: Curriculum Science 2021-22 (Primary_PP_CSCI_2021)
45d1516c3327:18547 [#57] Step 1. Backing up the current course
45d1516c3327:18547 [#57] Step 1 complete: rollover-backup-10-06-2022.mbz
45d1516c3327:18547 [#57] Step 2. Creating a new blank course
45d1516c3327:18547 [#57] Step 2 complete: 26224
45d1516c3327:18547 [#57] Step 3. Restoring the backup into the new blank course
45d1516c3327:18547 [#57] Step 3 complete
45d1516c3327:18547 [#57] Step 4. Resetting user data on the restored course
45d1516c3327:18547 [#57] Step 4 complete
45d1516c3327:18547 [#57] Step 5. Removing unwanted enrolments
45d1516c3327:18547 [#57] Unenrolled 293 users from restored course
45d1516c3327:18547 [#57] Step 5 complete
45d1516c3327:18547 [#57] Step 6. Applying portico mappings and updates to new course
45d1516c3327:18547 [#57] Status => Failed
45d1516c3327:18547 [#57] Error: Error writing to database
45d1516c3327:18547 [#57] Reverting rollover
45d1516c3327:18547 [#57] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274118186
c4e58b9b97d7:25363 Processing rollover request [#56]
c4e58b9b97d7:25363 [#56] Status => Processing
c4e58b9b97d7:25363 [#56] Loaded course [24274] Primary PGCE: Curriculum Maths 2021-22 (Primary_PP_CMAT_2021)
c4e58b9b97d7:25363 [#56] Step 1. Backing up the current course
c4e58b9b97d7:25363 [#56] Step 1 complete: rollover-backup-10-06-2022.mbz
c4e58b9b97d7:25363 [#56] Step 2. Creating a new blank course
c4e58b9b97d7:25363 [#56] Step 2 complete: 26222
c4e58b9b97d7:25363 [#56] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:25363 [#56] Step 3 complete
c4e58b9b97d7:25363 [#56] Step 4. Resetting user data on the restored course
c4e58b9b97d7:25363 [#56] Step 4 complete
c4e58b9b97d7:25363 [#56] Step 5. Removing unwanted enrolments
c4e58b9b97d7:25363 [#56] Unenrolled 293 users from restored course
c4e58b9b97d7:25363 [#56] Step 5 complete
c4e58b9b97d7:25363 [#56] Step 6. Applying portico mappings and updates to new course
c4e58b9b97d7:25363 [#56] Status => Failed
c4e58b9b97d7:25363 [#56] Error: Error writing to database
c4e58b9b97d7:25363 [#56] Reverting rollover
c4e58b9b97d7:25363 [#56] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274120295
c4e58b9b97d7:31090 Processing rollover request [#55]
c4e58b9b97d7:31090 [#55] Status => Processing
c4e58b9b97d7:31090 [#55] Loaded course [24273] Primary PGCE: Curriculum Foundation Subjects 2021-22 (Primary_PP_CFOU_2021)
c4e58b9b97d7:31090 [#55] Step 1. Backing up the current course
c4e58b9b97d7:31090 [#55] Step 1 complete: rollover-backup-10-06-2022.mbz
c4e58b9b97d7:31090 [#55] Step 2. Creating a new blank course
c4e58b9b97d7:31090 [#55] Step 2 complete: 26223
c4e58b9b97d7:31090 [#55] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:31090 [#55] Step 3 complete
c4e58b9b97d7:31090 [#55] Step 4. Resetting user data on the restored course
c4e58b9b97d7:31090 [#55] Step 4 complete
c4e58b9b97d7:31090 [#55] Step 5. Removing unwanted enrolments
c4e58b9b97d7:31090 [#55] Unenrolled 293 users from restored course
c4e58b9b97d7:31090 [#55] Step 5 complete
c4e58b9b97d7:31090 [#55] Step 6. Applying portico mappings and updates to new course
c4e58b9b97d7:31090 [#55] Status => Failed
c4e58b9b97d7:31090 [#55] Error: Error writing to database
c4e58b9b97d7:31090 [#55] Reverting rollover
c4e58b9b97d7:31090 [#55] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274118387
c4e58b9b97d7:12214 Processing rollover request [#54]
c4e58b9b97d7:12214 [#54] Status => Processing
c4e58b9b97d7:12214 [#54] Loaded course [24272] Primary PGCE: Curriculum English 2021-22 (Primary_PP_CENG_2021)
c4e58b9b97d7:12214 [#54] Step 1. Backing up the current course
c4e58b9b97d7:12214 [#54] Step 1 complete: rollover-backup-10-06-2022.mbz
c4e58b9b97d7:12214 [#54] Step 2. Creating a new blank course
c4e58b9b97d7:12214 [#54] Step 2 complete: 26221
c4e58b9b97d7:12214 [#54] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:12214 [#54] Step 3 complete
c4e58b9b97d7:12214 [#54] Step 4. Resetting user data on the restored course
c4e58b9b97d7:12214 [#54] Step 4 complete
c4e58b9b97d7:12214 [#54] Step 5. Removing unwanted enrolments
c4e58b9b97d7:12214 [#54] Unenrolled 293 users from restored course
c4e58b9b97d7:12214 [#54] Step 5 complete
c4e58b9b97d7:12214 [#54] Step 6. Applying portico mappings and updates to new course
c4e58b9b97d7:12214 [#54] Status => Failed
c4e58b9b97d7:12214 [#54] Error: Error writing to database
c4e58b9b97d7:12214 [#54] Reverting rollover
c4e58b9b97d7:12214 [#54] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274117088
45d1516c3327:18488 Processing rollover request [#53]
45d1516c3327:18488 [#53] Status => Processing
45d1516c3327:18488 [#53] Loaded course [24271] Primary PGCE: Curriculum Computing 2021-22 (Primary_PP_CICT_2021)
45d1516c3327:18488 [#53] Step 1. Backing up the current course
45d1516c3327:18488 [#53] Step 1 complete: rollover-backup-10-06-2022.mbz
45d1516c3327:18488 [#53] Step 2. Creating a new blank course
45d1516c3327:18488 [#53] Step 2 complete: 26219
45d1516c3327:18488 [#53] Step 3. Restoring the backup into the new blank course
45d1516c3327:18488 [#53] Step 3 complete
45d1516c3327:18488 [#53] Step 4. Resetting user data on the restored course
45d1516c3327:18488 [#53] Step 4 complete
45d1516c3327:18488 [#53] Step 5. Removing unwanted enrolments
45d1516c3327:18488 [#53] Unenrolled 293 users from restored course
45d1516c3327:18488 [#53] Step 5 complete
45d1516c3327:18488 [#53] Step 6. Applying portico mappings and updates to new course
45d1516c3327:18488 [#53] Status => Failed
45d1516c3327:18488 [#53] Error: Error writing to database
45d1516c3327:18488 [#53] Reverting rollover
45d1516c3327:18488 [#53] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274120320
c4e58b9b97d7:25810 Processing rollover request [#52]
c4e58b9b97d7:25810 [#52] Status => Processing
c4e58b9b97d7:25810 [#52] Loaded course [24270] Primary PGCE: Specialism 2021-22 (Primary_SP_2021)
c4e58b9b97d7:25810 [#52] Step 1. Backing up the current course
c4e58b9b97d7:25810 [#52] Step 1 complete: rollover-backup-10-06-2022.mbz
c4e58b9b97d7:25810 [#52] Step 2. Creating a new blank course
c4e58b9b97d7:25810 [#52] Step 2 complete: 26220
c4e58b9b97d7:25810 [#52] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:25810 [#52] Step 3 complete
c4e58b9b97d7:25810 [#52] Step 4. Resetting user data on the restored course
c4e58b9b97d7:25810 [#52] Step 4 complete
c4e58b9b97d7:25810 [#52] Step 5. Removing unwanted enrolments
c4e58b9b97d7:25810 [#52] Unenrolled 280 users from restored course
c4e58b9b97d7:25810 [#52] Step 5 complete
c4e58b9b97d7:25810 [#52] Step 6. Applying portico mappings and updates to new course
c4e58b9b97d7:25810 [#52] Status => Failed
c4e58b9b97d7:25810 [#52] Error: Error writing to database
c4e58b9b97d7:25810 [#52] Reverting rollover
c4e58b9b97d7:25810 [#52] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274116884
6c504e5f9afb:28861 Processing rollover request [#51]
6c504e5f9afb:28861 [#51] Status => Processing
6c504e5f9afb:28861 [#51] Loaded course [24269] Primary PGCE: Learning & Teaching 2021-22 (Primary_LT_2021)
6c504e5f9afb:28861 [#51] Step 1. Backing up the current course
6c504e5f9afb:28861 [#51] Step 1 complete: rollover-backup-10-06-2022.mbz
6c504e5f9afb:28861 [#51] Step 2. Creating a new blank course
6c504e5f9afb:28861 [#51] Step 2 complete: 26218
6c504e5f9afb:28861 [#51] Step 3. Restoring the backup into the new blank course
6c504e5f9afb:28861 [#51] Step 3 complete
6c504e5f9afb:28861 [#51] Step 4. Resetting user data on the restored course
6c504e5f9afb:28861 [#51] Step 4 complete
6c504e5f9afb:28861 [#51] Step 5. Removing unwanted enrolments
6c504e5f9afb:28861 [#51] Unenrolled 281 users from restored course
6c504e5f9afb:28861 [#51] Step 5 complete
6c504e5f9afb:28861 [#51] Step 6. Applying portico mappings and updates to new course
6c504e5f9afb:28861 [#51] Status => Failed
6c504e5f9afb:28861 [#51] Error: Error writing to database
6c504e5f9afb:28861 [#51] Reverting rollover
6c504e5f9afb:28861 [#51] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274122842
c4e58b9b97d7:7762 Processing rollover request [#50]
c4e58b9b97d7:7762 [#50] Status => Processing
c4e58b9b97d7:7762 [#50] Loaded course [24268] Primary PGCE Submission Area 2021-22 (Primary_Submission_2021)
c4e58b9b97d7:7762 [#50] Step 1. Backing up the current course
c4e58b9b97d7:7762 [#50] Step 1 complete: rollover-backup-10-06-2022.mbz
c4e58b9b97d7:7762 [#50] Step 2. Creating a new blank course
c4e58b9b97d7:7762 [#50] Step 2 complete: 26217
c4e58b9b97d7:7762 [#50] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:7762 [#50] Step 3 complete
c4e58b9b97d7:7762 [#50] Step 4. Resetting user data on the restored course
c4e58b9b97d7:7762 [#50] Step 4 complete
c4e58b9b97d7:7762 [#50] Step 5. Removing unwanted enrolments
c4e58b9b97d7:7762 [#50] Unenrolled 300 users from restored course
c4e58b9b97d7:7762 [#50] Step 5 complete
c4e58b9b97d7:7762 [#50] Step 6. Applying portico mappings and updates to new course
c4e58b9b97d7:7762 [#50] Status => Failed
c4e58b9b97d7:7762 [#50] Error: Error writing to database
c4e58b9b97d7:7762 [#50] Reverting rollover
c4e58b9b97d7:7762 [#50] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=274116458
6c504e5f9afb:28608 Processing rollover request [#49]
6c504e5f9afb:28608 [#49] Status => Processing
6c504e5f9afb:28608 [#49] Loaded course [24267] Primary PGCE Main 2021-22 (PRIMARY_PGCE_MAIN_2021)
6c504e5f9afb:28608 [#49] Step 1. Backing up the current course
6c504e5f9afb:28608 [#49] Step 1 complete: rollover-backup-10-06-2022.mbz
6c504e5f9afb:28608 [#49] Step 2. Creating a new blank course
6c504e5f9afb:28608 [#49] Step 2 complete: 26216
6c504e5f9afb:28608 [#49] Step 3. Restoring the backup into the new blank course
6c504e5f9afb:28608 [#49] Step 3 complete
6c504e5f9afb:28608 [#49] Step 4. Resetting user data on the restored course
6c504e5f9afb:28608 [#49] Step 4 complete
6c504e5f9afb:28608 [#49] Step 5. Removing unwanted enrolments
6c504e5f9afb:28608 [#49] Unenrolled 306 users from restored course
6c504e5f9afb:28608 [#49] Step 5 complete
6c504e5f9afb:28608 [#49] Step 6. Applying portico mappings and updates to new course
6c504e5f9afb:28608 [#49] Status => Failed
6c504e5f9afb:28608 [#49] Error: Error writing to database
6c504e5f9afb:28608 [#49] Reverting rollover
6c504e5f9afb:28608 [#49] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=273737962
145ab30f313f:23989 Processing rollover request [#45]
145ab30f313f:23989 [#45] Status => Processing
145ab30f313f:23989 [#45] Loaded course [1234] [POSTPONED] CHEM0006 #UCLChemAirPoll Group Research Project (21/22) (#UCLChemAirPoll)
145ab30f313f:23989 [#45] Step 1. Backing up the current course
145ab30f313f:23989 [#45] Step 1 complete: rollover-backup-09-06-2022.mbz
145ab30f313f:23989 [#45] Step 2. Creating a new blank course
145ab30f313f:23989 [#45] Step 2 complete: 26206
145ab30f313f:23989 [#45] Step 3. Restoring the backup into the new blank course
145ab30f313f:23989 [#45] Step 3 complete
145ab30f313f:23989 [#45] Step 4. Resetting user data on the restored course
145ab30f313f:23989 [#45] Step 4 complete
145ab30f313f:23989 [#45] Step 5. Removing unwanted enrolments
145ab30f313f:23989 [#45] Unenrolled 0 users from restored course
145ab30f313f:23989 [#45] Step 5 complete
145ab30f313f:23989 [#45] Step 6. Applying portico mappings and updates to new course
145ab30f313f:23989 [#45] Mapped MODOCC-97C6BAAC10737886E053211E1C0A1034 to CHEM0006: Chemical Skills 20/21
145ab30f313f:23989 [#45] Step 6 complete
145ab30f313f:23989 [#45] Step 7. Move old course to equivalent category
145ab30f313f:23989 [#45] Status => Failed
145ab30f313f:23989 [#45] Error: Could not move old course to category: error/Invalid Idnumber Format: 
145ab30f313f:23989 [#45] Reverting rollover

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=273658254
c4e58b9b97d7:19796 Processing rollover request [#44]
c4e58b9b97d7:19796 [#44] Status => Processing
c4e58b9b97d7:19796 [#44] Loaded course [1234] [POSTPONED] CHEM0006 #UCLChemAirPoll Group Research Project (21/22) (#UCLChemAirPoll)
c4e58b9b97d7:19796 [#44] Step 1. Backing up the current course
c4e58b9b97d7:19796 [#44] Step 1 complete: rollover-backup-09-06-2022.mbz
c4e58b9b97d7:19796 [#44] Step 2. Creating a new blank course
c4e58b9b97d7:19796 [#44] Step 2 complete: 26205
c4e58b9b97d7:19796 [#44] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:19796 [#44] Step 3 complete
c4e58b9b97d7:19796 [#44] Step 4. Resetting user data on the restored course
c4e58b9b97d7:19796 [#44] Step 4 complete
c4e58b9b97d7:19796 [#44] Step 5. Removing unwanted enrolments
c4e58b9b97d7:19796 [#44] Unenrolled 0 users from restored course
c4e58b9b97d7:19796 [#44] Step 5 complete
c4e58b9b97d7:19796 [#44] Step 6. Applying portico mappings and updates to new course
c4e58b9b97d7:19796 [#44] Mapped MODOCC-97C6BAAC10737886E053211E1C0A1034 to CHEM0006: Chemical Skills 20/21
c4e58b9b97d7:19796 [#44] Step 6 complete
c4e58b9b97d7:19796 [#44] Step 7. Move old course to equivalent category
c4e58b9b97d7:19796 [#44] Status => Failed
c4e58b9b97d7:19796 [#44] Error: Could not move old course to category: error/Invalid Idnumber Format: 
c4e58b9b97d7:19796 [#44] Reverting rollover
c4e58b9b97d7:19796 [#44] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=273336220
c4e58b9b97d7:19990 [#43] Status => Processing
c4e58b9b97d7:19990 [#43] Loaded course [9590] MA English: Issues in Modern Culture 2021/22 (MA Issues in Modern Culture 21/22)
c4e58b9b97d7:19990 [#43] Step 1. Backing up the current course
c4e58b9b97d7:19990 [#43] Step 1 complete: rollover-backup-08-06-2022.mbz
c4e58b9b97d7:19990 [#43] Step 2. Creating a new blank course
c4e58b9b97d7:19990 [#43] Step 2 complete: 26196
c4e58b9b97d7:19990 [#43] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:19990 [#43] Step 3 complete
c4e58b9b97d7:19990 [#43] Step 4. Resetting user data on the restored course
c4e58b9b97d7:19990 [#43] Step 4 complete
c4e58b9b97d7:19990 [#43] Step 5. Removing unwanted enrolments
c4e58b9b97d7:19990 [#43] Unenrolled 41 users from restored course
c4e58b9b97d7:19990 [#43] Step 5 complete
c4e58b9b97d7:19990 [#43] Step 6. Applying portico mappings and updates to new course
c4e58b9b97d7:19990 [#43] Status => Failed
c4e58b9b97d7:19990 [#43] Error: Error writing to database
c4e58b9b97d7:19990 [#43] Reverting rollover
c4e58b9b97d7:19990 [#43] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=273339022
c4e58b9b97d7:31640 Processing rollover request [#42]
c4e58b9b97d7:31640 [#42] Status => Processing
c4e58b9b97d7:31640 [#42] Loaded course [9698] MA in English Linguistics 2021-22 (TMAENGSLIN01 21-22)
c4e58b9b97d7:31640 [#42] Step 1. Backing up the current course
c4e58b9b97d7:31640 [#42] Step 1 complete: rollover-backup-08-06-2022.mbz
c4e58b9b97d7:31640 [#42] Step 2. Creating a new blank course
c4e58b9b97d7:31640 [#42] Step 2 complete: 26195
c4e58b9b97d7:31640 [#42] Step 3. Restoring the backup into the new blank course
c4e58b9b97d7:31640 [#42] Step 3 complete
c4e58b9b97d7:31640 [#42] Step 4. Resetting user data on the restored course
c4e58b9b97d7:31640 [#42] Step 4 complete
c4e58b9b97d7:31640 [#42] Step 5. Removing unwanted enrolments
c4e58b9b97d7:31640 [#42] Unenrolled 32 users from restored course
c4e58b9b97d7:31640 [#42] Step 5 complete
c4e58b9b97d7:31640 [#42] Step 6. Applying portico mappings and updates to new course
c4e58b9b97d7:31640 [#42] Status => Failed
c4e58b9b97d7:31640 [#42] Error: Error writing to database
c4e58b9b97d7:31640 [#42] Reverting rollover
c4e58b9b97d7:31640 [#42] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=273271498
145ab30f313f:21611 Processing rollover request [#41]
145ab30f313f:21611 [#41] Status => Processing
145ab30f313f:21611 [#41] Loaded course [9698] MA in English Linguistics 2021-22 (TMAENGSLIN01 21-22)
145ab30f313f:21611 [#41] Step 1. Backing up the current course
145ab30f313f:21611 [#41] Step 1 complete: rollover-backup-08-06-2022.mbz
145ab30f313f:21611 [#41] Step 2. Creating a new blank course
145ab30f313f:21611 [#41] Step 2 complete: 26194
145ab30f313f:21611 [#41] Step 3. Restoring the backup into the new blank course
145ab30f313f:21611 [#41] Step 3 complete
145ab30f313f:21611 [#41] Step 4. Resetting user data on the restored course
145ab30f313f:21611 [#41] Step 4 complete
145ab30f313f:21611 [#41] Step 5. Removing unwanted enrolments
145ab30f313f:21611 [#41] Unenrolled 32 users from restored course
145ab30f313f:21611 [#41] Step 5 complete
145ab30f313f:21611 [#41] Step 6. Applying portico mappings and updates to new course
145ab30f313f:21611 [#41] Status => Failed
145ab30f313f:21611 [#41] Error: Error writing to database
145ab30f313f:21611 [#41] Reverting rollover
145ab30f313f:21611 [#41] Deleting newly created course 

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=273040751
6c504e5f9afb:22819 Processing rollover request [#38]
6c504e5f9afb:22819 [#38] Status => Processing
6c504e5f9afb:22819 [#38] Loaded course [9700] 1st Year BA English (1st year BA English )
6c504e5f9afb:22819 [#38] Step 1. Backing up the current course
6c504e5f9afb:22819 [#38] Step 1 complete: rollover-backup-07-06-2022.mbz
6c504e5f9afb:22819 [#38] Step 2. Creating a new blank course
6c504e5f9afb:22819 [#38] Step 2 complete: 26189
6c504e5f9afb:22819 [#38] Step 3. Restoring the backup into the new blank course
6c504e5f9afb:22819 [#38] Step 3 complete
6c504e5f9afb:22819 [#38] Step 4. Resetting user data on the restored course
6c504e5f9afb:22819 [#38] Step 4 complete
6c504e5f9afb:22819 [#38] Step 5. Removing unwanted enrolments
6c504e5f9afb:22819 [#38] Unenrolled 133 users from restored course
6c504e5f9afb:22819 [#38] Step 5 complete
6c504e5f9afb:22819 [#38] Step 6. Applying portico mappings and updates to new course
6c504e5f9afb:22819 [#38] Status => Failed
6c504e5f9afb:22819 [#38] Error: Error writing to database
6c504e5f9afb:22819 [#38] Reverting rollover
6c504e5f9afb:22819 [#38] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=272975291
145ab30f313f:15046 Processing rollover request [#36]
145ab30f313f:15046 [#36] Status => Processing
145ab30f313f:15046 [#36] Loaded course [25897] Aurelie's test page for assessment testing (AS-ASSESSMENT-TESTS)
145ab30f313f:15046 [#36] Step 1. Backing up the current course
145ab30f313f:15046 [#36] Step 1 complete: rollover-backup-07-06-2022.mbz
145ab30f313f:15046 [#36] Step 2. Creating a new blank course
145ab30f313f:15046 [#36] Step 2 complete: 26187
145ab30f313f:15046 [#36] Step 3. Restoring the backup into the new blank course
145ab30f313f:15046 [#36] Status => Failed
145ab30f313f:15046 [#36] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
145ab30f313f:15046 
145ab30f313f:15046 [#36] Reverting rollover
145ab30f313f:15046 [#36] Deleting newly created course



https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=272760391
6c504e5f9afb:16739 [#25] Loaded course [10602] MPharm 2021 General Course Year 4 (MPharm-General-04_21-22)

6c504e5f9afb:16739 [#25] Step 6. Applying portico mappings and updates to new course
6c504e5f9afb:16739 [#25] Status => Failed
6c504e5f9afb:16739 [#25] Error: Error writing to database
6c504e5f9afb:16739 [#25] Reverting rollover
6c504e5f9afb:16739 [#25] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=272722070
45d1516c3327:856 [#21] Loaded course [9287] IfWH Graduate Taught Programmes Welcome 2021-22 (IfWH Graduate Taught Programmes Welcome 2021-22)

45d1516c3327:856 [#21] Step 6. Applying portico mappings and updates to new course
45d1516c3327:856 [#21] Status => Failed
45d1516c3327:856 [#21] Error: Error writing to database
45d1516c3327:856 [#21] Reverting rollover
45d1516c3327:856 [#21] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=272712648
45d1516c3327:28020 [#20] Loaded course [24699] TPPEDUSTRP01: STEP - PG Dip in Teaching and Reflective Practice Cohort 14 (21/22) (TPPEDUSTRP01_Cohort14_21/22)

45d1516c3327:28020 [#20] Step 6. Applying portico mappings and updates to new course
45d1516c3327:28020 [#20] Status => Failed
45d1516c3327:28020 [#20] Error: Error writing to database
45d1516c3327:28020 [#20] Reverting rollover
45d1516c3327:28020 [#20] Deleting newly created course


https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=272685698
6c504e5f9afb:11856 [#17] Loaded course [10602] MPharm 2021 General Course Year 4 (MPharm-General-04_21-22)

6c504e5f9afb:11856 [#17] Step 6. Applying portico mappings and updates to new course
6c504e5f9afb:11856 [#17] Status => Failed
6c504e5f9afb:11856 [#17] Error: Error writing to database
6c504e5f9afb:11856 [#17] Reverting rollover
6c504e5f9afb:11856 [#17] Deleting newly created course


https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=272679262
145ab30f313f:32590 Execute adhoc task: local_courserollover\task\adhoctask
145ab30f313f:32590 ... started 10:08:29. Current memory use 18.1MB.
145ab30f313f:32590 Processing rollover request [#16]
145ab30f313f:32590 [#16] Status => Processing
145ab30f313f:32590 [#16] Loaded course [10602] MPharm 2021 General Course Year 4 (MPharm-General-04_21-22)
145ab30f313f:32590 [#16] Step 1. Backing up the current course
145ab30f313f:32590 [#16] Step 1 complete: rollover-backup-06-06-2022.mbz
145ab30f313f:32590 [#16] Step 2. Creating a new blank course
145ab30f313f:32590 [#16] Step 2 complete: 26167
145ab30f313f:32590 [#16] Step 3. Restoring the backup into the new blank course
145ab30f313f:32590 [#16] Status => Failed
145ab30f313f:32590 [#16] Error: Cannot create local file pool directories. Please verify permissions in dataroot.
145ab30f313f:32590 [#16] Reverting rollover
145ab30f313f:32590 [#16] Deleting newly created course


https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=271358759
45d1516c3327:28350 [#11] Loaded course [25897] Aurelie's test page for assessment testing (AS-ASSESSMENT-TESTS)

45d1516c3327:28350 [#11] Step 7. Move old course to equivalent category
45d1516c3327:28350 [#11] Status => Failed
45d1516c3327:28350 [#11] Error: Could not move old course to category: error/Invalid Idnumber Format: 
45d1516c3327:28350 [#11] Reverting rollover
45d1516c3327:28350 [#11] Deleting newly created course


https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=271355854
145ab30f313f:24636 [#9] Loaded course [24496] PHDE0059 - Understanding Specific Learning Difficulties (Dyslexia)  2021/22 (PHDE0059_2122)

145ab30f313f:24636 [#9] Step 6. Applying portico mappings and updates to new course
145ab30f313f:24636 [#9] Status => Failed
145ab30f313f:24636 [#9] Error: Error writing to database
145ab30f313f:24636 [#9] Reverting rollover
145ab30f313f:24636 [#9] Deleting newly created course

https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=271333931
6c504e5f9afb:11845 [#7] Loaded course [24496] PHDE0059 - Understanding Specific Learning Difficulties (Dyslexia)  2021/22 (PHDE0059_2122)

6c504e5f9afb:11845 [#7] Status => Failed
6c504e5f9afb:11845 [#7] Error: turnitintooltwo/Could not update Turnitin Class data<br/><br/>Message: date_end - must be after the start date 
6c504e5f9afb:11845 
6c504e5f9afb:11845 [#7] Reverting rollover
6c504e5f9afb:11845 [#7] Deleting newly created course


https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=271299139
145ab30f313f:26683 [#4] Loaded course [24087] LT test Course - Aurelie Soulier 2021 (LT test Course - Aurelie Soulier 2021)

145ab30f313f:26683 [#4] Step 7. Move old course to equivalent category
145ab30f313f:26683 [#4] Status => Failed
145ab30f313f:26683 [#4] Error: Could not move old course to category: error/Invalid Idnumber Format: 
145ab30f313f:26683 [#4] Reverting rollover
145ab30f313f:26683 [#4] Deleting newly created course



https://moodle.ucl.ac.uk/admin/tasklogs.php?logid=271292252
6c504e5f9afb:9463 [#2] Loaded course [24087] LT test Course - Aurelie Soulier 2021 (LT test Course - Aurelie Soulier 2021)

6c504e5f9afb:9463 [#2] Step 7. Move old course to equivalent category
6c504e5f9afb:9463 [#2] Status => Failed
6c504e5f9afb:9463 [#2] Error: Could not move old course to category: error/Invalid Idnumber Format: 
6c504e5f9afb:9463 [#2] Reverting rollover
6c504e5f9afb:9463 [#2] Deleting newly created course
```
