# Moodle 4.x upgrade evaluation plan

**Purpose:**

As DLE team and PO we want to evaluate the impact of the upgrade to Moodle 4.2 and the introduction of the new theme. Ideally we want evidence of the improvement it has made to staff and students. We also want to identify issues which we can improve upon.

**Evaluation questions:**

1.  How are staff and students engaging with the new features of Moodle 4.2?
2.  How are staff and students engaging with the new features of the UCL theme?
3.  How has the upgrade to Moodle 4.2 improved the staff and student experience of using UCL Moodle? 
4.  How has the new theme improved the staff and student experience of using UCL Moodle? 
5.  What could be done to improve UCL Moodle further?

**Key Stakeholders:**

-   Students and staff.
-   Education Sponsors e.g. Kathryn Woods.
-   Faculty Learning Technology Leads
-   Moodle Development User Feedback group.

**Methods:**

To achieve this we will complete the following:

1.  Moodle questionnaire
2.  Microsoft Clarity heatmaps and metrics
3.  UX interviews - on course formats
4.  User group workshop
5.  Useability survey on new theme
6.  Ad hoc SQL queries
7.  ISD Service form - general service feedback

<table>
<thead>
<tr class="header">
<th>Approach</th>
<th>Description</th>
<th>Timeframe</th>
<th>Feedback type</th>
<th>With this feedback, we will:</th>
<th>JIRA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Moodle questionnaire/ campus fun vibe show real</td>
<td><p>UX team developed questionnaire released after staff and students have had  adequate time to use new theme. This could revise and reuse the <a href="https://forms.office.com/pages/responsepage.aspx?id=_oivH5ipW0yTySEKEdmlwmiGTP8t-7lPlESKuB1_XXxUNFNIUVNJNUZDTzlRMTU4VUNKOTdVNzhBMi4u">current feedback form</a>.</p>
<p>It will also involve an investigation of whether we can do a feedback survey that samples users on Moodle e.g. 1 in a 1000 users.</p></td>
<td>Nov/Dec 2023</td>
<td>Quantitative, user ratings and some open ended responses.</td>
<td><p>use it as evidence in our presentations and reports. </p>
<p>create user stories for future development</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td>Microsoft Clarity heatmaps and metrics</td>
<td><p>A heatmap analysis of the site home, dashboard and course page to evaluate how users are using theme elements. This is contingent on successful DPO approval.</p>
<p><br />
</p>
<p>Review in the demo.</p></td>
<td><p>Aug/September 2023</p>
<p>Ongoing.</p></td>
<td>Quantitative, heatmap.</td>
<td><p>use it as evidence in our presentations and reports. </p>
<p>create user stories for future development</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td>UX interviews</td>
<td>UX team will run a series of interviews with staff and students on course format.</td>
<td>Sept/October 2023</td>
<td>Interview recordings.</td>
<td><p>use it as evidence in our presentations and reports. </p>
<p>create user stories for future development</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td>User group workshop</td>
<td><div class="content-wrapper">
<p>The UX team will organise a Teams meeting with users from the Moodle Feedback Development group to share feedback and experiences from the upgrade. It will be helpful to establish the priorities of this group now that the upgrade has been complete, and how communication should take place. Making sure membership is current is also essential.</p>
</div>
<p>*Jason/Fraser - product engagement group might overlap here.</p></td>
<td>October 2023</td>
<td>Group discussion, workshop survey on Mentimeter.</td>
<td><p>Respond to common issues and concerns in the session.</p>
<p><br />
</p>
<p>Create user stories for future development</p></td>
<td><div class="content-wrapper">
<p>CTP-2537 - Re-engage Moodle feedback user group Done</p>
</div></td>
</tr>
<tr class="odd">
<td>Useability survey</td>
<td><div class="content-wrapper">
<p>Working with the Digital Presence team, we have already run a useability survey on the Moodle 3.11.</p>
<p><a href="/download/attachments/279515471/Product%20Usability%20-%20Moodle.pdf?version=1&amp;modificationDate=1690456374000&amp;api=v2"><img src="rest/documentConversion/latest/conversion/thumbnail/279515464/1" height="250" /></a></p>
<p><br />
</p>
<p>In 2024 we can re-run survey to investigate whether Moodle 4.2 and the new theme has impacted useability scores. Ideally we would run this survey periodically.  </p>
</div></td>
<td><p>November 2023</p>
<p>+1 month from major release, maybe January 2024</p></td>
<td>Quantitative</td>
<td>Benchmarking</td>
<td><div class="content-wrapper">
<p>CTP-2498 - Run Useability survey Done</p>
</div></td>
</tr>
<tr class="even">
<td>Adhoc SQL queries</td>
<td><p>SQL queries will be run to track key elements of the UCL Theme. Specifically, SQL queries on whether course images, course summaries, and course activity completion increases post start of semester 23-24. These features are promoted by the theme and will also form a key component of support and outreach for Digital Education alongside the new theme. This should be easy to query via Moodle course database tables.</p>
<p>We can also investigate key features of the Moodle 4 upgrade. Specifically, tracking user preferences to investigate whether users keep the course index menu visible on courses or tend to ignore it. It may be possible to query this via Moodle plugin tables, but likely it would need a logstore query to get accurate data. This will also be impacted by course format. Results can inform course design, support and can be fed back to Moodle HQ.</p>
<p><br />
</p></td>
<td>October 2023</td>
<td>Quantitative</td>
<td><p>use it as evidence in our presentations and reports. </p>
<p>Benchmarking.</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td>ISD service form</td>
<td><p>The service form has been added to the UCL Moodle footer. Whilst we don't expect a significant amount of traffic given its location, it should be checked as a source of general feedback.</p>
<p><br />
</p></td>
<td>July 2023 </td>
<td>Quantitative and open ended.</td>
<td><p>Benchmarking against other ISD services.</p>
<p>Create user stories for future development</p></td>
<td><p><br />
</p></td>
</tr>
</tbody>
</table>

**Outcomes**

The data collected through the methods above will be analysed into a short written report and slide show to present to key stakeholders.

Where actionable improvements are identified, Jira tickets will be created and prioritised according to impact.

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Product Usability - Moodle.pdf](attachments/279515471/279515464.pdf) (application/pdf)

