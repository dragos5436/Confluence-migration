# ISD-2629 - Prepare a build of Moodle for moodle snapshot

<https://moodle-snapshot.ucl.ac.uk/13-14>
<https://moodle-snapshot.ucl.ac.uk/14-15>
<https://moodle-snapshot.ucl.ac.uk/15-16/>
<https://moodle-snapshot.ucl.ac.uk/16-17/>
moodle.ucl.ac.uk
moodle-1819.ucl.ac.uk
Destination New Snapshot common Build
BUILD FILE STATUS
Folder hidden due to dependency install error
Folder hidden due to fatal error in phpunit test
Name
Version
Availability
Version
Availability
Version
Availability
Moodle
2.4.7
20131111
2.6.10
20150310
2.8.12
20160509
3.1.5+
20170316
3.1.5+
20170316
3.4.9
20190517
3.5.6
20190517
Included
Database backup time
10 minutes
15 minutes
1.5+ hour
2h
Restore database time
1/2+ hour
1/2+ hour
4+ hours
11 hours
Upgrade time to 3.5.6
1.5+ hour
1+ hour
1hour
1/2 hour
Running Replace tool
Activity Modules
Reading List items

mod\_aspirelist

2015012101
Enabled
2015012107
Enabled
2015052106
Enabled
2015052106
Enabled
2016121900
Enabled
included
Attendance

mod\_attforblock

2012120700
Disabled
Certificate

mod\_certificate

2013021200
Enabled
2014041804
Enabled
2014111001
Enabled
2016052300
Enabled
2016052300
Enabled
2016061700
Enabled
Included
Custom certificate

mod\_customcert

2017111308
Enabled
included
Group choice

mod\_choicegroup

2014010100
Enabled
2015121000
Enabled
2016113000
Enabled
2016113000
Enabled
2018070900
Enabled
included
Campus Pack Blog

mod\_cpblog

2015021920
Disabled
2015021920
Enabled
2016031713
Enabled
2016031713
Enabled
included
Campus Pack Content

mod\_cpcontentitem

2015021920
Disabled
2015021920
Enabled
2016031713
Enabled
2016031713
Enabled
included
/data/apache/moodle-vhosts/moodlesite-355-release-April-2019/mod/.cpcontentitem
Campus Pack Podcast

mod\_cppodcast

2015021920
Disabled
2015021920
Enabled
2016031713
Enabled
2016031713
Enabled
included
Campus Pack Journal

mod\_cpprivatejournal

2015021920
Disabled
2015021920
Enabled
2016031713
Enabled
2016031713
Enabled
included
Campus Pack Wiki

mod\_cpwiki

2015021920
Disabled
2015021920
Enabled
2016031713
Enabled
2016031713
Enabled
included
Blackboard Collaborate

mod\_elluminate

2014052101
Enabled
2014122200
Enabled
2016012000
Enabled
2016012000
Enabled
included
Blackboard Collaborate Ultra

mod\_collaborate

2016121300
Enabled
2016121300
Enabled
2018080800
Enabled
included
MediaCentral

mod\_helixmedia

2016011501
Enabled
2017013101
Disabled
2018080802
Enabled
2018121804
Enabled
Included
HotPot module

mod\_hotpot

2010080358
Enabled
2015021162
Enabled
2016011287
Enabled
2017021501
Enabled
2017021501
Enabled
2019012134
Enabled
included
Hot Question

mod\_hotquestion

2012050900
Enabled
2013081200
Enabled
2016041700
Enabled
2016100600
Enabled
2016100600
Enabled
2019021102
Enabled
included
Forum (Advanced)

mod\_hsuforum

2012112901
Enabled
2014021900
Enabled
2015052600
Enabled
2016121300
Enabled
2016121300
Enabled
2018080800
Enabled
included
H5P

mod\_hvp

2019031301
Enabled
included
Lightbox Gallery

mod\_lightboxgallery

2015091801
Enabled
2016110901
Enabled
2016110901
Enabled
2018062700
Enabled
included
Questionnaire

mod\_questionnaire

2013013000
Enabled
2014041804
Enabled
2014111004
Enabled
2016020206
Enabled
2016020206
Enabled
2017111108
Enabled
Included
Scheduler

mod\_scheduler

2012102800
Enabled
2013092704
Enabled
2014090102
Enabled
2016100402
Enabled
2016100402
Enabled
2018112700
Enabled
Included
Slideshow

mod\_slideshow

2012122900
Enabled
2012122900
Enabled
2012122900
Enabled
will not work on new moodle

<https://github.com/noparadise/moodle-mod_slideshow>

Assignment (Turnitin)

mod\_turnitintool

2012120408
Enabled
2015030301
Enabled
2015030305
Enabled
included
Turnitin Assignment 2

mod\_turnitintooltwo

2015040102
Enabled
2017022202
Enabled
2017031301
Enabled
2017080901
Enabled
2019012401
Enabled
Included
Assignment / Submission plugins

MediaCentral Assignment

assignsubmission\_helixassign

2015102001
Disabled
2017013101
Disabled
2017013101
2018121804
Disabled
Included
Assignment / Feedback plugins
MEDIAL Video Feedback

assignfeedback\_helixfeedback

2018121804
Disabled
included
Custom certificate / customcertelement
Background image

customcertelement\_bgimage

2017111300
Border

customcertelement\_border

2017111300
Category name

customcertelement\_categoryname

2017111300
Code

customcertelement\_code

2017111300
Course name

customcertelement\_coursename

2017111300
Date

customcertelement\_date

2017111300
Digital signature

customcertelement\_digitalsignature

2017111300
Grade

customcertelement\_grade

2017111300
Grade item name

customcertelement\_gradeitemname

2017111300
Image

customcertelement\_image

2017111300
Student name

customcertelement\_studentname

2017111300
Teacher name

customcertelement\_teachername

2017111300
Text

customcertelement\_text

2017111300
User field

customcertelement\_userfield

2017111300
User picture

customcertelement\_userpicture

2017111300
Blocks
Accessibility

block\_accessibility

2015011600
Disabled
2013070303
Enabled
Admin presets

block\_admin\_presets

2017103000
Disabled
2017103000
Enabled
included
Attendance

block\_attendance

2013070303
Enabled
Enabled
2016050900
Enabled
2016050900
Enabled
2018052100
Enabled
included
Configurable Reports

block\_configurable\_reports

2011040115
Enabled
Enabled
included
/data/apache/moodle-vhosts/moodlesite-355-release-April-2019/blocks/configurable\_reports

\[ccspmdd@moodle-01-u moodlesite-355-release-April-2019\]$ PHP Fatal error:  Trait 'block\_configurable\_reports\\privacy\\core\_privacy\\local\\legacy\_polyfill' not found in /data/apache/moodle-vhosts/moodlesite-355-release-April-2019/blocks/configurable\_reports/classes/privacy/provider.php on line 55

pull request exists for fix

<https://github.com/jleyva/moodle-block_configurablereports/pull/112>

Course Menu

block\_course\_menu

2013010801
Enabled
2014080100
Enabled
2015041000
Enabled
2016093000
Enabled
included
Course Visibility

block\_course\_visibility

2014102906
Enabled
2014102906
Enabled
2014102906
Enabled
2014102906
Enabled
2018032300
Enabled
included
Campus Pack

block\_cpfusion

2015021920
Disabled
2015021920
Enabled
2016031713
Enabled
2016031713
Enabled
included
Blackboard Collaborate

block\_elluminate

2014052101
Enabled
2014122200
Disabled
included
Hidden Course

block\_hidden\_course

2012020600
Enabled
2012020600
Disabled
included
Lecturecast Connector

block\_lecturecast\_connector

2017120700
Enabled
included
Library Resources

block\_library\_resources

2011100101
Enabled
2014112000
Enabled
2014112000
Enabled
2014112000
Enabled
2014112000
Enabled
2018032300
Enabled
Included
Library Search

block\_library\_search

2012013000
Enabled
2014112000
Enabled
2014112000
Enabled
2014112000
Enabled
2014112000
Enabled
2018091300
Enabled
Included
Bulk enrolments

block\_mass\_enroll

2011120100
Enabled
2011120100
Enabled
included
Portico Enrolments

block\_portico\_enrolments

2015012700
Disabled
2015081000
Disabled
2015081000
Disabled
2015081000
Enabled
2018083100
Enabled
included
Quickmail

block\_quickmail

2013022214
Enabled
2014042914
Enabled
2015122912
Enabled
2015122912
Enabled
2015122912
Enabled
2017122001
Enabled
included
Common Timetable

block\_timetable

2012020300
Enabled
2014112000
Enabled
2014112000
Enabled
2014112000
Enabled
2014112000
Enabled
2018032300
Enabled
included
Turnitin block

block\_turnitin

2016011105
Disabled
2016011105
Disabled
2018121801
Disabled
included
Question Types
algebra

qtype\_algebra

2012061701
2014110800
Enabled
2016012400
Enabled
2016012400
Enabled
2016012400
Enabled
2019020201
Enabled
included
Drag and drop onto image

qtype\_ddimageortext

2013031400
2014111200
Enabled
2016012400
Enabled
2016012300
Enabled
2016012300
Enabled
2016012301
Enabled
included
Drag and drop markers

qtype\_ddmarker

2013031400
2015031800
Enabled
2015031800
Enabled
included
Drag-and-Drop Matching

qtype\_ddmatch

2014110900
Enabled
2016012300
Enabled
included
Drag and drop into text

qtype\_ddwtos

2013031400
2015031800
Enabled
2015031800
Enabled
included
Gapfill

qtype\_gapfill

2006082514
Enabled
2006082518
Enabled
2017013100
Enabled
2017013100
Enabled
2019021600
Enabled
included
Select missing words

qtype\_gapselect

2013031400
2015031800
Enabled
2015031800
Enabled
included
Javascript Molecular Editor

qtype\_jme

2015050600
Enabled
2015050600
Enabled
2015050600
Enabled
2015050600
Enabled
2015050600
Enabled
included
All-or-Nothing Multiple Choice

qtype\_multichoiceset

2015040100
Enabled
2016012300
Enabled
2016012300
Enabled
2016012300
Enabled
2019012901
Enabled
included
Multinumerical

qtype\_multinumerical

2014082500
Enabled
2015101400
Enabled
2016120100
Enabled
2016120100
Enabled
2018050801
Enabled
included
Pattern match

qtype\_pmatch

2015051000
Enabled
2015070900
Enabled
2016080400
Enabled
2016080400
Enabled
2018111900
Enabled
included
Pattern match with molecular editor

qtype\_pmatchjme

2015051000
Enabled
2015051000
Enabled
2015061100
Enabled
2015061100
Enabled
2018111900
Enabled
included
Regular expression short answer

qtype\_regexp

2013111801
Enabled
2014073001
Enabled
2016113000
Enabled
2016113000
Enabled
2018050801
Enabled
included
Variable numeric

qtype\_varnumeric

2014111200
Enabled
2014111200
Enabled
2014111200
Enabled
2014111200
Enabled
2018112000
Enabled
included
Variable numeric set

qtype\_varnumericset

2015051000
Enabled
2015051000
Enabled
2015051000
Enabled
2015051000
Enabled
2018112000
Enabled
included
Variable numeric set with units

qtype\_varnumunit

2014111200
Enabled
2014111200
Enabled
2014111200
Enabled
2014111200
Enabled
2018112000
Enabled
included
vmatching

qtype\_vmatch

2012061700
Enabled
2012061700
Enabled
2012061700
Enabled
2012061700
Enabled
2012061700
Enabled
included
Regular expression short answer

qtype\_regexp

2012102900
included
Question Behaviors
RegExp Adaptive mode with Help

qbehaviour\_regexpadaptivewithhelp

2013040900
2013111800
Enabled
2014073000
Enabled
2016113000
Enabled
2016113000
Enabled
2018050801
Enabled
included
RegExp Adaptive mode with Help (no penalties)

qbehaviour\_regexpadaptivewithhelpnopenalty

2013040900
2013111800
Enabled
2014073000
Enabled
2016113000
Enabled
2016113000
Enabled
2018050801
Enabled
included
Question import/export formats
Hot Potatoes XML format

qformat\_hotpot

2010112413
2014083116
Enabled
2014083116
2014083116
2014083116
Enabled
2018052520
included
Microsoft Word table format (wordtable)

qformat\_wordtable

2013020501
2015031101
Enabled
2015121501
2017010501
2017010501
Enabled
2018052520
included
Text filters
GeSHi

filter\_geshi

2014011000
Disabled
only existed on one instance and disabled
Jmol

filter\_jmol

2013121500
Enabled
2016011200
Enabled
2016011200
Enabled
2016011200
Enabled
2016050100
Enabled
included
Atto HTML editor / Atto plugins

Font family
atto\_fontfamily

2015051500
2015051500
2015051500
2015051500
included
Font size
atto\_fontsize

2015042701
2015042701
2015042701
2015042701
included
MediaCentral
atto\_helixatto

2016011501
2017013101
2017013101
included
Toggle full screen

atto\_fullscreen

2015122006
included
HTMLPlus
atto\_htmlplus

2015082100
2015082100
2015082100
2018090400
included
Image drag & drop
atto\_imagedragdrop

2014031802
2014031802
2014031802
included
More font colors
atto\_morefontcolors

2016010600
2016113000
2016113000
2018050202
included
Paste special
atto\_pastespecial

2016031100
2016031100
2016031100
2016031100
included
TinyMCE HTML editor / Plugins
Insert MediaCentral Resource
tinymce\_helixmedia

2016011501
Disabled
2017013101
Enabled
2017013101
Enabled
included
Enrolment methods
DB User role assignment
enrol\_dbuserrel

2014051500
Enabled
2014051500
Enabled
2014051500
Enabled
2014051500
Enabled
included
Admin tools
Course Bank

tool\_coursebank

2016062800
Enabled
2016062800
Enabled
included
Authentication methods
Outage manager

auth\_outage

2019022200
Enabled
included
Course formats
Grid format

format\_grid

2014042304
Enabled
2015040302
Enabled
2016060702
Enabled
2016060702
Enabled
2017111804
Enabled
included
Tabs format

format\_onetopic

2012112601
2015011805
Enabled
2016071401
Enabled
2016071401
Enabled
2018010606
Enabled
included
Collapsed Topics

format\_topcoll

2014041802
Enabled
2015042003
Enabled
2016052303
Enabled
2016052303
Enabled
2017110303
Enabled
included
HotPot module / Output formats
Hot Potatoes output formats

hotpotattempt\_hp

2010112400
2010112400
2010112400
2010112400
2010112400
HTML output formats

hotpotattempt\_html

2010112400
2010112400
2010112400
2010112400
2010112400
Qedoc output formats

hotpotattempt\_qedoc

2010112400
2010112400
2010112400
2010112400
2010112400
HotPot module / Source files
Hot Potatoes source files

hotpotsource\_hp

2010112400
2010112400
2010112400
2010112400
2010112400
HTML source files

hotpotsource\_html

2010112400
2010112400
2010112400
2010112400
2010112400
Qedoc source files

hotpotsource\_qedoc

2010112400
2010112400
2010112400
2010112400
2010112400
HotPot module / Reports
Statistical analysis report

hotpotreport\_analysis

2010112400
2010112400
2010112400
2010112400
2010112400
Click trail report

hotpotreport\_clicktrail

2010112400
2010112400
2010112400
2010112400
2010112400
Overview report

hotpotreport\_overview

2010112400
2010112400
2010112400
2010112400
2010112400
Responses report

hotpotreport\_responses

2010112400
2010112400
2010112400
2010112400
2010112400
Scores report

hotpotreport\_scores

2010112400
2010112400
2010112400
2010112400
2010112400
Local plugins
Code checker
local\_codechecker

2016031400
2016093000
2016093000
2019011800
included
Cohort role synchronization

local\_cohortrole

2019013100
included
Login Hub (Redirection Intervention)
local\_hub

2018053000
included
Mass enrolments

local\_mass\_enroll

2012101009
2012101009
2015092401
2015092401
2015092401
included
Course Migration Tool
local\_migratecourses

2018071301
2018071301
included
Profile switches

local\_profileswitches

2012092101
2012092101
2012092101
2012092101
2012092101
included
Respository file upload

local\_repositoryfileupload

2015052900
2015052900
2015052900
2015052900
2018032300
included
Test accounts automation

local\_testaccount\_automation

2014100200
2014100200
2014100200
2014100200
2018121700
included
UCL tools

local\_ucl\_tools

2015060300
2015060300
2015060300
2015060300
2018032300
included
UCL User profile fields import
local\_userprofilefields\_import

2015032500
2015032500
2015032500
2019030800
included
Quiz/Reports
Flash apocalypse

report\_apocalypse

2019022001
included
Ad-hoc database queries
report\_customsql

2015071000
2016080300
2016080300
2018112200
included
CBM Summary

quiz\_cbmgrades

2014082400
2014082500
2014082500
2014082500
2018051800
included
File trash
report\_filetrash

2015102401
2015102401
2015102401
2015102401
included
My feedback

report\_myfeedback

2016112900
2016112900
2017020102
2017020102
2018052900
included
Grade book reports
My feedback report

gradereport\_myfeedbacklink

2015100200
2015100200
2018031100
included
Plagiarism plugins
Turnitin plagiarism plugin

plagiarism\_turnitin

2017022201
2017022201
2019031301
included
Document converters
Microsoft OneDrive

fileconverter\_onedrive

2018121301
Enabled
included

|        |            |
|--------|------------|
| 3.1.5+ | 2016052305 |

2016113000
