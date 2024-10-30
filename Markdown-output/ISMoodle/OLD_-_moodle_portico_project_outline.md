# OLD - moodle portico project outline

-   [Terminology](#OLDmoodleporticoprojectoutline-Terminology)
-   [What we do at the moment:](#OLDmoodleporticoprojectoutline-Whatwedoatthemoment:)
-   [What we want to do:](#OLDmoodleporticoprojectoutline-Whatwewanttodo:)
-   [Products (Key components to spec / design & build / develop & document / test)](#OLDmoodleporticoprojectoutline-Products(Keycomponentstospec/design&build/develop&document/test))
-   [Actions](#OLDmoodleporticoprojectoutline-Actions)
-   [Out of scope](#OLDmoodleporticoprojectoutline-Outofscope)
-   [Stakeholders](#OLDmoodleporticoprojectoutline-Stakeholders)
-   [Milestones/Dates](#OLDmoodleporticoprojectoutline-Milestones/Dates)
-   [items to go into bigger JISC bid ...](#OLDmoodleporticoprojectoutline-itemstogointobiggerJISCbid...)

#### Terminology

a Portico module is the same as a Moodle course.

#### What we do at the moment:

(This is documented elsewhere fully in the Moodle wiki space - [user account import](user_account_import)).

XML is exported from Portico via a nightly process and this includes students &lt;person&gt;, modules &lt;group&gt;, and the students on each module &lt;membership&gt;.

XML file is filtered by a C program (held on the moodle server) and a lot of the data is stripped out and remapped using a list of courses and modules.

The filtered data is read by Moodle's IMSenterprise enrolment plugin and is used to enrol any new students on the Moodle system if they don't yet exist and then enrol students on moodle courses (the Moodle courses have to be manually created first).

Students are registered in Moodle with their userids.

If a lecturer tries to export Moodle data, generally for grades, there is no way to map the data to Portico as Moodle uses userids and Portico uses another unique identifier (Student Number)

#### What we want to do:

Use existing nightly Portico XML file as the basis for the enrolment process as now but enhance it as follows:

Request PTS to add 'module tutor' into the Portico export which will then map to a new "course owner" role in Moodle. 

Import  the unique identifier for the student (UPI) into Moodle.

Pull a subset of the data from this XML file into a simple MySQL management database on the Moodle server, this database will be refreshed each night.

Create a new sits filter program to write out the XML file that Moodle uses based on mappings in the database.

Create a simple UCL tools item that displays mappings of Portico modules to Moodle courses to allow ATS and LTSS to monitor, report and manage where necessary. This will also allow the creation of non-Portico courses that can be mapped to multiple Portico modules.

Create a Moodle plugin that allows the lecturer to enrol Portico modules onto an existing course and change the mapping as needed.

Create a web form to allow tutors to become course owners for Moodle courses not yet in existence and select Portico modules to enrol. Assuming the Moodle course does not yet exist, it will be automatically created and students enrolled. Note that the newly created Moodle course is set to be 'hidden', ie not available to students. The lecturer can add content to the Moodle course and then make it available to students when they are ready.

In future if a lecturer wants to export data from Moodle it could potentially be uploaded into Portico as the Moodle student record will contain the UPI which can be mapped to the Portico student record.

#### Products (Key components to spec / design & build / develop & document / test)

1.  understand and document existing portico XML export - DONE
2.  SITS filter program (in ?) and management database (PHP/MySQL on moodle server) - combination of our existing approach (as described above) and Bath's SITS experience
3.  way of getting Portico unique identifier into Moodle student record
4.  get tutor info into portico XML file
5.  Moodle 'UCL Tools' admin web pages to manage and report mappings / enrolments (PHP/MySQL on moodle server)
6.  Moodle plugin for course owners to use within a course (PHP/MySQL on moodle server)
7.  creation of new 'course owner' role in Moodle
8.  Replacement for existing Moodle course request form (html web page that lecturers submit to LTSS) to automate Moodle course creation process
9.  Roll out plan to migrate from existing approach
10. Option to export Moodle data in a format suitable for Portico import
11. help files for users with Moodle

####  Actions

-   request PTS to alter Portico XML file (a one off file for testing initially)
-   ATS (with LTSS) spec and build additional MySQL database and script for filtering the Portico XML file and admin functions
-   ATS spec and build Moodle plugin that will use Portico data to allow lecturers to create Moodle course and register students
-   ATS look at format of exporting data from Moodle that could potentially be uploaded to Portico
-   LTSS write help files for lecturer to use new Moodle plugin and incorporate the new approach int

#### Out of scope

un-enrolling students from Moodle course - creation of groups

#### Stakeholders

-   Bryan Soloman - Portico Program Manager
-   Fiona Strawbridge - LTSS Manager (Moodle Service Manager)
-   Rachel Cooper - Academic Technical Services Manager (Moodle System Manager)
-   Deborah Tydings - Portico Technical Services Manager
-   Kathleen Nicholls - Registry

#### Milestones/Dates

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Date</p></th>
<th><p>What</p></th>
<th><p>Status</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Mon 22 March 2010</p></td>
<td><p>Pete show 1st draft of mockups of the Moodle 'portico block' to Fiona, Rachel, Matt</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
</tr>
<tr class="even">
<td><p>Thurs 15 April 2010</p></td>
<td><p>Pete/Matt present 2nd draft mockups for all screens Moodle/SITS</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>Thurs 29 April 2010</p></td>
<td><p>present Moodle/SITS work flows/mockups to LTSS/ATS and sign off</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>Mon 10 May 2010</p></td>
<td><p>Pete to report progress on build</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>Mon 24 May 2010</p></td>
<td><p>Pete to report progress on build</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>??</p></td>
<td><p>UAT - LTSS test product on Moodle dev server</p></td>
<td><p><br />
</p></td>
</tr>
</tbody>
</table>

#### items to go into bigger JISC bid ...

-   data analysis of the respective applications with a view to determining which system should master which pieces of information. Such analysis would therefore form the basis for the design of the interface(s).
-   Web services Vs views/overnight batches: Web services are more expensive to build than views and overnight batches, so the rationale for going down that route needs to be robust - probably need to factor that evaluation into the plan.
-   If reusable web service, what else can be factored in? eg timetable?

