# Read-only Moodle plug-in Testing

Testing Site: [https://359phpu.moodle-01-u.ucl.ac.uk/](https://359phpu.moodle-01-u.ucl.ac.uk/?redirect=0)  - Moodle version 3.5.9

Users: two student accounts: student1 and student2 and one teacher account: teacher (passwords same as the admin one)

Testing issues:

-   TurnItIn was not configured so I could not test for Moodle assignments and Moodle assignments with TurnItIn backend
-   Blackboard Collaborate was not configured so I could not test for Collaborate sessions

General Findings:

-   Surprisingly, I only get the notification that the site is in read-only mode only when I am logged in as the admin. When you are logged in as a user you do not see that and when you try to do things that break it (see below), you do not even get an error message; → DK to log upstream on github
-   The option for not allowing the user to select if they want to be subscribed to a forum is not controlled by permissions so although we can prohibit alllowforcesubscribe for roles the option for subscribing to a forum still shows up and if the user selects it nothing happens (no error message, they even get a confirmation that the settings have been saved). We could either bulk update mdl\_forum for forcesubscribe and mdl\_forum\_subscriptions, mdl\_forum\_digests and mdl\_forum\_discussion\_subs so that all subscriptions are removed and as subscription is now disabled the message goes away or we can just leave it there and as there are not going to be any new posts and the cron is not running on snapshots there is no difference really; → This is not an issue because the **cron will be disabled** as part of the change so no emails from forums will be going out.
-   The HotQuestion module offers an option for starting a new round of questions which cannot be removed through permissions as if we do that the users will get a permission denied error messge. In this case I got past it by adding the following CSS line in custom CSS for the Boost theme: 

    ``` java
    #toolbar {display: none !important;}
    ```

Georgios Lekeas What about permission changes for student role?

Alistair Spark: Please see below, just needed to do the final testing, all good and I am moving testing to PP now.

There are 734 permissions that need to change to prohibit for the tutor role (called editing teacher in the testing snapshot) - these are:

|                                              |            |
|----------------------------------------------|------------|
| Capability                                   | Permission |
| moodle/blog:manageentries                    | Prohibit   |
| modole/blog:manageexternal                   | Prohibit   |
| moodle/community:add                         | Prohibit   |
| moodle/community:download                    | Prohibit   |
| moodle/portfolio:export                      | Prohibit   |
| moodle/tag:editblocks                        | Prohibit   |
| atto/heloxatto:visible                       | Prohibit   |
| block/attendance:addinstance                 | Prohibit   |
| block/quickmail:allowalternate               | Prohibit   |
| block/quickmail:canconfig                    | Prohibit   |
| block/quickmail:cansend                      | Prohibit   |
| enrol/category:config                        | Prohibit   |
| enrol/database:config                        | Prohibit   |
| enrol/guest:config                           | Prohibit   |
| enrol/imsenterprise:config                   | Prohibit   |
| enrol/imsenterprise:unenrol                  | Prohibit   |
| enrol/lti:config                             | Prohibit   |
| enrol/lti:unenrol                            | Prohibit   |
| enrol/manual:enrol                           | Prohibit   |
| enrol/manual:manage                          | Prohibit   |
| enrol/manual:unenrol                         | Prohibit   |
| enrol/meta:config                            | Prohibit   |
| enrol/mnet:config                            | Prohibit   |
| enrol/paypal:manage                          | Prohibit   |
| enrol/self:config                            | Prohibit   |
| enrol/self:manage                            | Prohibit   |
| enrol/self:unenrol                           | Prohibit   |
| format/grid:changeimagecontaineralignment    | Prohibit   |
| format/grid:changeimagecontainernavigation   | Prohibit   |
| format/grid:changeimagecontainersize         | Prohibit   |
| format/grid:changeimagecontainerstyle        | Prohibit   |
| format/grid:changeimageresizemethod          | Prohibit   |
| format/grid:changesectiontitleoptions        | Prohibit   |
| format/topcoll:changecolour                  | Prohibit   |
| format/topcoll:changelayout                  | Prohibit   |
| format/topcoll:changetogglealignment         | Prohibit   |
| format/topcoll:changetoggleiconset           | Prohibit   |
| gradeimport/csv:view                         | Prohibit   |
| gradeimport/direct:view                      | Prohibit   |
| gradeimport/xml:view                         | Prohibit   |
| local/mass\_enroll:enrol                     | Prohibit   |
| local/mass\_enroll:unenrol                   | Prohibit   |
| local/repositoryfileupload:delete            | Prohibit   |
| local/repositoryfileupload:upload            | Prohibit   |
| local/testaccount\_automation:create         | Prohibit   |
| mod/aspirelist:addinstance                   | Prohibit   |
| mod/assign:addinstance                       | Prohibit   |
| mod/assignment:addinstance                   | Prohibit   |
| mod/attendance:addinstance                   | Prohibit   |
| mod/book:addinstance                         | Prohibit   |
| mod/certificate:addinstance                  | Prohibit   |
| mod/chat:addinstance                         | Prohibit   |
| mod/checklist:addinstance                    | Prohibit   |
| mod/choice:addinstance                       | Prohibit   |
| mod/collaborate:addinstance                  | Prohibit   |
| mod/collaborate:deleterecordings             | Prohibit   |
| mod/customcert:addinstance                   | Prohibit   |
| mod/customcert:manageemailothers             | Prohibit   |
| mod/customcert:manageemailstudents           | Prohibit   |
| mod/customcert:manageemailteachers           | Prohibit   |
| mod/customcert:manageprotection              | Prohibit   |
| mod/customcert:managerequiredtime            | Prohibit   |
| mod/customcert:manageverifyany               | Prohibit   |
| mod/data:addinstance                         | Prohibit   |
| mod/elluminate:addinstance                   | Prohibit   |
| mod/feedback:addinstance                     | Prohibit   |
| mod/folder:addinstance                       | Prohibit   |
| mod/forum:addinstance                        | Prohibit   |
| mod/glossary:addinstance                     | Prohibit   |
| mod/helixmedia:addinstance                   | Prohibit   |
| mod/hotpot:addinstance                       | Prohibit   |
| mod/hotquestion:addinstance                  | Prohibit   |
| mod/hsuforum:addinstance                     | Prohibit   |
| mod/hvp:addinstance                          | Prohibit   |
| mod/imscp:addinstance                        | Prohibit   |
| mod/label:addinstance                        | Prohibit   |
| mod/lesson:addinstance                       | Prohibit   |
| mod/lightboxgallery:addinstance              | Prohibit   |
| mod/lti:addcoursetool                        | Prohibit   |
| mod/lti:addinstance                          | Prohibit   |
| mod/lti:requesttooladd                       | Prohibit   |
| mod/page:addinstance                         | Prohibit   |
| mod/questionnaire:addinstance                | Prohibit   |
| mod/quiz:addinstance                         | Prohibit   |
| mod/resource:addinstance                     | Prohibit   |
| mod/scorm:addinstance                        | Prohibit   |
| mod/survey:addinstance                       | Prohibit   |
| mod/url:addinstance                          | Prohibit   |
| mod/wiki:addinstance                         | Prohibit   |
| mod/workshop:addinstance                     | Prohibit   |
| moodle/analytics:listinsights                | Prohibit   |
| moodle/backup:backupcourse                   | Prohibit   |
| moodle/backup:backupsection                  | Prohibit   |
| moodle/backup:backuptargethub                | Prohibit   |
| moodle/backup:backuptargetimport             | Prohibit   |
| moodle/backup:configure                      | Prohibit   |
| moodle/badges:awardbadge                     | Prohibit   |
| moodle/badges:configurecriteria              | Prohibit   |
| moodle/badges:configuredetails               | Prohibit   |
| moodle/badges:configuremessages              | Prohibit   |
| moodle/badges:createbadge                    | Prohibit   |
| moodle/badges:deletebadg                     | Prohibit   |
| moodle/badges:revokebadge                    | Prohibit   |
| moodle/calendar:manageentries                | Prohibit   |
| moodle/calendar:managegroupentries           | Prohibit   |
| moodle/cohort:view                           | Prohibit   |
| moodle/comment:delete                        | Prohibit   |
| moodle/comment:post                          | Prohibit   |
| moodle/competency:competencygrade            | Prohibit   |
| moodle/competency:coursecompetencymanage     | Prohibit   |
| moodle/course:bulkmessaging                  | Prohibit   |
| moodle/course:changecategory                 | Prohibit   |
| moodle/course:changefullname                 | Prohibit   |
| moodle/course:changeidnumber                 | Prohibit   |
| moodle/course:changeshortname                | Prohibit   |
| moodle/course:changesummary                  | Prohibit   |
| moodle/course:enrolconfig                    | Prohibit   |
| moodle/course:enrolreview                    | Prohibit   |
| moodle/course:managefiles                    | Prohibit   |
| moodle/course:managegroups                   | Prohibit   |
| moodle/course:managescales                   | Prohibit   |
| moodle/course:markcomplete                   | Prohibit   |
| moodle/course:movesections                   | Prohibit   |
| moodle/course:overridecompletion             | Prohibit   |
| moodle/course:renameroles                    | Prohibit   |
| moodle/course:reset                          | Prohibit   |
| moodle/course:reviewotherusers               | Prohibit   |
| moodle/course:sectionvisibility              | Prohibit   |
| moodle/course:setcurrentsection              | Prohibit   |
| moodle/course:setforcedlanguage              | Prohibit   |
| moodle/course:tag                            | Prohibit   |
| moodle/course:update                         | Prohibit   |
| moodle/course:useremail                      | Prohibit   |
| moodle/course:visibility                     | Prohibit   |
| moodle/filter:manage                         | Prohibit   |
| moodle/grade:edit                            | Prohibit   |
| moodle/grade:hide                            | Prohibit   |
| moodle/grade:import                          | Prohibit   |
| moodle/grade:lock                            | Prohibit   |
| moodle/grade:manage                          | Prohibit   |
| moodle/grade:managegradingforms              | Prohibit   |
| moodle/grade:manageletters                   | Prohibit   |
| moodle/grade:manageoutcomes                  | Prohibit   |
| moodle/grade:unlock                          | Prohibit   |
| moodle/notes:manage                          | Prohibit   |
| moodle/question:add                          | Prohibit   |
| moodle/question:editall                      | Prohibit   |
| moodle/question:editmine                     | Prohibit   |
| moodle/question:flag                         | Prohibit   |
| moodle/question:managecategory               | Prohibit   |
| moodle/question:moveall                      | Prohibit   |
| moodle/question:movemine                     | Prohibit   |
| moodle/question:tagall                       | Prohibit   |
| moodle/question:tagmine                      | Prohibit   |
| moodle/question:useall                       | Prohibit   |
| moodle/question:usemine                      | Prohibit   |
| moodle/rating:rate                           | Prohibit   |
| moodle/restore:configure                     | Prohibit   |
| moodle/restore:restoreactivity               | Prohibit   |
| moodle/restore:restorecourse                 | Prohibit   |
| moodle/restore:restoresection                | Prohibit   |
| moodle/restore:restoretargethub              | Prohibit   |
| moodle/restore:restoretargetimport           | Prohibit   |
| moodle/restore:uploadfile                    | Prohibit   |
| moodle/restore:viewautomatedfilearea         | Prohibit   |
| moodle/role:assign                           | Prohibit   |
| moodle/role:safeoverride                     | Prohibit   |
| moodle/role:switchroles                      | Prohibit   |
| plagiarism/turnitin:enable                   | Prohibit   |
| tool/monitor:managerules                     | Prohibit   |
| tool/monitor:subscribe                       | Prohibit   |
| tool/recyclebin:deleteitems                  | Prohibit   |
| tool/recyclebin:restoreitems                 | Prohibit   |
| assignsubmission/helixassign:can\_use        | Prohibit   |
| mod/assign:grade                             | Prohibit   |
| mod/assign:grantextension                    | Prohibit   |
| mod/assign:manageallocations                 | Prohibit   |
| mod/assign:managegrades                      | Prohibit   |
| mod/assign:manageoverrides                   | Prohibit   |
| mod/assign:receivegradernotifications        | Prohibit   |
| mod/assign:releasegrades                     | Prohibit   |
| mod/assign:revealidentities                  | Prohibit   |
| mod/assign:reviewgrades                      | Prohibit   |
| mod/assignment:grade                         | Prohibit   |
| mod/attendance:changeattendances             | Prohibit   |
| mod/attendance:changepreferences             | Prohibit   |
| mod/attendance:manageattendances             | Prohibit   |
| mod/attendance:managetemporaryusers          | Prohibit   |
| mod/attendance:takeattendances               | Prohibit   |
| mod/attendance:warningemails                 | Prohibit   |
| mod/book:edit                                | Prohibit   |
| mod/certificate:manage                       | Prohibit   |
| mod/certificate:printteacher                 | Prohibit   |
| mod/chat:chat                                | Prohibit   |
| mod/chat:deletelog                           | Prohibit   |
| mod/checklist:edit                           | Prohibit   |
| mod/checklist:emailoncomplete                | Prohibit   |
| mod/checklist:preview                        | Prohibit   |
| mod/checklist:updatelocked                   | Prohibit   |
| mod/checklist:updateother                    | Prohibit   |
| mod/choice:choose                            | Prohibit   |
| mod/choice:deleteresponses                   | Prohibit   |
| mod/choicegroup:addinstance                  | Prohibit   |
| mod/choicegroup:choose                       | Prohibit   |
| mod/choicegroup:deleteresponses              | Prohibit   |
| mod/collaborate:moderate                     | Prohibit   |
| mod/collaborate:participate                  | Prohibit   |
| mod/cpblog:addinstance                       | Prohibit   |
| mod/cppodcast:addinstance                    | Prohibit   |
| mod/cpprivatejournal:addinstance             | Prohibit   |
| mod/cpwiki:addinstance                       | Prohibit   |
| mod/customcert:manage                        | Prohibit   |
| mod/customcert:verifycertificate             | Prohibit   |
| mod/data:approve                             | Prohibit   |
| mod/data:comment                             | Prohibit   |
| mod/data:managecomments                      | Prohibit   |
| mod/data:manageentries                       | Prohibit   |
| mod/data:managetemplates                     | Prohibit   |
| mod/data:rate                                | Prohibit   |
| mod/data:writeentry                          | Prohibit   |
| mod/elluminate:convertallrecordings          | Prohibit   |
| mod/elluminate:convertownrecordings          | Prohibit   |
| mod/elluminate:deleterecordings              | Prohibit   |
| mod/elluminate:editallrecordings             | Prohibit   |
| mod/elluminate:editownrecordings             | Prohibit   |
| mod/elluminate:enablerecordings              | Prohibit   |
| mod/elluminate:joinmeeting                   | Prohibit   |
| mod/elluminate:manage                        | Prohibit   |
| mod/elluminate:manageattendance              | Prohibit   |
| mod/elluminate:managemoderators              | Prohibit   |
| mod/elluminate:manageparticipants            | Prohibit   |
| mod/elluminate:managepreloads                | Prohibit   |
| mod/elluminate:managerecordings              | Prohibit   |
| mod/elluminate:moderatemeeting               | Prohibit   |
| mod/feedback:createprivatetemplate           | Prohibit   |
| mod/feedback:createpublictemplate            | Prohibit   |
| mod/feedback:deletesubmissions               | Prohibit   |
| mod/feedback:deletetemplate                  | Prohibit   |
| mod/feedback:edititems                       | Prohibit   |
| mod/feedback:receivemail                     | Prohibit   |
| mod/folder:managefiles                       | Prohibit   |
| mod/forum:addnews                            | Prohibit   |
| mod/forum:addquestion                        | Prohibit   |
| mod/forum:allowforcesubscribe                | Prohibit   |
| mod/forum:canoverridediscussionlock          | Prohibit   |
| mod/forum:canposttomygroups                  | Prohibit   |
| mod/forum:createattachment                   | Prohibit   |
| mod/forum:deleteanypost                      | Prohibit   |
| mod/forum:deleteownpost                      | Prohibit   |
| mod/forum:editanypost                        | Prohibit   |
| mod/forum:exportdiscussion                   | Prohibit   |
| mod/forum:exportownpost                      | Prohibit   |
| mod/forum:exportpost                         | Prohibit   |
| mod/forum:managesubscriptions                | Prohibit   |
| mod/forum:movediscussions                    | Prohibit   |
| mod/forum:pindiscussions                     | Prohibit   |
| mod/forum:postwithoutthrottling              | Prohibit   |
| mod/forum:rate                               | Prohibit   |
| mod/forum:replynews                          | Prohibit   |
| mod/forum:replypost                          | Prohibit   |
| mod/forum:splitdiscussions                   | Prohibit   |
| mod/forum:startdiscussion                    | Prohibit   |
| mod/glossary:approve                         | Prohibit   |
| mod/glossary:comment                         | Prohibit   |
| mod/glossary:import                          | Prohibit   |
| mod/glossary:managecategories                | Prohibit   |
| mod/glossary:managecomments                  | Prohibit   |
| mod/glossary:manageentries                   | Prohibit   |
| mod/glossary:rate                            | Prohibit   |
| mod/glossary:write                           | Prohibit   |
| mod/helixmedia:manage                        | Prohibit   |
| mod/hotpot:attempt                           | Prohibit   |
| mod/hotpot:deleteallattempts                 | Prohibit   |
| mod/hotpot:deletemyattempts                  | Prohibit   |
| mod/hotpot:manage                            | Prohibit   |
| mod/hotquestion:ask                          | Prohibit   |
| mod/hotquestion:manage                       | Prohibit   |
| mod/hotquestion:vote                         | Prohibit   |
| mod/hsuforum:addnews                         | Prohibit   |
| mod/hsuforum:addquestion                     | Prohibit   |
| mod/hsuforum:allowforcesubscribe             | Prohibit   |
| mod/hsuforum:allowprivate                    | Prohibit   |
| mod/hsuforum:canoverridediscussionlock       | Prohibit   |
| mod/hsuforum:canposttomygroups               | Prohibit   |
| mod/hsuforum:createattachment                | Prohibit   |
| mod/hsuforum:deleteanypost                   | Prohibit   |
| mod/hsuforum:deleteownpost                   | Prohibit   |
| mod/hsuforum:editanypost                     | Prohibit   |
| mod/hsuforum:managesubscriptions             | Prohibit   |
| mod/hsuforum:movediscussions                 | Prohibit   |
| mod/hsuforum:pindiscussions                  | Prohibit   |
| mod/hsuforum:postwithoutthrottling           | Prohibit   |
| mod/hsuforum:rate                            | Prohibit   |
| mod/hsuforum:replynews                       | Prohibit   |
| mod/hsuforum:replypost                       | Prohibit   |
| mod/hsuforum:revealpost                      | Prohibit   |
| mod/hsuforum:splitdiscussions                | Prohibit   |
| mod/hsuforum:startdiscussion                 | Prohibit   |
| mod/hvp:manage                               | Prohibit   |
| mod/hvp:savecontentuserdata                  | Prohibit   |
| mod/lesson:edit                              | Prohibit   |
| mod/lesson:grade                             | Prohibit   |
| mod/lesson:manage                            | Prohibit   |
| mod/lesson:manageoverrides                   | Prohibit   |
| mod/lightboxgallery:addcomment               | Prohibit   |
| mod/lightboxgallery:addimage                 | Prohibit   |
| mod/lightboxgallery:edit                     | Prohibit   |
| mod/lightboxgallery:submit                   | Prohibit   |
| mod/questionnaire:deleteresponses            | Prohibit   |
| mod/questionnaire:editquestions              | Prohibit   |
| mod/questionnaire:manage                     | Prohibit   |
| mod/questionnaire:message                    | Prohibit   |
| mod/questionnaire:submissionnotification     | Prohibit   |
| mod/quiz:deleteattempts                      | Prohibit   |
| mod/quiz:grade                               | Prohibit   |
| mod/quiz:manage                              | Prohibit   |
| mod/quiz:manageoverrides                     | Prohibit   |
| mod/quiz:regrade                             | Prohibit   |
| mod/scorm:deleteresponses                    | Prohibit   |
| mod/scorm:savetrack                          | Prohibit   |
| mod/survey:participate                       | Prohibit   |
| mod/turnitintool:addinstance                 | Prohibit   |
| mod/turnitintooltwo:addinstance              | Prohibit   |
| mod/turnitintooltwo:grade                    | Prohibit   |
| mod/wiki:createpage                          | Prohibit   |
| mod/wiki:editcomment                         | Prohibit   |
| mod/wiki:editpage                            | Prohibit   |
| mod/wiki:managecomment                       | Prohibit   |
| mod/wiki:managefiles                         | Prohibit   |
| mod/wiki:managewiki                          | Prohibit   |
| mod/wiki:overridelock                        | Prohibit   |
| mod/workshop:allocate                        | Prohibit   |
| mod/workshop:deletesubmissions               | Prohibit   |
| mod/workshop:editdimensions                  | Prohibit   |
| mod/workshop:ignoredeadlines                 | Prohibit   |
| mod/workshop:manageexamples                  | Prohibit   |
| mod/workshop:overridegrades                  | Prohibit   |
| mod/workshop:publishsubmissions              | Prohibit   |
| mod/workshop:switchphase                     | Prohibit   |
| moodle/backup:backupactivity                 | Prohibit   |
| moodle/course:activityvisibility             | Prohibit   |
| moodle/course:ignoreavailabilityrestrictions | Prohibit   |
| moodle/course:manageactivities               | Prohibit   |
| moodle/site:trustcontent                     | Prohibit   |
| repository/coursefiles:view                  | Prohibit   |
| repository/filesystem:view                   | Prohibit   |
| repository/local:view                        | Prohibit   |
| repository/webdav:view                       | Prohibit   |
| block/activity\_modules:addinstance          | Prohibit   |
| block/activity\_results:addinstance          | Prohibit   |
| block/admin\_bookmarks:addinstance           | Prohibit   |
| block/badges:addinstance                     | Prohibit   |
| block/blog\_menu:addinstance                 | Prohibit   |
| block/blog\_recent:addinstance               | Prohibit   |
| block/blog\_tags:addinstance                 | Prohibit   |
| block/calendar\_month:addinstance            | Prohibit   |
| block/calendar\_upcoming:addinstance         | Prohibit   |
| block/comments:addinstance                   | Prohibit   |
| block/community:addinstance                  | Prohibit   |
| block/completionstatus:addinstance           | Prohibit   |
| block/configurable\_reports:addinstance      | Prohibit   |
| block/configurable\_reports:myaddinstance    | Prohibit   |
| block/course\_list:addinstance               | Prohibit   |
| block/course\_menu:addinstance               | Prohibit   |
| block/course\_summary:addinstance            | Prohibit   |
| block/course\_visibility:addinstance         | Prohibit   |
| block/cpfusion:addinstance                   | Prohibit   |
| block/elluminate:addinstance                 | Prohibit   |
| block/feedback:addinstance                   | Prohibit   |
| block/globalsearch:addinstance               | Prohibit   |
| block/glossary\_random:addinstance           | Prohibit   |
| block/hidden\_course:addinstance             | Prohibit   |
| block/html:addinstance                       | Prohibit   |
| block/library\_resources:addinstance         | Prohibit   |
| block/library\_search:addinstance            | Prohibit   |
| block/login:addinstance                      | Prohibit   |
| block/mentees:addinstance                    | Prohibit   |
| block/mnet\_hosts:addinstance                | Prohibit   |
| block/myoverview:addinstance                 | Prohibit   |
| block/myprofile:addinstance                  | Prohibit   |
| block/navigation:addinstance                 | Prohibit   |
| block/news\_items:addinstance                | Prohibit   |
| block/online\_users:addinstance              | Prohibit   |
| block/online\_users:viewlist                 | Prohibit   |
| block/participants:addinstance               | Prohibit   |
| block/portico\_enrolments:mappingeditor      | Prohibit   |
| block/private\_files:addinstance             | Prohibit   |
| block/quickmail:addinstance                  | Prohibit   |
| block/quiz\_results:addinstance              | Prohibit   |
| block/recent\_activity:addinstance           | Prohibit   |
| block/rss\_client:addinstance                | Prohibit   |
| block/rss\_client:manageownfeeds             | Prohibit   |
| block/search\_forums:addinstance             | Prohibit   |
| block/section\_links:addinstance             | Prohibit   |
| block/selfcompletion:addinstance             | Prohibit   |
| block/settings:addinstance                   | Prohibit   |
| block/site\_main\_menu:addinstance           | Prohibit   |
| block/social\_activities:addinstance         | Prohibit   |
| block/tag\_flickr:addinstance                | Prohibit   |
| block/tag\_youtube:addinstance               | Prohibit   |
| block/tags:addinstance                       | Prohibit   |
| block/timetable:addinstance                  | Prohibit   |
| block/turnitin:addinstance                   | Prohibit   |
| moodle/block:edit                            | Prohibit   |
| moodle/site:manageblocks                     | Prohibit   |
| moodle/course:changecategory                 | Prohibit   |
| oodle/course:changefullname                  | Prohibit   |
| moodle/course:bulkmessaging                  | Prohibit   |
| moodle/competency:coursecompetencymanage     | Prohibit   |
| moodle/competency:competencygrade            | Prohibit   |
| moodle/comment:post                          | Prohibit   |
| moodle/comment:delete                        | Prohibit   |
| moodle/calendar:manageentries                | Prohibit   |
| moodle/calendar:managegroupentries           | Prohibit   |
| moodle/badges:deletebadge                    | Prohibit   |
| moodle/badges:createbadge                    | Prohibit   |
| moodle/badges:configuremessages              | Prohibit   |
| moodle/badges:configuredetails               | Prohibit   |
| moodle/badges:configurecriteria              | Prohibit   |
| moodle/badges:awardbadge                     | Prohibit   |
| moodle/backup:configure                      | Prohibit   |
| moodle/backup:backuptargetimport             | Prohibit   |
| moodle/backup:backuptargethub                | Prohibit   |
| moodle/backup:backupsection                  | Prohibit   |
| moodle/backup:backupcourse                   | Prohibit   |
| moodle/badges:revokebadge                    | Prohibit   |
| moodle/course:changeidnumber                 | Prohibit   |
| moodle/course:changeshortname                | Prohibit   |
| moodle/course:changesummary                  | Prohibit   |
| oodle/course:enrolconfig                     | Prohibit   |
| moodle/course:enrolreview                    | Prohibit   |
| moodle/course:managefiles                    | Prohibit   |
| moodle/course:managegroups                   | Prohibit   |
| moodle/course:managescales                   | Prohibit   |
| moodle/course:markcomplete                   | Prohibit   |
| moodle/course:movesections                   | Prohibit   |
| moodle/course:overridecompletion             | Prohibit   |
| moodle/course:renameroles                    | Prohibit   |
| moodle/course:reset                          | Prohibit   |
| moodle/course:reviewotherusers               | Prohibit   |
| moodle/course:sectionvisibility              | Prohibit   |
| moodle/course:setcurrentsection              | Prohibit   |
| moodle/course:setforcedlanguage              | Prohibit   |
| moodle/course:tag                            | Prohibit   |
| moodle/course:update                         | Prohibit   |
| moodle/course:useremail                      | Prohibit   |
| moodle/course:visibility                     | Prohibit   |
| moodle/filter:manage                         | Prohibit   |
| moodle/grade:edit                            | Prohibit   |
| moodle/grade:hide                            | Prohibit   |
| moodle/grade:import                          | Prohibit   |
| moodle/grade:lock                            | Prohibit   |
| moodle/grade:manage                          | Prohibit   |
| moodle/grade:managegradingforms              | Prohibit   |
| moodle/grade:manageletters                   | Prohibit   |
| moodle/grade:manageoutcomes                  | Prohibit   |
| moodle/grade:unlock                          | Prohibit   |
| moodle/notes:manage                          | Prohibit   |
| moodle/question:add                          | Prohibit   |
| moodle/question:editall                      | Prohibit   |
| moodle/question:editmine                     | Prohibit   |
| moodle/question:flag                         | Prohibit   |
| moodle/question:managecategory               | Prohibit   |
| moodle/question:moveall                      | Prohibit   |
| moodle/question:movemine                     | Prohibit   |
| moodle/question:tagall                       | Prohibit   |
| moodle/question:tagmine                      | Prohibit   |
| moodle/question:useall                       | Prohibit   |
| moodle/question:usemine                      | Prohibit   |
| moodle/rating:rate                           | Prohibit   |
| moodle/restore:configure                     | Prohibit   |
| moodle/restore:restoreactivity               | Prohibit   |
| moodle/restore:restorecourse                 | Prohibit   |
| moodle/restore:restoresection                | Prohibit   |
| moodle/restore:restoretargethub              | Prohibit   |
| moodle/restore:restoretargetimport           | Prohibit   |
| moodle/restore:rolldates                     | Prohibit   |
| moodle/restore:uploadfile                    | Prohibit   |
| moodle/restore:userinfo                      | Prohibit   |
| moodle/restore:viewautomatedfilearea         | Prohibit   |
| moodle/role:assign                           | Prohibit   |
| moodle/role:override                         | Prohibit   |
| moodle/role:review                           | Prohibit   |
| moodle/role:safeoverride                     | Prohibit   |
| moodle/role:switchroles                      | Prohibit   |
| enrol/category:config                        | Prohibit   |
| mod/attendance:changeattendances             | Prohibit   |
| mod/attendance:changepreferences             | Prohibit   |
| mod/attendance:manageattendances             | Prohibit   |
| mod/attendance:managetemporaryusers          | Prohibit   |
| mod/attendance:takeattendances               | Prohibit   |
| mod/forum:addnews                            | Prohibit   |
| mod/forum:addquestion                        | Prohibit   |
| mod/forum:allowforcesubscribe                | Prohibit   |
| mod/forum:canoverridediscussionlock          | Prohibit   |
| mod/forum:canposttomygroups                  | Prohibit   |
| mod/forum:createattachment                   | Prohibit   |
| mod/forum:deleteanypost                      | Prohibit   |
| mod/forum:deleteownpost                      | Prohibit   |
| mod/forum:managesubscriptions                | Prohibit   |
| mod/forum:movediscussions                    | Prohibit   |
| mod/forum:pindiscussions                     | Prohibit   |
| mod/forum:postwithoutthrottling              | Prohibit   |
| mod/forum:rate                               | Prohibit   |
| mod/forum:replynews                          | Prohibit   |
| mod/forum:replypost                          | Prohibit   |
| mod/forum:splitdiscussions                   | Prohibit   |
| mod/forum:startdiscussion                    | Prohibit   |
| mod/forum:viewsubscribers                    | Prohibit   |
| mod/hsuforum:addinstance                     | Prohibit   |
| mod/hsuforum:addnews                         | Prohibit   |
| mod/hsuforum:addquestion                     | Prohibit   |
| mod/hsuforum:allowforcesubscribe             | Prohibit   |
| mod/hsuforum:allowprivate                    | Prohibit   |
| mod/hsuforum:canoverridediscussionlock       | Prohibit   |
| mod/hsuforum:canposttomygroups               | Prohibit   |
| mod/hsuforum:createattachment                | Prohibit   |
| mod/hsuforum:deleteanypost                   | Prohibit   |
| mod/hsuforum:deleteownpost                   | Prohibit   |
| mod/hsuforum:editanypost                     | Prohibit   |
| mod/hsuforum:managesubscriptions             | Prohibit   |
| mod/hsuforum:movediscussions                 | Prohibit   |
| mod/hsuforum:pindiscussions                  | Prohibit   |
| mod/hsuforum:postwithoutthrottling           | Prohibit   |
| mod/hsuforum:rate                            | Prohibit   |
| mod/hsuforum:replynews                       | Prohibit   |
| mod/hsuforum:replypost                       | Prohibit   |
| mod/hsuforum:revealpost                      | Prohibit   |
| mod/hsuforum:splitdiscussions                | Prohibit   |
| mod/hsuforum:startdiscussion                 | Prohibit   |
| mod/choice:addinstance                       | Prohibit   |
| mod/choice:choose                            | Prohibit   |
| mod/choice:deleteresponses                   | Prohibit   |
| mod/choicegroup:addinstance                  | Prohibit   |
| mod/choicegroup:choose                       | Prohibit   |
| mod/choicegroup:deleteresponses              | Prohibit   |
| mod/customcert:manage                        | Prohibit   |
| mod/customcert:verifycertificate             | Prohibit   |
| mod/data:approve                             | Prohibit   |
| mod/data:comment                             | Prohibit   |
| mod/data:managecomments                      | Prohibit   |
| mod/data:manageentries                       | Prohibit   |
| mod/data:managetemplates                     | Prohibit   |
| mod/data:manageuserpresets                   | Prohibit   |
| mod/data:rate                                | Prohibit   |
| mod/data:writeentry                          | Prohibit   |
| mod/elluminate:convertallrecordings          | Prohibit   |
| mod/elluminate:convertownrecordings          | Prohibit   |
| mod/elluminate:deleteanyrecordings           | Prohibit   |
| mod/elluminate:deleterecordings              | Prohibit   |
| mod/elluminate:editallrecordings             | Prohibit   |
| mod/elluminate:editownrecordings             | Prohibit   |
| mod/elluminate:enablerecordings              | Prohibit   |
| mod/elluminate:manage                        | Prohibit   |
| mod/elluminate:manageanyrecordings           | Prohibit   |
| mod/elluminate:manageattendance              | Prohibit   |
| mod/elluminate:managemoderators              | Prohibit   |
| mod/elluminate:manageparticipants            | Prohibit   |
| mod/elluminate:managepreloads                | Prohibit   |
| mod/elluminate:managerecordings              | Prohibit   |
| mod/elluminate:moderatemeeting               | Prohibit   |
| mod/feedback:addinstance                     | Prohibit   |
| mod/feedback:complete                        | Prohibit   |
| mod/feedback:createprivatetemplate           | Prohibit   |
| mod/feedback:createpublictemplate            | Prohibit   |
| mod/feedback:deletesubmissions               | Prohibit   |
| mod/feedback:deletetemplate                  | Prohibit   |
| mod/feedback:edititems                       | Prohibit   |
| mod/feedback:mapcourse                       | Prohibit   |
| mod/feedback:receivemail                     | Prohibit   |
| mod/folder:managefiles                       | Prohibit   |
| mod/glossary:approve                         | Prohibit   |
| mod/glossary:comment                         | Prohibit   |
| mod/glossary:import                          | Prohibit   |
| mod/glossary:managecategories                | Prohibit   |
| mod/glossary:managecomments                  | Prohibit   |
| mod/glossary:manageentries                   | Prohibit   |
| mod/glossary:rate                            | Prohibit   |
| mod/glossary:write                           | Prohibit   |
| mod/hotpot:attempt                           | Prohibit   |
| mod/hotpot:deleteallattempts                 | Prohibit   |
| mod/hotpot:deletemyattempts                  | Prohibit   |
| mod/hotpot:manage                            | Prohibit   |
| mod/hotpot:preview                           | Prohibit   |
| mod/hotquestion:ask                          | Prohibit   |
| mod/hotquestion:manage                       | Prohibit   |
| mod/hotquestion:vote                         | Prohibit   |
| mod/hvp:getembedcode                         | Prohibit   |
| mod/hvp:getexport                            | Prohibit   |
| mod/hvp:manage                               | Prohibit   |
| mod/hvp:savecontentuserdata                  | Prohibit   |
| mod/hvp:saveresults                          | Prohibit   |
| mod/lesson:edit                              | Prohibit   |
| mod/lesson:grade                             | Prohibit   |
| mod/lesson:manage                            | Prohibit   |
| mod/lesson:manageoverrides                   | Prohibit   |
| mod/lightboxgallery:addcomment               | Prohibit   |
| mod/lightboxgallery:addimage                 | Prohibit   |
| mod/lightboxgallery:edit                     | Prohibit   |
| mod/lightboxgallery:submit                   | Prohibit   |
| mod/lti:admin                                | Prohibit   |
| mod/lti:manage                               | Prohibit   |
| mod/questionnaire:createpublic               | Prohibit   |
| mod/questionnaire:createtemplates            | Prohibit   |
| mod/questionnaire:deleteresponses            | Prohibit   |
| mod/questionnaire:editquestions              | Prohibit   |
| mod/questionnaire:manage                     | Prohibit   |
| mod/questionnaire:message                    | Prohibit   |
| mod/questionnaire:preview                    | Prohibit   |
| mod/questionnaire:submissionnotification     | Prohibit   |
| mod/questionnaire:submit                     | Prohibit   |
| mod/quiz:attempt                             | Prohibit   |
| mod/quiz:deleteattempts                      | Prohibit   |
| mod/quiz:emailconfirmsubmission              | Prohibit   |
| mod/quiz:emailnotifysubmission               | Prohibit   |
| mod/quiz:emailwarnoverdue                    | Prohibit   |
| mod/quiz:grade                               | Prohibit   |
| mod/quiz:ignoretimelimits                    | Prohibit   |
| mod/quiz:manage                              | Prohibit   |
| mod/quiz:manageoverrides                     | Prohibit   |
| mod/quiz:regrade                             | Prohibit   |
| mod/scorm:deleteownresponses                 | Prohibit   |
| mod/scorm:deleteresponses                    | Prohibit   |
| mod/scorm:savetrack                          | Prohibit   |
| mod/scorm:skipview                           | Prohibit   |
| mod/survey:participate                       | Prohibit   |
| mod/turnitintool:addinstance                 | Prohibit   |
| mod/turnitintool:submit                      | Prohibit   |
| mod/turnitintooltwo:addinstance              | Prohibit   |
| mod/turnitintooltwo:submit                   | Prohibit   |
| mod/wiki:createpage                          | Prohibit   |
| mod/wiki:editcomment                         | Prohibit   |
| mod/wiki:editpage                            | Prohibit   |
| mod/wiki:managecomment                       | Prohibit   |
| mod/wiki:managefiles                         | Prohibit   |
| mod/wiki:managewiki                          | Prohibit   |
| mod/wiki:overridelock                        | Prohibit   |
| mod/workshop:allocate                        | Prohibit   |
| mod/workshop:deletesubmissions               | Prohibit   |
| mod/workshop:editdimensions                  | Prohibit   |
| mod/workshop:ignoredeadlines                 | Prohibit   |
| mod/workshop:manageexamples                  | Prohibit   |
| mod/workshop:overridegrades                  | Prohibit   |
| mod/workshop:peerassess                      | Prohibit   |
| mod/workshop:publishsubmissions              | Prohibit   |
| mod/workshop:submit                          | Prohibit   |
| mod/workshop:switchphase                     | Prohibit   |
| moodle/backup:backupactivity                 | Prohibit   |
| moodle/backup:backupactivity                 | Prohibit   |
| moodle/competency:coursecompetencyconfigure  | Prohibit   |
| moodle/course:activityvisibility             | Prohibit   |
| moodle/course:ignoreavailabilityrestrictions | Prohibit   |
| moodle/course:manageactivities               | Prohibit   |
| moodle/site:accessallgroups                  | Prohibit   |
| moodle/site:trustcontent                     | Prohibit   |
| block/activity\_modules:addinstance          | Prohibit   |
| block/activity\_results:addinstance          | Prohibit   |
| block/admin\_bookmarks:addinstance           | Prohibit   |
| block/badges:addinstance                     | Prohibit   |
| block/blog\_menu:addinstance                 | Prohibit   |
| block/blog\_recent:addinstance               | Prohibit   |
| block/blog\_tags:addinstance                 | Prohibit   |
| block/calendar\_month:addinstance            | Prohibit   |
| block/calendar\_upcoming:addinstance         | Prohibit   |
| block/comments:addinstance                   | Prohibit   |
| block/community:addinstance                  | Prohibit   |
| block/completionstatus:addinstance           | Prohibit   |
| block/configurable\_reports:addinstance      | Prohibit   |
| block/configurable\_reports:managereports    | Prohibit   |
| block/configurable\_reports:managesqlreports | Prohibit   |
| block/configurable\_reports:myaddinstance    | Prohibit   |
| block/course\_list:addinstance               | Prohibit   |
| block/course\_menu:addinstance               | Prohibit   |
| block/course\_summary:addinstance            | Prohibit   |
| block/course\_visibility:addinstance         | Prohibit   |
| block/course\_visibility:viewsettingslink    | Prohibit   |
| block/cpfusion:addinstance                   | Prohibit   |
| block/elluminate:addinstance                 | Prohibit   |
| block/feedback:addinstance                   | Prohibit   |
| block/globalsearch:addinstance               | Prohibit   |
| block/glossary\_random:addinstance           | Prohibit   |
| block/hidden\_course:addinstance             | Prohibit   |
| block/html:addinstance                       | Prohibit   |
| block/library\_resources:addinstance         | Prohibit   |
| block/library\_search:addinstance            | Prohibit   |
| block/login:addinstance                      | Prohibit   |
| block/mentees:addinstance                    | Prohibit   |
| block/mnet\_hosts:addinstance                | Prohibit   |
| block/myoverview:addinstance                 | Prohibit   |
| block/myprofile:addinstance                  | Prohibit   |
| block/navigation:addinstance                 | Prohibit   |
| block/news\_items:addinstance                | Prohibit   |
| block/online\_users:addinstance              | Prohibit   |
| block/participants:addinstance               | Prohibit   |
| block/portico\_enrolments:addinstance        | Prohibit   |
| block/private\_files:addinstance             | Prohibit   |
| block/quickmail:addinstance                  | Prohibit   |
| block/quiz\_results:addinstance              | Prohibit   |
| block/recent\_activity:addinstance           | Prohibit   |
| block/rss\_client:addinstance                | Prohibit   |
| block/rss\_client:manageanyfeeds             | Prohibit   |
| block/rss\_client:manageownfeeds             | Prohibit   |
| block/search\_forums:addinstance             | Prohibit   |
| block/section\_links:addinstance             | Prohibit   |
| block/selfcompletion:addinstance             | Prohibit   |
| block/settings:addinstance                   | Prohibit   |
| block/site\_main\_menu:addinstance           | Prohibit   |
| block/social\_activities:addinstance         | Prohibit   |
| block/tag\_flickr:addinstance                | Prohibit   |
| block/tags:addinstance                       | Prohibit   |
| block/timetable:addinstance                  | Prohibit   |
| block/turnitin:addinstance                   | Prohibit   |
| moodle/block:edit                            | Prohibit   |
| moodle/site:manageblocks                     | Prohibit   |
| mod/hotquestion:addinstance                  | Prohibit   |
| mod/hotpot:addinstance                       | Prohibit   |
| mod/hotquestion:manageentries                | Prohibit   |
| mod/hsuforum:viewposters                     | Prohibit   |
| mod/hsuforum:viewsubscribers                 | Prohibit   |
| tool/monitor:subscribe                       | Prohibit   |
| mod/attendance:warningemails                 | Prohibit   |
| mod/forum:addinstance                        | Prohibit   |
| mod/hsuforum:viewflags                       | Prohibit   |
| mod/assign:manageallocations                 | Prohibit   |
| mod/assign:managegrades                      | Prohibit   |
| mod/assign:manageoverrides                   | Prohibit   |
| mod/book:addinstance                         | Prohibit   |
| mod/book:edit                                | Prohibit   |
| booktool/importhtml:import                   | Prohibit   |
| moodle/user:editownprofile                   | Prohibit   |
| moodle/user:manageownfiles                   | Prohibit   |
| moodle/user:update                           | Prohibit   |

The XML file from which the role can be restored can be found [here](attachments/125941147/125941155.xml) (please note that the snapshot contained a number of plug-in activities that do not exist in the Snapshot - at least the 18-19 one, like Campus Pack, Medial, Checklist and so on; these would be present in the XML file so they would need to be removed.

The student role has limited capabilities anyway so fewere changes (fifty-three were needed). These are shown in the following table:

<table>
<tbody>
<tr class="odd">
<td>Capability</td>
<td>Permission</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>moodle/blog:manageexternal</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>moodle/blog:search</td>
<td>Prohibit</td>
<td>Why? (for no other reason than we are not using Moodle blogs so you shouldn't have a capability that does nothing)</td>
</tr>
<tr class="even">
<td>moodle/blog:view</td>
<td>Prohibit</td>
<td>Why? (same as before)</td>
</tr>
<tr class="odd">
<td>moodle/blog:create</td>
<td>Prohibit</td>
<td>Shouldn't we disable this? (yes, isn't that what Prohibit does?)</td>
</tr>
<tr class="even">
<td>moodle/blog:manageentries</td>
<td>Prohibit</td>
<td>Shouldn't we disable this? (we did, that's why it is prohibited)</td>
</tr>
<tr class="odd">
<td>moodle/portfolio:export</td>
<td>Prohibit</td>
<td>Why? (because we do not use Moodle portfolios)</td>
</tr>
<tr class="even">
<td>moodle/search:query</td>
<td>Prohibit</td>
<td>Why? (because we do not allow for global search)</td>
</tr>
<tr class="odd">
<td>moodle/user:readuserblogs</td>
<td>Prohibit</td>
<td>Why? (because user blogs are not in use and why should they have access to all blogs?)</td>
</tr>
<tr class="even">
<td>enrol/self:unenrolself</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>moodle/comment:post</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>oodle/competency:coursecompetencygradable</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>moodle/question:flag</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>moodle/rating:rate</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/assign:submit</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/assignment:submit</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/chat:chat</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/checklist:updateown</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/choice:choose</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/choicegroup:choose</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/collaborate:participate</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/data:comment</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/data:writeentry</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/elluminate:joinmeeting</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/feedback:complete</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/forum:createattachment</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/forum:deleteownpost</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/forum:replypost</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/forum:startdiscussion</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/glossary:comment</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/glossary:write</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/hotpot:attempt</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/hotquestion:ask</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/hotquestion:vote</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/hsuforum:createattachment</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/hsuforum:deleteownpost</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/hsuforum:replypost</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/hsuforum:revealpost</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/hsuforum:startdiscussion</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/hvp:savecontentuserdata</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/hvp:saveresults</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/lightboxgallery:addcomment</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/lightboxgallery:submit</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/questionnaire:submit</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/quiz:attempt</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/scorm:savetrack</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/scorm:skipview</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/survey:participate</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/turnitintool:submit</td>
<td>Not Set</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/turnitintooltwo:submit</td>
<td>Not Set</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/wiki:createpage</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/wiki:editcomment</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/wiki:editpage</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/workshop:peerassess</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>mod/workshop:submit</td>
<td>Prohibit</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>mod/hotquestion:manageentries</td>
<td>Allow</td>
<td><br />
</td>
</tr>
</tbody>
</table>

The XML file for the updated student role can be downloaded from [here](attachments/125941147/125941686.xml).

When you log in as non-admin, you get [this error,](attachments/125941147/125941704.png) but if you click on the course's name on the left you can get to the course without problems.

# PP Testing

This is complete as well, but I was getting session lock problems (couldn't log in) so I am providing the summary of the findings and I will log in tomorrow (Monday) to provide the XML files and the changes. There is one teacher manual account that has the role (username: teacher) and a student one as well (username: student12). The passwords are the same as the admin password on the Vanilla Moodle 3.5.9 installation.

Issues:

-   In Moodle assignment, the Grading action drop-down menu shows up even though the users do not have the capabilities specified (Upload grading worksheet and upload multiple feedback files in a zip). If you choose them, you get a no permission error message on the next page.
-   Join Collaborate Instance capability is needed for users to access recordings (if we switch this off, then no recordings can be accessed)
-   Submit permission is required in TurnItIn for the student to be able to view their submissions
-   In Scheduler, the permission for seeing and browsing other teachers booking has to be allow otherwise the user is recognised as a guest (if there are no bookings of his own, e.g. if they are Course Administrators). Also, the actions of Add slots and Delete Slots are, also, visible but if the user clicks on them then they get a no permission error - we can hide this with custom CSS (\#commandbar {display: none !important;})
-   The HotQuestion module offers an option for starting a new round of questions which cannot be removed through permissions as if we do that the users will get a permission denied error messge.

-   The links for forum subscriptions still show up, although they have no effect (even error message) when the user clicks on them.

    Changes for the tutor role:

    |                                              |            |
    |----------------------------------------------|------------|
    | Capability                                   | Permission |
    | moodle/blog:manageentries                    | Prohibit   |
    | modole/blog:manageexternal                   | Prohibit   |
    | moodle/community:add                         | Prohibit   |
    | moodle/community:download                    | Prohibit   |
    | moodle/portfolio:export                      | Prohibit   |
    | moodle/tag:editblocks                        | Prohibit   |
    | atto/heloxatto:visible                       | Prohibit   |
    | block/attendance:addinstance                 | Prohibit   |
    | block/quickmail:allowalternate               | Prohibit   |
    | block/quickmail:canconfig                    | Prohibit   |
    | block/quickmail:cansend                      | Prohibit   |
    | enrol/category:config                        | Prohibit   |
    | enrol/database:config                        | Prohibit   |
    | enrol/guest:config                           | Prohibit   |
    | enrol/imsenterprise:config                   | Prohibit   |
    | enrol/imsenterprise:unenrol                  | Prohibit   |
    | enrol/lti:config                             | Prohibit   |
    | enrol/lti:unenrol                            | Prohibit   |
    | enrol/manual:enrol                           | Prohibit   |
    | enrol/manual:manage                          | Prohibit   |
    | enrol/manual:unenrol                         | Prohibit   |
    | enrol/meta:config                            | Prohibit   |
    | enrol/mnet:config                            | Prohibit   |
    | enrol/paypal:manage                          | Prohibit   |
    | enrol/self:config                            | Prohibit   |
    | enrol/self:manage                            | Prohibit   |
    | enrol/self:unenrol                           | Prohibit   |
    | format/grid:changeimagecontaineralignment    | Prohibit   |
    | format/grid:changeimagecontainernavigation   | Prohibit   |
    | format/grid:changeimagecontainersize         | Prohibit   |
    | format/grid:changeimagecontainerstyle        | Prohibit   |
    | format/grid:changeimageresizemethod          | Prohibit   |
    | format/grid:changesectiontitleoptions        | Prohibit   |
    | format/topcoll:changecolour                  | Prohibit   |
    | format/topcoll:changelayout                  | Prohibit   |
    | format/topcoll:changetogglealignment         | Prohibit   |
    | format/topcoll:changetoggleiconset           | Prohibit   |
    | gradeimport/csv:view                         | Prohibit   |
    | gradeimport/direct:view                      | Prohibit   |
    | gradeimport/xml:view                         | Prohibit   |
    | local/mass\_enroll:enrol                     | Prohibit   |
    | local/mass\_enroll:unenrol                   | Prohibit   |
    | local/repositoryfileupload:delete            | Prohibit   |
    | local/repositoryfileupload:upload            | Prohibit   |
    | local/testaccount\_automation:create         | Prohibit   |
    | mod/aspirelist:addinstance                   | Prohibit   |
    | mod/assign:addinstance                       | Prohibit   |
    | mod/assignment:addinstance                   | Prohibit   |
    | mod/attendance:addinstance                   | Prohibit   |
    | mod/book:addinstance                         | Prohibit   |
    | mod/certificate:addinstance                  | Prohibit   |
    | mod/chat:addinstance                         | Prohibit   |
    | mod/checklist:addinstance                    | Prohibit   |
    | mod/choice:addinstance                       | Prohibit   |
    | mod/collaborate:addinstance                  | Prohibit   |
    | mod/collaborate:deleterecordings             | Prohibit   |
    | mod/customcert:addinstance                   | Prohibit   |
    | mod/customcert:manageemailothers             | Prohibit   |
    | mod/customcert:manageemailstudents           | Prohibit   |
    | mod/customcert:manageemailteachers           | Prohibit   |
    | mod/customcert:manageprotection              | Prohibit   |
    | mod/customcert:managerequiredtime            | Prohibit   |
    | mod/customcert:manageverifyany               | Prohibit   |
    | mod/data:addinstance                         | Prohibit   |
    | mod/elluminate:addinstance                   | Prohibit   |
    | mod/feedback:addinstance                     | Prohibit   |
    | mod/folder:addinstance                       | Prohibit   |
    | mod/forum:addinstance                        | Prohibit   |
    | mod/glossary:addinstance                     | Prohibit   |
    | mod/helixmedia:addinstance                   | Prohibit   |
    | mod/hotpot:addinstance                       | Prohibit   |
    | mod/hotquestion:addinstance                  | Prohibit   |
    | mod/hsuforum:addinstance                     | Prohibit   |
    | mod/hvp:addinstance                          | Prohibit   |
    | mod/imscp:addinstance                        | Prohibit   |
    | mod/label:addinstance                        | Prohibit   |
    | mod/lesson:addinstance                       | Prohibit   |
    | mod/lightboxgallery:addinstance              | Prohibit   |
    | mod/lti:addcoursetool                        | Prohibit   |
    | mod/lti:addinstance                          | Prohibit   |
    | mod/lti:requesttooladd                       | Prohibit   |
    | mod/page:addinstance                         | Prohibit   |
    | mod/questionnaire:addinstance                | Prohibit   |
    | mod/quiz:addinstance                         | Prohibit   |
    | mod/resource:addinstance                     | Prohibit   |
    | mod/scorm:addinstance                        | Prohibit   |
    | mod/survey:addinstance                       | Prohibit   |
    | mod/url:addinstance                          | Prohibit   |
    | mod/wiki:addinstance                         | Prohibit   |
    | mod/workshop:addinstance                     | Prohibit   |
    | moodle/analytics:listinsights                | Prohibit   |
    | moodle/backup:backupcourse                   | Prohibit   |
    | moodle/backup:backupsection                  | Prohibit   |
    | moodle/backup:backuptargethub                | Prohibit   |
    | moodle/backup:backuptargetimport             | Prohibit   |
    | moodle/backup:configure                      | Prohibit   |
    | moodle/badges:awardbadge                     | Prohibit   |
    | moodle/badges:configurecriteria              | Prohibit   |
    | moodle/badges:configuredetails               | Prohibit   |
    | moodle/badges:configuremessages              | Prohibit   |
    | moodle/badges:createbadge                    | Prohibit   |
    | moodle/badges:deletebadg                     | Prohibit   |
    | moodle/badges:revokebadge                    | Prohibit   |
    | moodle/calendar:manageentries                | Prohibit   |
    | moodle/calendar:managegroupentries           | Prohibit   |
    | moodle/cohort:view                           | Prohibit   |
    | moodle/comment:delete                        | Prohibit   |
    | moodle/comment:post                          | Prohibit   |
    | moodle/competency:competencygrade            | Prohibit   |
    | moodle/competency:coursecompetencymanage     | Prohibit   |
    | moodle/course:bulkmessaging                  | Prohibit   |
    | moodle/course:changecategory                 | Prohibit   |
    | moodle/course:changefullname                 | Prohibit   |
    | moodle/course:changeidnumber                 | Prohibit   |
    | moodle/course:changeshortname                | Prohibit   |
    | moodle/course:changesummary                  | Prohibit   |
    | moodle/course:enrolconfig                    | Prohibit   |
    | moodle/course:enrolreview                    | Prohibit   |
    | moodle/course:managefiles                    | Prohibit   |
    | moodle/course:managegroups                   | Prohibit   |
    | moodle/course:managescales                   | Prohibit   |
    | moodle/course:markcomplete                   | Prohibit   |
    | moodle/course:movesections                   | Prohibit   |
    | moodle/course:overridecompletion             | Prohibit   |
    | moodle/course:renameroles                    | Prohibit   |
    | moodle/course:reset                          | Prohibit   |
    | moodle/course:reviewotherusers               | Prohibit   |
    | moodle/course:sectionvisibility              | Prohibit   |
    | moodle/course:setcurrentsection              | Prohibit   |
    | moodle/course:setforcedlanguage              | Prohibit   |
    | moodle/course:tag                            | Prohibit   |
    | moodle/course:update                         | Prohibit   |
    | moodle/course:useremail                      | Prohibit   |
    | moodle/course:visibility                     | Prohibit   |
    | moodle/filter:manage                         | Prohibit   |
    | moodle/grade:edit                            | Prohibit   |
    | moodle/grade:hide                            | Prohibit   |
    | moodle/grade:import                          | Prohibit   |
    | moodle/grade:lock                            | Prohibit   |
    | moodle/grade:manage                          | Prohibit   |
    | moodle/grade:managegradingforms              | Prohibit   |
    | moodle/grade:manageletters                   | Prohibit   |
    | moodle/grade:manageoutcomes                  | Prohibit   |
    | moodle/grade:unlock                          | Prohibit   |
    | moodle/notes:manage                          | Prohibit   |
    | moodle/question:add                          | Prohibit   |
    | moodle/question:editall                      | Prohibit   |
    | moodle/question:editmine                     | Prohibit   |
    | moodle/question:flag                         | Prohibit   |
    | moodle/question:managecategory               | Prohibit   |
    | moodle/question:moveall                      | Prohibit   |
    | moodle/question:movemine                     | Prohibit   |
    | moodle/question:tagall                       | Prohibit   |
    | moodle/question:tagmine                      | Prohibit   |
    | moodle/question:useall                       | Prohibit   |
    | moodle/question:usemine                      | Prohibit   |
    | moodle/rating:rate                           | Prohibit   |
    | moodle/restore:configure                     | Prohibit   |
    | moodle/restore:restoreactivity               | Prohibit   |
    | moodle/restore:restorecourse                 | Prohibit   |
    | moodle/restore:restoresection                | Prohibit   |
    | moodle/restore:restoretargethub              | Prohibit   |
    | moodle/restore:restoretargetimport           | Prohibit   |
    | moodle/restore:uploadfile                    | Prohibit   |
    | moodle/restore:viewautomatedfilearea         | Prohibit   |
    | moodle/role:assign                           | Prohibit   |
    | moodle/role:safeoverride                     | Prohibit   |
    | moodle/role:switchroles                      | Prohibit   |
    | plagiarism/turnitin:enable                   | Prohibit   |
    | tool/monitor:managerules                     | Prohibit   |
    | tool/monitor:subscribe                       | Prohibit   |
    | tool/recyclebin:deleteitems                  | Prohibit   |
    | tool/recyclebin:restoreitems                 | Prohibit   |
    | assignsubmission/helixassign:can\_use        | Prohibit   |
    | mod/assign:grade                             | Prohibit   |
    | mod/assign:grantextension                    | Prohibit   |
    | mod/assign:manageallocations                 | Prohibit   |
    | mod/assign:managegrades                      | Prohibit   |
    | mod/assign:manageoverrides                   | Prohibit   |
    | mod/assign:receivegradernotifications        | Prohibit   |
    | mod/assign:releasegrades                     | Prohibit   |
    | mod/assign:revealidentities                  | Prohibit   |
    | mod/assign:reviewgrades                      | Prohibit   |
    | mod/assignment:grade                         | Prohibit   |
    | mod/attendance:changeattendances             | Prohibit   |
    | mod/attendance:changepreferences             | Prohibit   |
    | mod/attendance:manageattendances             | Prohibit   |
    | mod/attendance:managetemporaryusers          | Prohibit   |
    | mod/attendance:takeattendances               | Prohibit   |
    | mod/attendance:warningemails                 | Prohibit   |
    | mod/book:edit                                | Prohibit   |
    | mod/certificate:manage                       | Prohibit   |
    | mod/certificate:printteacher                 | Prohibit   |
    | mod/chat:chat                                | Prohibit   |
    | mod/chat:deletelog                           | Prohibit   |
    | mod/checklist:edit                           | Prohibit   |
    | mod/checklist:emailoncomplete                | Prohibit   |
    | mod/checklist:preview                        | Prohibit   |
    | mod/checklist:updatelocked                   | Prohibit   |
    | mod/checklist:updateother                    | Prohibit   |
    | mod/choice:choose                            | Prohibit   |
    | mod/choice:deleteresponses                   | Prohibit   |
    | mod/choicegroup:addinstance                  | Prohibit   |
    | mod/choicegroup:choose                       | Prohibit   |
    | mod/choicegroup:deleteresponses              | Prohibit   |
    | mod/collaborate:moderate                     | Prohibit   |
    | mod/collaborate:participate                  | Prohibit   |
    | mod/cpblog:addinstance                       | Prohibit   |
    | mod/cppodcast:addinstance                    | Prohibit   |
    | mod/cpprivatejournal:addinstance             | Prohibit   |
    | mod/cpwiki:addinstance                       | Prohibit   |
    | mod/customcert:manage                        | Prohibit   |
    | mod/customcert:verifycertificate             | Prohibit   |
    | mod/data:approve                             | Prohibit   |
    | mod/data:comment                             | Prohibit   |
    | mod/data:managecomments                      | Prohibit   |
    | mod/data:manageentries                       | Prohibit   |
    | mod/data:managetemplates                     | Prohibit   |
    | mod/data:rate                                | Prohibit   |
    | mod/data:writeentry                          | Prohibit   |
    | mod/elluminate:convertallrecordings          | Prohibit   |
    | mod/elluminate:convertownrecordings          | Prohibit   |
    | mod/elluminate:deleterecordings              | Prohibit   |
    | mod/elluminate:editallrecordings             | Prohibit   |
    | mod/elluminate:editownrecordings             | Prohibit   |
    | mod/elluminate:enablerecordings              | Prohibit   |
    | mod/elluminate:joinmeeting                   | Prohibit   |
    | mod/elluminate:manage                        | Prohibit   |
    | mod/elluminate:manageattendance              | Prohibit   |
    | mod/elluminate:managemoderators              | Prohibit   |
    | mod/elluminate:manageparticipants            | Prohibit   |
    | mod/elluminate:managepreloads                | Prohibit   |
    | mod/elluminate:managerecordings              | Prohibit   |
    | mod/elluminate:moderatemeeting               | Prohibit   |
    | mod/feedback:createprivatetemplate           | Prohibit   |
    | mod/feedback:createpublictemplate            | Prohibit   |
    | mod/feedback:deletesubmissions               | Prohibit   |
    | mod/feedback:deletetemplate                  | Prohibit   |
    | mod/feedback:edititems                       | Prohibit   |
    | mod/feedback:receivemail                     | Prohibit   |
    | mod/folder:managefiles                       | Prohibit   |
    | mod/forum:addnews                            | Prohibit   |
    | mod/forum:addquestion                        | Prohibit   |
    | mod/forum:allowforcesubscribe                | Prohibit   |
    | mod/forum:canoverridediscussionlock          | Prohibit   |
    | mod/forum:canposttomygroups                  | Prohibit   |
    | mod/forum:createattachment                   | Prohibit   |
    | mod/forum:deleteanypost                      | Prohibit   |
    | mod/forum:deleteownpost                      | Prohibit   |
    | mod/forum:editanypost                        | Prohibit   |
    | mod/forum:exportdiscussion                   | Prohibit   |
    | mod/forum:exportownpost                      | Prohibit   |
    | mod/forum:exportpost                         | Prohibit   |
    | mod/forum:managesubscriptions                | Prohibit   |
    | mod/forum:movediscussions                    | Prohibit   |
    | mod/forum:pindiscussions                     | Prohibit   |
    | mod/forum:postwithoutthrottling              | Prohibit   |
    | mod/forum:rate                               | Prohibit   |
    | mod/forum:replynews                          | Prohibit   |
    | mod/forum:replypost                          | Prohibit   |
    | mod/forum:splitdiscussions                   | Prohibit   |
    | mod/forum:startdiscussion                    | Prohibit   |
    | mod/glossary:approve                         | Prohibit   |
    | mod/glossary:comment                         | Prohibit   |
    | mod/glossary:import                          | Prohibit   |
    | mod/glossary:managecategories                | Prohibit   |
    | mod/glossary:managecomments                  | Prohibit   |
    | mod/glossary:manageentries                   | Prohibit   |
    | mod/glossary:rate                            | Prohibit   |
    | mod/glossary:write                           | Prohibit   |
    | mod/helixmedia:manage                        | Prohibit   |
    | mod/hotpot:attempt                           | Prohibit   |
    | mod/hotpot:deleteallattempts                 | Prohibit   |
    | mod/hotpot:deletemyattempts                  | Prohibit   |
    | mod/hotpot:manage                            | Prohibit   |
    | mod/hotquestion:ask                          | Prohibit   |
    | mod/hotquestion:manage                       | Prohibit   |
    | mod/hotquestion:vote                         | Prohibit   |
    | mod/hsuforum:addnews                         | Prohibit   |
    | mod/hsuforum:addquestion                     | Prohibit   |
    | mod/hsuforum:allowforcesubscribe             | Prohibit   |
    | mod/hsuforum:allowprivate                    | Prohibit   |
    | mod/hsuforum:canoverridediscussionlock       | Prohibit   |
    | mod/hsuforum:canposttomygroups               | Prohibit   |
    | mod/hsuforum:createattachment                | Prohibit   |
    | mod/hsuforum:deleteanypost                   | Prohibit   |
    | mod/hsuforum:deleteownpost                   | Prohibit   |
    | mod/hsuforum:editanypost                     | Prohibit   |
    | mod/hsuforum:managesubscriptions             | Prohibit   |
    | mod/hsuforum:movediscussions                 | Prohibit   |
    | mod/hsuforum:pindiscussions                  | Prohibit   |
    | mod/hsuforum:postwithoutthrottling           | Prohibit   |
    | mod/hsuforum:rate                            | Prohibit   |
    | mod/hsuforum:replynews                       | Prohibit   |
    | mod/hsuforum:replypost                       | Prohibit   |
    | mod/hsuforum:revealpost                      | Prohibit   |
    | mod/hsuforum:splitdiscussions                | Prohibit   |
    | mod/hsuforum:startdiscussion                 | Prohibit   |
    | mod/hvp:manage                               | Prohibit   |
    | mod/hvp:savecontentuserdata                  | Prohibit   |
    | mod/lesson:edit                              | Prohibit   |
    | mod/lesson:grade                             | Prohibit   |
    | mod/lesson:manage                            | Prohibit   |
    | mod/lesson:manageoverrides                   | Prohibit   |
    | mod/lightboxgallery:addcomment               | Prohibit   |
    | mod/lightboxgallery:addimage                 | Prohibit   |
    | mod/lightboxgallery:edit                     | Prohibit   |
    | mod/lightboxgallery:submit                   | Prohibit   |
    | mod/questionnaire:deleteresponses            | Prohibit   |
    | mod/questionnaire:editquestions              | Prohibit   |
    | mod/questionnaire:manage                     | Prohibit   |
    | mod/questionnaire:message                    | Prohibit   |
    | mod/questionnaire:submissionnotification     | Prohibit   |
    | mod/quiz:deleteattempts                      | Prohibit   |
    | mod/quiz:grade                               | Prohibit   |
    | mod/quiz:manage                              | Prohibit   |
    | mod/quiz:manageoverrides                     | Prohibit   |
    | mod/quiz:regrade                             | Prohibit   |
    | mod/scorm:deleteresponses                    | Prohibit   |
    | mod/scorm:savetrack                          | Prohibit   |
    | mod/survey:participate                       | Prohibit   |
    | mod/turnitintool:addinstance                 | Prohibit   |
    | mod/turnitintooltwo:addinstance              | Prohibit   |
    | mod/turnitintooltwo:grade                    | Prohibit   |
    | mod/wiki:createpage                          | Prohibit   |
    | mod/wiki:editcomment                         | Prohibit   |
    | mod/wiki:editpage                            | Prohibit   |
    | mod/wiki:managecomment                       | Prohibit   |
    | mod/wiki:managefiles                         | Prohibit   |
    | mod/wiki:managewiki                          | Prohibit   |
    | mod/wiki:overridelock                        | Prohibit   |
    | mod/workshop:allocate                        | Prohibit   |
    | mod/workshop:deletesubmissions               | Prohibit   |
    | mod/workshop:editdimensions                  | Prohibit   |
    | mod/workshop:ignoredeadlines                 | Prohibit   |
    | mod/workshop:manageexamples                  | Prohibit   |
    | mod/workshop:overridegrades                  | Prohibit   |
    | mod/workshop:publishsubmissions              | Prohibit   |
    | mod/workshop:switchphase                     | Prohibit   |
    | moodle/backup:backupactivity                 | Prohibit   |
    | moodle/course:activityvisibility             | Prohibit   |
    | moodle/course:ignoreavailabilityrestrictions | Prohibit   |
    | moodle/course:manageactivities               | Prohibit   |
    | moodle/site:trustcontent                     | Prohibit   |
    | repository/coursefiles:view                  | Prohibit   |
    | repository/filesystem:view                   | Prohibit   |
    | repository/local:view                        | Prohibit   |
    | repository/webdav:view                       | Prohibit   |
    | block/activity\_modules:addinstance          | Prohibit   |
    | block/activity\_results:addinstance          | Prohibit   |
    | block/admin\_bookmarks:addinstance           | Prohibit   |
    | block/badges:addinstance                     | Prohibit   |
    | block/blog\_menu:addinstance                 | Prohibit   |
    | block/blog\_recent:addinstance               | Prohibit   |
    | block/blog\_tags:addinstance                 | Prohibit   |
    | block/calendar\_month:addinstance            | Prohibit   |
    | block/calendar\_upcoming:addinstance         | Prohibit   |
    | block/comments:addinstance                   | Prohibit   |
    | block/community:addinstance                  | Prohibit   |
    | block/completionstatus:addinstance           | Prohibit   |
    | block/configurable\_reports:addinstance      | Prohibit   |
    | block/configurable\_reports:myaddinstance    | Prohibit   |
    | block/course\_list:addinstance               | Prohibit   |
    | block/course\_menu:addinstance               | Prohibit   |
    | block/course\_summary:addinstance            | Prohibit   |
    | block/course\_visibility:addinstance         | Prohibit   |
    | block/cpfusion:addinstance                   | Prohibit   |
    | block/elluminate:addinstance                 | Prohibit   |
    | block/feedback:addinstance                   | Prohibit   |
    | block/globalsearch:addinstance               | Prohibit   |
    | block/glossary\_random:addinstance           | Prohibit   |
    | block/hidden\_course:addinstance             | Prohibit   |
    | block/html:addinstance                       | Prohibit   |
    | block/library\_resources:addinstance         | Prohibit   |
    | block/library\_search:addinstance            | Prohibit   |
    | block/login:addinstance                      | Prohibit   |
    | block/mentees:addinstance                    | Prohibit   |
    | block/mnet\_hosts:addinstance                | Prohibit   |
    | block/myoverview:addinstance                 | Prohibit   |
    | block/myprofile:addinstance                  | Prohibit   |
    | block/navigation:addinstance                 | Prohibit   |
    | block/news\_items:addinstance                | Prohibit   |
    | block/online\_users:addinstance              | Prohibit   |
    | block/online\_users:viewlist                 | Prohibit   |
    | block/participants:addinstance               | Prohibit   |
    | block/portico\_enrolments:mappingeditor      | Prohibit   |
    | block/private\_files:addinstance             | Prohibit   |
    | block/quickmail:addinstance                  | Prohibit   |
    | block/quiz\_results:addinstance              | Prohibit   |
    | block/recent\_activity:addinstance           | Prohibit   |
    | block/rss\_client:addinstance                | Prohibit   |
    | block/rss\_client:manageownfeeds             | Prohibit   |
    | block/search\_forums:addinstance             | Prohibit   |
    | block/section\_links:addinstance             | Prohibit   |
    | block/selfcompletion:addinstance             | Prohibit   |
    | block/settings:addinstance                   | Prohibit   |
    | block/site\_main\_menu:addinstance           | Prohibit   |
    | block/social\_activities:addinstance         | Prohibit   |
    | block/tag\_flickr:addinstance                | Prohibit   |
    | block/tag\_youtube:addinstance               | Prohibit   |
    | block/tags:addinstance                       | Prohibit   |
    | block/timetable:addinstance                  | Prohibit   |
    | block/turnitin:addinstance                   | Prohibit   |
    | moodle/block:edit                            | Prohibit   |
    | moodle/site:manageblocks                     | Prohibit   |
    | moodle/course:changecategory                 | Prohibit   |
    | oodle/course:changefullname                  | Prohibit   |
    | moodle/course:bulkmessaging                  | Prohibit   |
    | moodle/competency:coursecompetencymanage     | Prohibit   |
    | moodle/competency:competencygrade            | Prohibit   |
    | moodle/comment:post                          | Prohibit   |
    | moodle/comment:delete                        | Prohibit   |
    | moodle/calendar:manageentries                | Prohibit   |
    | moodle/calendar:managegroupentries           | Prohibit   |
    | moodle/badges:deletebadge                    | Prohibit   |
    | moodle/badges:createbadge                    | Prohibit   |
    | moodle/badges:configuremessages              | Prohibit   |
    | moodle/badges:configuredetails               | Prohibit   |
    | moodle/badges:configurecriteria              | Prohibit   |
    | moodle/badges:awardbadge                     | Prohibit   |
    | moodle/backup:configure                      | Prohibit   |
    | moodle/backup:backuptargetimport             | Prohibit   |
    | moodle/backup:backuptargethub                | Prohibit   |
    | moodle/backup:backupsection                  | Prohibit   |
    | moodle/backup:backupcourse                   | Prohibit   |
    | moodle/badges:revokebadge                    | Prohibit   |
    | moodle/course:changeidnumber                 | Prohibit   |
    | moodle/course:changeshortname                | Prohibit   |
    | moodle/course:changesummary                  | Prohibit   |
    | oodle/course:enrolconfig                     | Prohibit   |
    | moodle/course:enrolreview                    | Prohibit   |
    | moodle/course:managefiles                    | Prohibit   |
    | moodle/course:managegroups                   | Prohibit   |
    | moodle/course:managescales                   | Prohibit   |
    | moodle/course:markcomplete                   | Prohibit   |
    | moodle/course:movesections                   | Prohibit   |
    | moodle/course:overridecompletion             | Prohibit   |
    | moodle/course:renameroles                    | Prohibit   |
    | moodle/course:reset                          | Prohibit   |
    | moodle/course:reviewotherusers               | Prohibit   |
    | moodle/course:sectionvisibility              | Prohibit   |
    | moodle/course:setcurrentsection              | Prohibit   |
    | moodle/course:setforcedlanguage              | Prohibit   |
    | moodle/course:tag                            | Prohibit   |
    | moodle/course:update                         | Prohibit   |
    | moodle/course:useremail                      | Prohibit   |
    | moodle/course:visibility                     | Prohibit   |
    | moodle/filter:manage                         | Prohibit   |
    | moodle/grade:edit                            | Prohibit   |
    | moodle/grade:hide                            | Prohibit   |
    | moodle/grade:import                          | Prohibit   |
    | moodle/grade:lock                            | Prohibit   |
    | moodle/grade:manage                          | Prohibit   |
    | moodle/grade:managegradingforms              | Prohibit   |
    | moodle/grade:manageletters                   | Prohibit   |
    | moodle/grade:manageoutcomes                  | Prohibit   |
    | moodle/grade:unlock                          | Prohibit   |
    | moodle/notes:manage                          | Prohibit   |
    | moodle/question:add                          | Prohibit   |
    | moodle/question:editall                      | Prohibit   |
    | moodle/question:editmine                     | Prohibit   |
    | moodle/question:flag                         | Prohibit   |
    | moodle/question:managecategory               | Prohibit   |
    | moodle/question:moveall                      | Prohibit   |
    | moodle/question:movemine                     | Prohibit   |
    | moodle/question:tagall                       | Prohibit   |
    | moodle/question:tagmine                      | Prohibit   |
    | moodle/question:useall                       | Prohibit   |
    | moodle/question:usemine                      | Prohibit   |
    | moodle/rating:rate                           | Prohibit   |
    | moodle/restore:configure                     | Prohibit   |
    | moodle/restore:restoreactivity               | Prohibit   |
    | moodle/restore:restorecourse                 | Prohibit   |
    | moodle/restore:restoresection                | Prohibit   |
    | moodle/restore:restoretargethub              | Prohibit   |
    | moodle/restore:restoretargetimport           | Prohibit   |
    | moodle/restore:rolldates                     | Prohibit   |
    | moodle/restore:uploadfile                    | Prohibit   |
    | moodle/restore:userinfo                      | Prohibit   |
    | moodle/restore:viewautomatedfilearea         | Prohibit   |
    | moodle/role:assign                           | Prohibit   |
    | moodle/role:override                         | Prohibit   |
    | moodle/role:review                           | Prohibit   |
    | moodle/role:safeoverride                     | Prohibit   |
    | moodle/role:switchroles                      | Prohibit   |
    | enrol/category:config                        | Prohibit   |
    | mod/attendance:changeattendances             | Prohibit   |
    | mod/attendance:changepreferences             | Prohibit   |
    | mod/attendance:manageattendances             | Prohibit   |
    | mod/attendance:managetemporaryusers          | Prohibit   |
    | mod/attendance:takeattendances               | Prohibit   |
    | mod/forum:addnews                            | Prohibit   |
    | mod/forum:addquestion                        | Prohibit   |
    | mod/forum:allowforcesubscribe                | Prohibit   |
    | mod/forum:canoverridediscussionlock          | Prohibit   |
    | mod/forum:canposttomygroups                  | Prohibit   |
    | mod/forum:createattachment                   | Prohibit   |
    | mod/forum:deleteanypost                      | Prohibit   |
    | mod/forum:deleteownpost                      | Prohibit   |
    | mod/forum:managesubscriptions                | Prohibit   |
    | mod/forum:movediscussions                    | Prohibit   |
    | mod/forum:pindiscussions                     | Prohibit   |
    | mod/forum:postwithoutthrottling              | Prohibit   |
    | mod/forum:rate                               | Prohibit   |
    | mod/forum:replynews                          | Prohibit   |
    | mod/forum:replypost                          | Prohibit   |
    | mod/forum:splitdiscussions                   | Prohibit   |
    | mod/forum:startdiscussion                    | Prohibit   |
    | mod/forum:viewsubscribers                    | Prohibit   |
    | mod/hsuforum:addinstance                     | Prohibit   |
    | mod/hsuforum:addnews                         | Prohibit   |
    | mod/hsuforum:addquestion                     | Prohibit   |
    | mod/hsuforum:allowforcesubscribe             | Prohibit   |
    | mod/hsuforum:allowprivate                    | Prohibit   |
    | mod/hsuforum:canoverridediscussionlock       | Prohibit   |
    | mod/hsuforum:canposttomygroups               | Prohibit   |
    | mod/hsuforum:createattachment                | Prohibit   |
    | mod/hsuforum:deleteanypost                   | Prohibit   |
    | mod/hsuforum:deleteownpost                   | Prohibit   |
    | mod/hsuforum:editanypost                     | Prohibit   |
    | mod/hsuforum:managesubscriptions             | Prohibit   |
    | mod/hsuforum:movediscussions                 | Prohibit   |
    | mod/hsuforum:pindiscussions                  | Prohibit   |
    | mod/hsuforum:postwithoutthrottling           | Prohibit   |
    | mod/hsuforum:rate                            | Prohibit   |
    | mod/hsuforum:replynews                       | Prohibit   |
    | mod/hsuforum:replypost                       | Prohibit   |
    | mod/hsuforum:revealpost                      | Prohibit   |
    | mod/hsuforum:splitdiscussions                | Prohibit   |
    | mod/hsuforum:startdiscussion                 | Prohibit   |
    | mod/choice:addinstance                       | Prohibit   |
    | mod/choice:choose                            | Prohibit   |
    | mod/choice:deleteresponses                   | Prohibit   |
    | mod/choicegroup:addinstance                  | Prohibit   |
    | mod/choicegroup:choose                       | Prohibit   |
    | mod/choicegroup:deleteresponses              | Prohibit   |
    | mod/customcert:manage                        | Prohibit   |
    | mod/customcert:verifycertificate             | Prohibit   |
    | mod/data:approve                             | Prohibit   |
    | mod/data:comment                             | Prohibit   |
    | mod/data:managecomments                      | Prohibit   |
    | mod/data:manageentries                       | Prohibit   |
    | mod/data:managetemplates                     | Prohibit   |
    | mod/data:manageuserpresets                   | Prohibit   |
    | mod/data:rate                                | Prohibit   |
    | mod/data:writeentry                          | Prohibit   |
    | mod/elluminate:convertallrecordings          | Prohibit   |
    | mod/elluminate:convertownrecordings          | Prohibit   |
    | mod/elluminate:deleteanyrecordings           | Prohibit   |
    | mod/elluminate:deleterecordings              | Prohibit   |
    | mod/elluminate:editallrecordings             | Prohibit   |
    | mod/elluminate:editownrecordings             | Prohibit   |
    | mod/elluminate:enablerecordings              | Prohibit   |
    | mod/elluminate:manage                        | Prohibit   |
    | mod/elluminate:manageanyrecordings           | Prohibit   |
    | mod/elluminate:manageattendance              | Prohibit   |
    | mod/elluminate:managemoderators              | Prohibit   |
    | mod/elluminate:manageparticipants            | Prohibit   |
    | mod/elluminate:managepreloads                | Prohibit   |
    | mod/elluminate:managerecordings              | Prohibit   |
    | mod/elluminate:moderatemeeting               | Prohibit   |
    | mod/feedback:addinstance                     | Prohibit   |
    | mod/feedback:complete                        | Prohibit   |
    | mod/feedback:createprivatetemplate           | Prohibit   |
    | mod/feedback:createpublictemplate            | Prohibit   |
    | mod/feedback:deletesubmissions               | Prohibit   |
    | mod/feedback:deletetemplate                  | Prohibit   |
    | mod/feedback:edititems                       | Prohibit   |
    | mod/feedback:mapcourse                       | Prohibit   |
    | mod/feedback:receivemail                     | Prohibit   |
    | mod/folder:managefiles                       | Prohibit   |
    | mod/glossary:approve                         | Prohibit   |
    | mod/glossary:comment                         | Prohibit   |
    | mod/glossary:import                          | Prohibit   |
    | mod/glossary:managecategories                | Prohibit   |
    | mod/glossary:managecomments                  | Prohibit   |
    | mod/glossary:manageentries                   | Prohibit   |
    | mod/glossary:rate                            | Prohibit   |
    | mod/glossary:write                           | Prohibit   |
    | mod/hotpot:attempt                           | Prohibit   |
    | mod/hotpot:deleteallattempts                 | Prohibit   |
    | mod/hotpot:deletemyattempts                  | Prohibit   |
    | mod/hotpot:manage                            | Prohibit   |
    | mod/hotpot:preview                           | Prohibit   |
    | mod/hotquestion:ask                          | Prohibit   |
    | mod/hotquestion:manage                       | Prohibit   |
    | mod/hotquestion:vote                         | Prohibit   |
    | mod/hvp:getembedcode                         | Prohibit   |
    | mod/hvp:getexport                            | Prohibit   |
    | mod/hvp:manage                               | Prohibit   |
    | mod/hvp:savecontentuserdata                  | Prohibit   |
    | mod/hvp:saveresults                          | Prohibit   |
    | mod/lesson:edit                              | Prohibit   |
    | mod/lesson:grade                             | Prohibit   |
    | mod/lesson:manage                            | Prohibit   |
    | mod/lesson:manageoverrides                   | Prohibit   |
    | mod/lightboxgallery:addcomment               | Prohibit   |
    | mod/lightboxgallery:addimage                 | Prohibit   |
    | mod/lightboxgallery:edit                     | Prohibit   |
    | mod/lightboxgallery:submit                   | Prohibit   |
    | mod/lti:admin                                | Prohibit   |
    | mod/lti:manage                               | Prohibit   |
    | mod/questionnaire:createpublic               | Prohibit   |
    | mod/questionnaire:createtemplates            | Prohibit   |
    | mod/questionnaire:deleteresponses            | Prohibit   |
    | mod/questionnaire:editquestions              | Prohibit   |
    | mod/questionnaire:manage                     | Prohibit   |
    | mod/questionnaire:message                    | Prohibit   |
    | mod/questionnaire:preview                    | Prohibit   |
    | mod/questionnaire:submissionnotification     | Prohibit   |
    | mod/questionnaire:submit                     | Prohibit   |
    | mod/quiz:attempt                             | Prohibit   |
    | mod/quiz:deleteattempts                      | Prohibit   |
    | mod/quiz:emailconfirmsubmission              | Prohibit   |
    | mod/quiz:emailnotifysubmission               | Prohibit   |
    | mod/quiz:emailwarnoverdue                    | Prohibit   |
    | mod/quiz:grade                               | Prohibit   |
    | mod/quiz:ignoretimelimits                    | Prohibit   |
    | mod/quiz:manage                              | Prohibit   |
    | mod/quiz:manageoverrides                     | Prohibit   |
    | mod/quiz:regrade                             | Prohibit   |
    | mod/scorm:deleteownresponses                 | Prohibit   |
    | mod/scorm:deleteresponses                    | Prohibit   |
    | mod/scorm:savetrack                          | Prohibit   |
    | mod/scorm:skipview                           | Prohibit   |
    | mod/survey:participate                       | Prohibit   |
    | mod/turnitintool:addinstance                 | Prohibit   |
    | mod/turnitintool:submit                      | Prohibit   |
    | mod/turnitintooltwo:addinstance              | Prohibit   |
    | mod/turnitintooltwo:submit                   | Prohibit   |
    | mod/wiki:createpage                          | Prohibit   |
    | mod/wiki:editcomment                         | Prohibit   |
    | mod/wiki:editpage                            | Prohibit   |
    | mod/wiki:managecomment                       | Prohibit   |
    | mod/wiki:managefiles                         | Prohibit   |
    | mod/wiki:managewiki                          | Prohibit   |
    | mod/wiki:overridelock                        | Prohibit   |
    | mod/workshop:allocate                        | Prohibit   |
    | mod/workshop:deletesubmissions               | Prohibit   |
    | mod/workshop:editdimensions                  | Prohibit   |
    | mod/workshop:ignoredeadlines                 | Prohibit   |
    | mod/workshop:manageexamples                  | Prohibit   |
    | mod/workshop:overridegrades                  | Prohibit   |
    | mod/workshop:peerassess                      | Prohibit   |
    | mod/workshop:publishsubmissions              | Prohibit   |
    | mod/workshop:submit                          | Prohibit   |
    | mod/workshop:switchphase                     | Prohibit   |
    | moodle/backup:backupactivity                 | Prohibit   |
    | moodle/backup:backupactivity                 | Prohibit   |
    | moodle/competency:coursecompetencyconfigure  | Prohibit   |
    | moodle/course:activityvisibility             | Prohibit   |
    | moodle/course:ignoreavailabilityrestrictions | Prohibit   |
    | moodle/course:manageactivities               | Prohibit   |
    | moodle/site:accessallgroups                  | Prohibit   |
    | moodle/site:trustcontent                     | Prohibit   |
    | block/activity\_modules:addinstance          | Prohibit   |
    | block/activity\_results:addinstance          | Prohibit   |
    | block/admin\_bookmarks:addinstance           | Prohibit   |
    | block/badges:addinstance                     | Prohibit   |
    | block/blog\_menu:addinstance                 | Prohibit   |
    | block/blog\_recent:addinstance               | Prohibit   |
    | block/blog\_tags:addinstance                 | Prohibit   |
    | block/calendar\_month:addinstance            | Prohibit   |
    | block/calendar\_upcoming:addinstance         | Prohibit   |
    | block/comments:addinstance                   | Prohibit   |
    | block/community:addinstance                  | Prohibit   |
    | block/completionstatus:addinstance           | Prohibit   |
    | block/configurable\_reports:addinstance      | Prohibit   |
    | block/configurable\_reports:managereports    | Prohibit   |
    | block/configurable\_reports:managesqlreports | Prohibit   |
    | block/configurable\_reports:myaddinstance    | Prohibit   |
    | block/course\_list:addinstance               | Prohibit   |
    | block/course\_menu:addinstance               | Prohibit   |
    | block/course\_summary:addinstance            | Prohibit   |
    | block/course\_visibility:addinstance         | Prohibit   |
    | block/course\_visibility:viewsettingslink    | Prohibit   |
    | block/cpfusion:addinstance                   | Prohibit   |
    | block/elluminate:addinstance                 | Prohibit   |
    | block/feedback:addinstance                   | Prohibit   |
    | block/globalsearch:addinstance               | Prohibit   |
    | block/glossary\_random:addinstance           | Prohibit   |
    | block/hidden\_course:addinstance             | Prohibit   |
    | block/html:addinstance                       | Prohibit   |
    | block/library\_resources:addinstance         | Prohibit   |
    | block/library\_search:addinstance            | Prohibit   |
    | block/login:addinstance                      | Prohibit   |
    | block/mentees:addinstance                    | Prohibit   |
    | block/mnet\_hosts:addinstance                | Prohibit   |
    | block/myoverview:addinstance                 | Prohibit   |
    | block/myprofile:addinstance                  | Prohibit   |
    | block/navigation:addinstance                 | Prohibit   |
    | block/news\_items:addinstance                | Prohibit   |
    | block/online\_users:addinstance              | Prohibit   |
    | block/participants:addinstance               | Prohibit   |
    | block/portico\_enrolments:addinstance        | Prohibit   |
    | block/private\_files:addinstance             | Prohibit   |
    | block/quickmail:addinstance                  | Prohibit   |
    | block/quiz\_results:addinstance              | Prohibit   |
    | block/recent\_activity:addinstance           | Prohibit   |
    | block/rss\_client:addinstance                | Prohibit   |
    | block/rss\_client:manageanyfeeds             | Prohibit   |
    | block/rss\_client:manageownfeeds             | Prohibit   |
    | block/search\_forums:addinstance             | Prohibit   |
    | block/section\_links:addinstance             | Prohibit   |
    | block/selfcompletion:addinstance             | Prohibit   |
    | block/settings:addinstance                   | Prohibit   |
    | block/site\_main\_menu:addinstance           | Prohibit   |
    | block/social\_activities:addinstance         | Prohibit   |
    | block/tag\_flickr:addinstance                | Prohibit   |
    | block/tags:addinstance                       | Prohibit   |
    | block/timetable:addinstance                  | Prohibit   |
    | block/turnitin:addinstance                   | Prohibit   |
    | moodle/block:edit                            | Prohibit   |
    | moodle/site:manageblocks                     | Prohibit   |
    | mod/hotquestion:addinstance                  | Prohibit   |
    | mod/hotpot:addinstance                       | Prohibit   |
    | mod/hotquestion:manageentries                | Prohibit   |
    | mod/hsuforum:viewposters                     | Prohibit   |
    | mod/hsuforum:viewsubscribers                 | Prohibit   |
    | tool/monitor:subscribe                       | Prohibit   |
    | mod/attendance:warningemails                 | Prohibit   |
    | mod/forum:addinstance                        | Prohibit   |
    | mod/hsuforum:viewflags                       | Prohibit   |
    | mod/assign:manageallocations                 | Prohibit   |
    | mod/assign:managegrades                      | Prohibit   |
    | mod/assign:manageoverrides                   | Prohibit   |
    | mod/book:addinstance                         | Prohibit   |
    | mod/book:edit                                | Prohibit   |
    | booktool/importhtml:import                   | Prohibit   |
    | moodle/user:editownprofile                   | Prohibit   |
    | moodle/user:manageownfiles                   | Prohibit   |
    | moodle/user:update                           | Prohibit   |

    Code to be added to the custom CSS for Hot Question and Scheduler:

    ``` css
    #toolbar {

        display:none !important;

    }

    #commandbar {

        display;none !important;

    }
    ```

    For the student role, we have the following issues:

-   In Lesson, if there is a multiple-choice question then the student can fill it in and submit;
-   In a Hot Question for students the Remove and Approve button are there.

The changes to the Student role are:

|                                           |          |
|-------------------------------------------|----------|
| moodle/blog:manageexternal                | Prohibit |
| moodle/blog:search                        | Prohibit |
| moodle/blog:view                          | Prohibit |
| moodle/portfolio:export                   | Prohibit |
| moodle/search:query                       | Prohibit |
| moodle/user:readuserblogs                 | Prohibit |
| enrol/self:unenrolself                    | Prohibit |
| moodle/comment:post                       | Prohibit |
| oodle/competency:coursecompetencygradable | Prohibit |
| moodle/question:flag                      | Prohibit |
| moodle/rating:rate                        | Prohibit |
| mod/assign:submit                         | Prohibit |
| mod/assignment:submit                     | Prohibit |
| mod/chat:chat                             | Prohibit |
| mod/checklist:updateown                   | Prohibit |
| mod/choice:choose                         | Prohibit |
| mod/choicegroup:choose                    | Prohibit |
| mod/collaborate:participate               | Prohibit |
| mod/data:comment                          | Prohibit |
| mod/data:writeentry                       | Prohibit |
| mod/elluminate:joinmeeting                | Prohibit |
| mod/feedback:complete                     | Prohibit |
| mod/forum:createattachment                | Prohibit |
| mod/forum:deleteownpost                   | Prohibit |
| mod/forum:replypost                       | Prohibit |
| mod/forum:startdiscussion                 | Prohibit |
| mod/glossary:comment                      | Prohibit |
| mod/glossary:write                        | Prohibit |
| mod/hotpot:attempt                        | Prohibit |
| mod/hotquestion:ask                       | Prohibit |
| mod/hotquestion:vote                      | Prohibit |
| mod/hsuforum:createattachment             | Prohibit |
| mod/hsuforum:deleteownpost                | Prohibit |
| mod/hsuforum:replypost                    | Prohibit |
| mod/hsuforum:revealpost                   | Prohibit |
| mod/hsuforum:startdiscussion              | Prohibit |
| mod/hvp:savecontentuserdata               | Prohibit |
| mod/hvp:saveresults                       | Prohibit |
| mod/lightboxgallery:addcomment            | Prohibit |
| mod/lightboxgallery:submit                | Prohibit |
| mod/questionnaire:submit                  | Prohibit |
| mod/quiz:attempt                          | Prohibit |
| mod/scorm:savetrack                       | Prohibit |
| mod/scorm:skipview                        | Prohibit |
| mod/survey:participate                    | Prohibit |
| mod/wiki:createpage                       | Prohibit |
| mod/wiki:editcomment                      | Prohibit |
| mod/wiki:editpage                         | Prohibit |
| mod/workshop:peerassess                   | Prohibit |
| mod/workshop:submit                       | Prohibit |
| mod/hotquestion:manageentries             | Allow    |

We can hide the submit button in Lesson and the Remove and Approve buttons in Hot Question with the following:

``` css
div#fitem_id_submitbutton {
    display: none !important;
}

div#questions_list > table.generaltable > tbody > tr > td:nth-child(2) > a, div#questions_list > table.generaltable > tbody > tr > td:nth-child(3), div#questions_list > table.generaltable > tbody > tr > td:nth-child(4), div#questions_list > table.generaltable > tbody > tr > td:nth-child(5) {
    display: none !important;
}
```

XML files for the [teacher](attachments/125941147/125942860.xml) and [student](attachments/125941147/125942862.xml) role can be found by clicking on the relevant links (modified the files (I have updated the files in accordance with Alistair's comments about some of the permissions on the student role apart from readuserblogs as I am not sure students should have access to all other student blogs) .

The backup file of the test Moodle course is [here](attachments/125941147/125943248.mbz).

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Teacher Role Permission Capability Changes.xls](attachments/125941147/125941154.xls) (application/vnd.ms-excel)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [editingteacher.xml](attachments/125941147/125941155.xml) (text/xml)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [student.xml](attachments/125941147/125941686.xml) (text/xml)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Student Login.png](attachments/125941147/125941704.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [editingteacher\_readonly.xml](attachments/125941147/125942860.xml) (text/xml)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [student\_readonly.xml](attachments/125941147/125945168.xml) (text/xml)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Read-Only Test Course.mbz](attachments/125941147/125943248.mbz) (application/octet-stream)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [student\_readonly.xml](attachments/125941147/125942862.xml) (text/xml)

