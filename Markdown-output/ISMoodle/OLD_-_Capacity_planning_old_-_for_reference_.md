# OLD - Capacity planning (old - for reference)

-   1 [Moodle (Pete, with advice from LTSS)](#OLDCapacityplanning(oldforreference)-Moodle(Pete,withadvicefromLTSS))
-   2 [Executive summary (Moodle)](#OLDCapacityplanning(oldforreference)-Executivesummary(Moodle))
-   3 [Moodle Archive (Pete, with advice from LTSS)](#OLDCapacityplanning(oldforreference)-MoodleArchive(Pete,withadvicefromLTSS))
-   4 [Media storage (Rachel/Jason/Andy/Maurice, with advice on those involved in the media projects)](#OLDCapacityplanning(oldforreference)-Mediastorage(Rachel/Jason/Andy/Maurice,withadviceonthoseinvolvedinthemediaprojects))
-   5 [Myportfolio](#OLDCapacityplanning(oldforreference)-Myportfolio)
    -   5.1 [Summary](#OLDCapacityplanning(oldforreference)-Summary)
-   6 [wiki](#OLDCapacityplanning(oldforreference)-wiki)
-   7 [opinio](#OLDCapacityplanning(oldforreference)-opinio)
-   8 [blogs (Pete, with advice from Nick)](#OLDCapacityplanning(oldforreference)-blogs(Pete,withadvicefromNick))
-   9 [MySQL (moodledb and mysql-server) (Pete/Vivek)](#OLDCapacityplanning(oldforreference)-MySQL(moodledbandmysql-server)(Pete/Vivek))
-   10 [Subversion (ISD Subversion on wwwa-e server)](#OLDCapacityplanning(oldforreference)-Subversion(ISDSubversiononwwwa-eserver))
-   11 [Software database (Jo, with advice from Robert Silk)](#OLDCapacityplanning(oldforreference)-Softwaredatabase(Jo,withadvicefromRobertSilk))

# **Moodle** (Pete, with advice from LTSS)

Note that we are monitoring Moodle's data size on a monthly basis to try to assess growth. These figures may be amended over the next few months.

Moodle has the following requirements:

-   sufficiently powerful php web application servers for the load
-   sufficiently powerful database server
-   fast, plentiful, resilient and flexible disk space for file storage - it's essential we can add capacity as needed

### Autumn 2010

Typical day

-   650,000 page views
-   2.2 million hits
-   104GB of bandwidth used

##### How many courses do we currently have?

5600 courses in Moodle - many of these are test or non-live

##### Average size of each course?

The range varies spectacularly making an average somewhat misleading - for example, many test courses or new courses are empty and will sway the result. Courses with SCORM modules or video can be GB in size.

A 'typical' course contains pdfs, powerpoints, audio/video and uploaded assignments from students in various forms. If a tutor backs these up within Moodle this can double the disk space used within minutes.

-   ~70 courses consume greater than 1GB. These account for 152GB in total (average 2.15GB)
-   ~835 courses consume between 100MB and 1GB. These account for 248GB in total (average 300MB)
-   ~2530 courses consume between 1 MB and 100MB. These account for 62GB in total (average 25MB)
-   remaining are empty or less than 1MB

Moodledata also contains numerous temp folders. These account for around 5Gb space.

Total in use - 480GB or so.

##### There is no quota limit

##### storage limits on existing local hardware

1.1TB (remaining about 610GB)

### Future Predictions

#### Sept 2011 - Aug 2012

##### How many users/courses/survey/spaces do we expect?

LTSS estimate that we are about two thirds there with regards to the number of Portico modules in Moodle. If the present spread of folder sizes carries on - that would need around 720GB of disk space. It would be prudent to look at a terabyte as an initial minimum requirement with the flexibility to add more as needed.

##### Average size of each course?

impossible to say

#### Sept 2012 - Aug 2013

##### How many courses do we expect?

unlikely to increase over the 2011 number significantly - they may need more disk space however

##### Average size of each course?

Impossible to say

#### Notes on reasons for expected increase in usage/storage needs

-   All Portico modules require a Moodle presence. Initially this presence might be minimal but will grow in time
-   Assignments increasingly handled using Moodle and Turnitin
-   SCORM modules are very large
-   video / audio files are currently in Moodle in the absence of a media server - this would have an impact on file size
-   Moodle 2 handles files differently. We are not yet in a position to assess how this impacts storage requirements. Note that when we upgrade we will need to run Moodle 2 and 1.9.x in parallel for some time - effectively doubling our storage needs for that time

### Types of local files held on the server

-   assorted

### resilience level needed for service

-   needs to be 24 hour failsafe

# Executive summary (Moodle)

We estimate by Xmas 2011 we may have exceeded the current storage of 1TB. The ability to add extra storage in future is essential.

### priority for move from local servers to central filestore

# **Moodle Archive** (Pete, with advice from LTSS)

This is basically the same as Moodle for the year

##### Autumn 2010

A best guess is 600GB disk space. The size of the archive depends how well Moodle is managed. ie -if redundant courses are deleted. We could potentially require a extra terabyte per year.

### resilience level needed for service

not critical

### priority for move from local servers to central filestore

# **Media storage** (Rachel/Jason/Andy/Maurice, with advice on those involved in the media projects)

#### migrating XSAN (iTunes U content) to central storage

XSAN is 4.657TB in size. 2.347TB used / 2.310TB free.

Two folders are definitely "junk" or "junk candidates", which are:

-   /Volumes/SAN/Archive = 45GB
-   /Volumes/SAN/Podcast\_Project = 530GB

This leaves **1772GB in use and needing to be migrated. - AS**

#### Files uploaded by UCL Multimedia (to iTunes U and VOD streaming)

ISD Media Server storage space usage figures based on uploads of:

-   UCL Lunch Hour Lectures - normally around 34 per year *(Oct - Sept)*
-   Planned filmed events and lectures for UCL departments during the year - average of 4 per month
-   Media file uploads:
    -   Upload requests from UCL users and external affiliations
    -   Media file format conversions
    -   UCL Multimedia Productions

NB: *Current media file upload service is generally 'not advertised' across UCL. Service requests generated usually via 'word of mouth'*

**Usage Summary**

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Date/Term Period</p></th>
<th><p>Streaming VOD</p></th>
<th><p>iTunes U</p></th>
<th><p>Total Storage Space</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Actual 2010 <em>(Jan-Dec)</em></p></td>
<td><p>55.0 GB</p></td>
<td><p>65.0 GB</p></td>
<td><p><strong>110.0 GB</strong></p></td>
</tr>
<tr class="even">
<td><p>2010-2011 <em>(Oct-Sept)</em></p></td>
<td><p>80.0 GB</p></td>
<td><p>116.4 GB</p></td>
<td><p><strong>196.4 GB</strong></p></td>
</tr>
<tr class="odd">
<td><p>2011-2012 <em>(Oct-Sept)</em></p></td>
<td><p>90.2 GB</p></td>
<td><p>130.1 GB</p></td>
<td><p><strong>220.3 GB</strong></p></td>
</tr>
<tr class="even">
<td><p>2012-2013 <em>(Oct-Sept)</em></p></td>
<td><p>101.7 GB</p></td>
<td><p>145.4 GB</p></td>
<td><p><strong>247.1 GB</strong></p></td>
</tr>
</tbody>
</table>

Please see following report for full breakdown:

[ISD Media Servers - UCL Multimedia Storage Space Usage Report 2010 - 2013](https://wiki.ucl.ac.uk/pages/worddav/preview.action?fileName=ISD+Media+Servers+-+UCL+Multimedia+-+2010-2013+Space+Usage+Projections.docx&pageId=15536069)

**HD and Dynamic Streaming**

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Date/Term Period</p></th>
<th><p>Streaming VOD (HD/Dynamic)</p></th>
<th><p>iTunes U</p></th>
<th><p>Total Storage Space</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>2010-2011 <em>(Oct-Sept)</em></p></td>
<td><p>481.4 GB</p></td>
<td><p>116.4 GB</p></td>
<td><p><strong>597.8 GB</strong></p></td>
</tr>
<tr class="even">
<td><p>2011-2012 <em>(Oct-Sept)</em></p></td>
<td><p>542.7 GB</p></td>
<td><p>130.1 GB</p></td>
<td><p><strong>672.8 GB</strong></p></td>
</tr>
<tr class="odd">
<td><p>2012-2013 <em>(Oct-Sept)</em></p></td>
<td><p>612.1 GB</p></td>
<td><p>145.4 GB</p></td>
<td><p><strong>757.5 GB</strong></p></td>
</tr>
</tbody>
</table>

Please see following report for HD and dynamic streaming full breakdown :

[ISD Media Servers - UCL Multimedia - HD and Dynamic Streaming Capacity Report 2010 - 2013](https://wiki.ucl.ac.uk/pages/worddav/preview.action?fileName=ISD+Media+Servers+-+UCL+Multimedia+-+2010-2013+HD+and+Dynamic+Streaming+Capacity.docx&pageId=15536069)

#### mediacast going live and end users uploading their own content

guess ...

#### UCL Advances Video Portal *(Krista's Projections)*

These are Krista's projections based on a single HD video of 13 GB (approx. 300 MB when converted for streaming - 640 x 360)

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Year</p></th>
<th><p>Total Video Uploads</p></th>
<th><p>Original HD Video</p></th>
<th><p>Streaming Video Storage</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>2010 <em>(actual)</em></p></td>
<td><p>150</p></td>
<td><p>1950 GB</p></td>
<td><p>45 GB</p></td>
</tr>
<tr class="even">
<td><p>2011</p></td>
<td><p>60</p></td>
<td><p>780 GB</p></td>
<td><p>18 GB</p></td>
</tr>
<tr class="odd">
<td><p>2012</p></td>
<td><p>70</p></td>
<td><p>910 GB</p></td>
<td><p>21 GB</p></td>
</tr>
<tr class="even">
<td><p>2013</p></td>
<td><p>80</p></td>
<td><p>1040 GB</p></td>
<td><p>24 GB</p></td>
</tr>
</tbody>
</table>

NB: *Original HD videos will be deleted once streaming versions uploaded*

#### Lecturecast

so far (Dec 2010): with 20 devices (recorded 1000 hours of material (equates to &gt;12.5% utilisation of the system), where 1 hour = 1 Gb storage) = 1Tb storage (uncompressed)when compressed/retention switched on we should be able to half this = 500Gb for 1 terms recording

to take us through to summer 2011: with 20 recording devices, 1200 hours of material, where 1 hour 1Gb storage) = 1.2Tb
with retention/deletion/compression switched on half this = 600Gb (for spring term) + 500Gb (for autumn term) (assuming not much recording in 3rd summer term) = **1.1Tb to take us to end summer 2011**

to take us through to summer 2012: with 50 recording devices (recording 2 hours a day - 25% utilisation of the system) = 2.2Tb per term, 4.4Tb per year (as not much recording in 3rd term) + 1.2Tb (from 2011) = 5.6Tb

to take us through to summer 2013: with 50 recording devices (recording 4 hours a day - 50% utilisation of the system) = 8Tb per term, 16Tb per year (as not much recording in 3rd term) = 9.2Tb

#### Notes/Prompts/things to consider

-   Autumn/Winter 2010
    -   How many users/courses/survey/spaces do we currently have?
    -   Average size of each course/survey/space?
    -   Quota limit per user currently set (if appropriate)?
    -   storage limits on existing local hardware

<!-- -->

-   Sept 2011 - Aug 2012
    -   How many users/courses/survey/spaces do we expect?
    -   Average size of each course/survey/space?
    -   Future required quota limit per user (if appropriate)?

<!-- -->

-   Sept 2012 - Aug 2013
    -   How many users/courses/survey/spaces do we expect?
    -   Average size of each course/survey/space?
    -   Future required quota limit per user (if appropriate)?

<!-- -->

-   Notes on reasons for expected increase in usage/storage needs
-   Types of local files held on the server
-   resilience level needed for service

### priority for move from local servers to central filestore

# Myportfolio

(Adrian, with advice from LTSS)

## Summary

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>When</p></th>
<th><p>Estimated required storage needs</p></th>
<th><p>Number of users</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>current myportfolio storage on webapps-c (Jan 2011)</p></td>
<td><p>1.2 Gb</p></td>
<td><p>1,1117</p></td>
</tr>
<tr class="even">
<td><p>summer 2011</p></td>
<td><p>300 Gb</p></td>
<td><p>1,500</p></td>
</tr>
<tr class="odd">
<td><p>summer 2012</p></td>
<td><p>800 Gb</p></td>
<td><p>4,000</p></td>
</tr>
<tr class="even">
<td><p>summer 2013</p></td>
<td><p>1200 Gb</p></td>
<td><p>6,000</p></td>
</tr>
</tbody>
</table>

### Autumn 2010

##### How many users/artefacts do we currently have?

1063 /  7676

##### Average size of each artefact?

##### Quota limit per user currently set (if appropriate)?

500 Mb

##### storage limits on existing local hardware

### Future Predictions

#### Data points

At time of writing **there are no data points** re. Mahara user/artefact numbers.  This is because there is no user table that has a **useful** datestamp.  However these data points can be accumulated ad hoc:

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Date</p></th>
<th><p>t</p></th>
<th><p>Number of users</p></th>
<th><p>Number of Artefacts</p></th>
<th><p>Mb per user</p></th>
<th><p>Mb per artefact</p></th>
<th><p>Diskspace on /data/mahara</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>22-10-2009</p></td>
<td><p>t</p></td>
<td><p>1</p></td>
<td><p>Unknown</p></td>
<td><p>Unknown</p></td>
<td><p>Unknown</p></td>
<td><p>Unknown</p></td>
</tr>
<tr class="even">
<td><p>25-11-2010</p></td>
<td><p>t + 368</p></td>
<td><p>1063</p></td>
<td><p>7676</p></td>
<td><p>1 </p></td>
<td><p>0.13</p></td>
<td><p>??</p></td>
</tr>
<tr class="odd">
<td><p>30-11-2010</p></td>
<td><p>t + 373</p></td>
<td><p>1077</p></td>
<td><p>7855</p></td>
<td><p>unknown</p></td>
<td><p>unknown</p></td>
<td><p>1.2Gb</p></td>
</tr>
<tr class="even">
<td><p>04-01-2011</p></td>
<td><p>t + 407</p></td>
<td><p>1117</p></td>
<td><p>8384</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Summer 2011</p></td>
<td><p>??</p></td>
<td><p>1800</p></td>
<td><p>14400</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
</tbody>
</table>

Based upon these **crude** statistics usage is increasing at roughly 3/24 users/artefacts per day.

#### Sept 2011 - Aug 2012

##### How many users/artefacts/ do we expect?

2000/ 18000

##### Average size of each user/artefact?

1Mb/0.13Mb

##### Future required quota limit per user (if appropriate)? 

500Mb.

#### Sept 2012 - Aug 2013

##### How many users/artefacts/ do we expect?

##### Average size of each user/artefact?

##### Future required quota limit per user (if appropriate)?

#### Notes on reasons for expected increase in usage/storage needs

#### Retention policy

how many years will users files be kept for? For the students time at UCL or forever?

### Types of local files held on the server

Data files are stored in /data/mahara.  At 25-11-2010 this directory on webapps-c used 1021Mb.  As there were 7676 artefacts at that date that suggests 0.13Mb per artefact.  As there were 1063 users at that date that suggests roughly 1Mb per user disk storage.

### resilience level needed for service

### priority for move from local servers to central filestore

# **wiki**

### Autumn 2010

##### How many users/courses/survey/spaces do we currently have?

##### Average size of each course/survey/space?

wiki page text goes into mysql database

users can upload attachments, in Nov 2010 this is at 2.2Gb (attachments stored in webapps-a:/data/confluence/attachments)

##### Quota limit per user currently set (if appropriate)?

##### storage limits on existing local hardware

### Future Predictions

#### Sept 2011 - Aug 2012

##### How many users/courses/survey/spaces do we expect?

##### Average size of each course/survey/space?

##### Future required quota limit per user (if appropriate)?

#### Sept 2012 - Aug 2013

##### How many users/courses/survey/spaces do we expect?

##### Average size of each course/survey/space?

##### Future required quota limit per user (if appropriate)?

#### Notes on reasons for expected increase in usage/storage needs

### Types of local files held on the server

### resilience level needed for service

### priority for move from local servers to central filestore

# **opinio**

### Autumn 2010

##### How many users/courses/survey/spaces do we currently have?

##### Average size of each course/survey/space?

most survey info in mysql database, users can upload CSS, logos etc to add to their surveys but this is small (in Nov 2010 this is ~40Mb. webapps-c:/data/applications/tomcat/webapps/opinio/upload )

##### Quota limit per user currently set (if appropriate)?

##### storage limits on existing local hardware

### Future Predictions

#### Sept 2011 - Aug 2012

##### How many users/courses/survey/spaces do we expect?

##### Average size of each course/survey/space?

##### Future required quota limit per user (if appropriate)?

#### Sept 2012 - Aug 2013

##### How many users/courses/survey/spaces do we expect?

##### Average size of each course/survey/space?

##### Future required quota limit per user (if appropriate)?

#### Notes on reasons for expected increase in usage/storage needs

### Types of local files held on the server

### resilience level needed for service

### priority for move from local servers to central filestore

# **blogs** (Pete, with advice from Nick)

### Autumn 2010

##### How many blogs do we currently have?

If all the old ones are migrated - 60

##### Average size of each blog?

unknown

##### Quota limit per blog currently set

10Mb - seems extremely low.

##### storage limits on existing local hardware

unknown

### Future Predictions

#### Sept 2011 - Aug 2012

##### How many users/courses/survey/spaces do we expect?

2 to 3 requests per month - but bear in mind limited to teams / depts - so will not grow forever

##### Average size of each course/survey/space?

n/a

##### Future required quota limit per user (if appropriate)?

unknown

#### Sept 2012 - Aug 2013

same as 2011/12

##### How many users/courses/survey/spaces do we expect?

##### Average size of each course/survey/space?

##### Future required quota limit per user (if appropriate)?

#### Notes on reasons for expected increase in usage/storage needs

The limit of 10mb is unrealistic. 1gb perhaps.

### Types of local files held on the server

jpeg images - allowable types defined in the admin site of WP

### resilience level needed for service

not critical

### priority for move from local servers to central filestore

# **MySQL (moodledb and mysql-server)** (Pete/Vivek)

### Autumn 2010

##### How many databases do we currently have?

##### Average size of each database?

##### Quota limit per user currently set (if appropriate)?

##### storage limits on existing local hardware

### Future Predictions

#### Sept 2011 - Aug 2012

##### How many databases do we expect?

##### Average size of each database?

##### Future required quota limit per user (if appropriate)?

#### Sept 2012 - Aug 2013

##### How many databases do we expect?

##### Average size of each database?

##### Future required quota limit per user (if appropriate)?

#### Notes on reasons for expected increase in usage/storage needs

### Types of local files held on the server

### resilience level needed for service

### priority for move from local servers to central filestore

# **Subversion** (ISD Subversion on wwwa-e server)

### Autumn 2010

##### How many users/courses/survey/spaces do we currently have?

##### Average size of each course/survey/space?

##### Quota limit per user currently set (if appropriate)?

##### storage limits on existing local hardware

### Future Predictions

#### Sept 2011 - Aug 2012

##### How many users/courses/survey/spaces do we expect?

##### Average size of each course/survey/space?

##### Future required quota limit per user (if appropriate)?

#### Sept 2012 - Aug 2013

##### How many users/courses/survey/spaces do we expect?

##### Average size of each course/survey/space?

##### Future required quota limit per user (if appropriate)?

#### Notes on reasons for expected increase in usage/storage needs

### Types of local files held on the server

### resilience level needed for service

### priority for move from local servers to central filestore

# **Software database** (Jo, with advice from Robert Silk)

### Autumn 2010

##### How many users/courses/survey/spaces do we currently have?

##### Average size of each course/survey/space?

##### Quota limit per user currently set (if appropriate)?

##### storage limits on existing local hardware

### Future Predictions

#### Sept 2011 - Aug 2012

##### How many users/courses/survey/spaces do we expect?

##### Average size of each course/survey/space?

##### Future required quota limit per user (if appropriate)?

#### Sept 2012 - Aug 2013

##### How many users/courses/survey/spaces do we expect?

##### Average size of each course/survey/space?

##### Future required quota limit per user (if appropriate)?

#### Notes on reasons for expected increase in usage/storage needs

### Types of local files held on the server

### resilience level needed for service

### priority for move from local servers to central filestore

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [capacity planning templatete.txt](attachments/14613645/14714717.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Report.zip](attachments/14613645/14714728.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [lecturecast\_storage\_needs\_Design\_Authority\_Report\_V3-combined.pdf](attachments/14613645/14715292.pdf) (application/x-download)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236109.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236145.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236264.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236366.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236469.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236495.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236506.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236552.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236563.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236586.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236598.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236599.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236600.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236602.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236647.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236648.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236655.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236662.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236684.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [list of servers for possible virtualisation.xlsx](attachments/14613645/17236027.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)

