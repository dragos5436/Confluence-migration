# Ugrade new settings

## Advanced features

\[\[enableglobalsearch\]\]enableglobalsearch     no

 

## General backup defaults

Include groups and groupings  - yes

## General import defaults

Allow admin conflict resolution - no

## Automated backup setup

Delete backups older than - never

Minimum number of backups kept - none

Include groups and groupings - yes

## General settings

User menu grades link - overview report

External URL - empty

## Competencies settings

Enable competencies - yes

Push course ratings to individual learning plans - yes

## Location settings

Default timezone - europe london

## \[\[commonactivitysettings\]\]

Require activity description - no

## Reading List items

Require resource list description - no

## Assignment settings

\[\[maxperpage\]\] - \[\[unlimitedpages\]\]

\[\[preventsubmissionnotingroup\]\] - no

## File submissions

Maximum files per submission - 20

## Book

\[\[navoptions\]\] - all

\[\[navstyle\]\] - \[\[navimages\]\]

## Folder

\[\[maxsizetodownload\]\] - empty

## Forum

\[rsstypedefault\]\] - none

Number of RSS recent articles - 0

## Forum (Advanced)

\[rsstypedefault\]\] - none

Number of RSS recent articles - 0

## Lesson

File pop-upmod\_lesson | mediafile

 Advanced
Default: None, Advanced

To include a pop-up window at the beginning of a lesson, choose the appropriate file to display. Every lesson page will include a link to re-open the pop-up if necessary.

Progress barmod\_lesson | progressbar

 Advanced
Default: No

If enabled, a bar is displayed at the bottom of lesson pages showing approximate percentage of completion.

Display ongoing scoremod\_lesson | ongoing

 Advanced
Default: No, Advanced

If enabled, each page will display the student's current points earned out of the total possible thus far.

Display menumod\_lesson | displayleftmenu

 Advanced
Default: No

If enabled, a menu allowing users to navigate through the list of pages is displayed.

Minimum grade to display menumod\_lesson | displayleftif

 Advanced
Default: 0%, Advanced

This setting determines whether a student must obtain a certain grade before viewing the lesson menu. This forces the student to go through the entire lesson on their first attempt, then after obtaining the required grade they can use the menu for review.

Slideshowmod\_lesson | slideshow

 Advanced
Default: No, Advanced

If enabled, the lesson is displayed as a slideshow, with a fixed width and height.

Use default feedbackmod\_lesson | defaultfeedback

 Advanced
Default: No, Advanced

If enabled, when a response is not found for a particular question, the default response of "That's the correct answer" or "That's the wrong answer" will be shown.

Link to next activitymod\_lesson | activitylink

 Advanced
Default: None, Advanced

\[\[timelimit\]\]mod\_lesson | timelimit

\[\[durationunits\]\]

 Advanced
Default: None

\[\[configtimelimit\_desc\]\]

Passwordmod\_lesson | password

 Advanced
Default: No, Advanced

\[\[configpassword\_desc\]\]

Allow student reviewmod\_lesson | modattempts

 Advanced
Default: No

If enabled, students can navigate through the lesson again from the start.

Provide option to try a question againmod\_lesson | displayreview

 Advanced
Default: No

If enabled, when a question is answered incorrectly, the student is given the option to try it again for no point credit, or continue with the lesson.

Maximum number of attemptsmod\_lesson | maximumnumberofattempts

 Advanced
Default: 1

This setting specifies the maximum number of attempts allowed for each question. If answered incorrectly repeatedly, when the maximum is reached, the next page of the lesson is displayed.

Number of pages to showmod\_lesson | numberofpagestoshow

 Advanced
Default: 1, Advanced

This setting specifies the number of pages shown in a lesson. It is only applicable for lessons with pages shown in a random order (when "Action after correct answer" is set to "Show an unseen page" or "Show an unanswered page"). If set to zero, then all pages are shown.

Practice lessonmod\_lesson | practice

 Advanced
Default: No

A practice lesson does not appear in the gradebook.

Custom scoringmod\_lesson | customscoring

 Advanced
Default: Yes, Advanced

If enabled, then each answer may be given a numerical point value (positive or negative).

Re-takes allowedmod\_lesson | retakesallowed

 Advanced
Default: No

If enabled, students can attempt the lesson more than once.

Handling of re-takesmod\_lesson | handlingofretakes

 Advanced
Default: Use mean, Advanced

If re-takes are allowed, this setting specifies whether the grade for the lesson is the mean or maximum of all attempts.

Minimum number of questionsmod\_lesson | minimumnumberofquestions

 Advanced
Default: 0, Advanced

This setting specifies the minimum number of questions that will be used to calculate a grade for the activity.

 

## New settings - Questionnaire

\[\[configmaxsections\]\]questionnaire | maxsections

Default: 10

## New settings - Quiz

\[\[canredoquestions\]\]quiz | canredoquestions

 Advanced
Default: No, Advanced

\[\[canredoquestions\_desc\]\]

\[\[initialnumfeedbacks\]\]quiz | initialnumfeedbacks

Default: 2

\[\[initialnumfeedbacks\_desc\]\]

## New settings - File

\[\[showdate\]\]resource | showdate

Default: No

\[\[showdate\_desc\]\]

## New settings - SCORM package

\[\[masteryoverride\]\]scorm | masteryoverride

Default: Yes

\[\[masteryoverridedesc\]\]

\[\[protectpackagedownloads\]\]scorm | protectpackagedownloads

Default: No

\[\[protectpackagedownloads\_desc\]\]

## New settings - Recycle bin

Enable course recycle bintool\_recyclebin | coursebinenable

## Default: No

Item lifetimetool\_recyclebin | coursebinexpiry

\[\[durationunits\]\]

Default: 1 weeks

How long should a deleted item remain in the recycle bin?

Enable category recycle bintool\_recyclebin | categorybinenable

Default: Yes

Course lifetimetool\_recyclebin | categorybinexpiry

\[\[durationunits\]\]

Default: 1 weeks

How long should a deleted course remain in the recycle bin?

Auto hidetool\_recyclebin | autohide

Default: Yes

Automatically hides the recycle bin link when the bin is empty.

## New settings - Manage authentication

Allow accounts with same emailallowaccountssameemail

Default: No

If enabled, more than one user account can share the same email address. This may result in security or privacy issues, for example with the password change confirmation email.

Limit concurrent loginslimitconcurrentlogins

Default: No

If enabled the number of concurrent browser logins for each user is restricted. The oldest session is terminated after reaching the limit, please note that users may lose all unsaved work. This setting is not compatible with single sign-on (SSO) authentication plugins.

## New settings - Grid format

Fit section container to window by defaultformat\_grid | defaultfitsectioncontainertowindow

Default: No

The default setting for 'Fit section container to window'.

## New settings - Publish as LTI tool

Email displayenrol\_lti | emaildisplay

Default: Allow only other course members to see my email address

City/townenrol\_lti | city

Default: Empty

Select a countryenrol\_lti | country

Default: United Kingdom

Timezoneenrol\_lti | timezone

Default: \[\[timezoneserver\]\]

Preferred languageenrol\_lti | lang

Default: English (en)

Institutionenrol\_lti | institution

Default: Empty

## New settings - Course meta link

Sort course listenrol\_meta | coursesort

Default: Sort order

This determines whether the list of courses that can be linked are sorted by sort order (i.e. the order set in Site administration &gt; Courses &gt; Manage courses and categories) or alphabetically by course setting.

## New settings - Email

SMTP Auth Typesmtpauthtype

Default: LOGIN

This sets the authentication type to use on smtp server.

## New settings - \[\[globalsearchmanage\]\]

\[\[selectsearchengine\]\]searchengine

Default: Solr

\[\[search:activity\]\]mod\_assign | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_book | search\_activity\_enabled

Default: Yes

\[\[search:chapter\]\]mod\_book | search\_chapter\_enabled

Default: Yes

\[\[search:activity\]\]mod\_chat | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_choice | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_feedback | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_folder | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_forum | search\_activity\_enabled

Default: Yes

\[\[search:post\]\]mod\_forum | search\_post\_enabled

Default: Yes

\[\[search:activity\]\]mod\_glossary | search\_activity\_enabled

Default: Yes

\[\[search:entry\]\]mod\_glossary | search\_entry\_enabled

Default: Yes

\[\[search:activity\]\]mod\_imscp | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_label | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_lesson | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_lti | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_page | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_quiz | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_resource | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_scorm | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_survey | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_url | search\_activity\_enabled

Default: Yes

\[\[search:activity\]\]mod\_wiki | search\_activity\_enabled

Default: Yes

\[\[search:collaborative\_page\]\]mod\_wiki | search\_collaborative\_page\_enabled

Default: Yes

\[\[search:activity\]\]mod\_workshop | search\_activity\_enabled

Default: Yes

My coursescore\_search | core\_course\_mycourse\_enabled

Default: Yes

## New settings - Table settings

Allow border stylingatto\_table | allowborders

## Default: Yes

If enabled, table and cell borders can be customised.

Allow background colouratto\_table | allowbackgroundcolour

## Default: Yes

Allow widthatto\_table | allowwidth

## Default: Yes

## New settings - Site policies

\[\[passwordreuselimit\]\]passwordreuselimit

Default: 0

\[\[passwordreuselimit\_desc\]\]

\[\[passwordchangelogout\]\]passwordchangelogout

Default: No

\[\[passwordchangelogout\_desc\]\]

 

## Clean

Small logo - empty

Display site name along with small logo - yes

## More

Small logo - empty

Display site name along with small logo - yes

## New settings - Navigation

\[\[linkcoursesections\]\]linkcoursesections

Default: No

\[\[linkcoursesections\_help\]\]

## New settings - System paths

\[\[pathtounoconv\]\]pathtounoconv

✘

Default: /usr/bin/unoconv

\[\[pathtounoconv\_help\]\]

## New settings - Cleanup

\[\[tempdatafoldercleanup\]\]tempdatafoldercleanup

Default: 7 days

\[\[configtempdatafoldercleanup\]\]

 

## New settings - Lightbox Gallery

Disabled pluginslightboxgallery | disabledplugins

-   Caption
-   Crop
-   Delete
-   Flip
-   Resize
-   Rotate
-   Tag
-   Thumbnail

Default: None

Select the image editing plugins you want to disable.

Enable RSS feedslightboxgallery | enablerssfeeds

Default: No

Allow RSS feeds to be generated from galleries.

 
