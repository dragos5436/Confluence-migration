# ELE Tests CMIS-Moodle integration

 
User Acceptance Test Sheet
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
Item Being Tested:
ELE-Integration Project:CMIS - Moodle Integration
 
 
 
 
 
Test Notes:
System test
Group import mapping status : NA (Not applicable),  ADD (Add ), RMV(Remove)
 
 
 
 
Test Run:
1
 
 
 
 
 
 
Date of Test:
August 2015
 
 
 
 
 
Name of Tester:
 
 
 
 
 
 
Test Site
<https://ele.moodle-uat.ucl.ac.uk/>
 
 
 
 
 
\#
Testing Section
Scenario
Expected Outcome
State Before
Pass
State After
Test Notes
1
Tests to add groups, groupings and gorup members
CMIS: Group GRP1  created for Module CHEM1004.
Moodle: Moodle course ID=24966 is mapped to SITS Module CHEM1004 . Select 'Allow Group Import' for that mapped module. 
New Group =&gt; GRP1 created on course AA1.
New Grouping =&gt;GRP1 created on course AA1.
Group =&gt;GRP1 assigned to Grouping=&gt; GRP1 
Course reset - students cleared - mapping deactivated until just prior to test.  Groups and Groupings deleted
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 
Groups TUT1 - TUT5 created
 
CMIS: Group GRP2 created for Module MOD1.
Moodle: Moodle course AA1 is mapped to SITS Module MOD1 . 'Allow Group Import' is set for that mapped module.
Module and Moodle course as above
New Group =&gt; GRP2 created on course AA1.
New Grouping =&gt;GRP2 created on course AA1.
Group =&gt;GRP2 assigned to Grouping=&gt; GRP2
End state state after previous test.
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Group TUT6 created
Done
2
CMIS: Member=&gt;MEM1 enrolled to Group=&gt;GRP1
Moodle: Moodle course AA1 is mapped to SITS Module MOD1 .   'Allow Group Import' is set for that mapped module. Member=&gt;MEM1 is enrolled to mapped course=&gt;AA1
Module and Moodle course as above
Member=&gt;MEM1 exists in Group=&gt;GRP1 on course=&gt;AA1 in Moodle
End state state after previous test.
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 
Students added to groups - Nathanael Jani (014041113) - TUT3
3
CMIS: Member=&gt;MEM2 enrolled to Group=&gt;GRP1
Moodle: Moodle course AA1 is mapped to SITS Module MOD1 .   'Allow Group Import' is set for that mapped module. Member=&gt;MEM2 is not enrolled to mapped course=&gt;AA1
Module and Moodle course as above
Member=&gt;MEM2 doesn't exist in Group=&gt;GRP1 on course=&gt;AA1 in Moodle
End state state after previous test.
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Student Mateusz Kotowski (014012373) added to group TUT6
Done
 
CMIS: Not Applicable
Moodle: Moodle course=&gt;AA2 Course ID=34511 is mapped to SITS Module MOD1 . Donot select 'Allow Group Import' for that mapped module.
Module as above
New Group =&gt; GRP1 , GRP2 are not created on course AA2.
New Grouping =&gt;GRP1 , GRP2 are not created on course AA2.
Group =&gt;GRP1 is not assigned to Grouping=&gt; GRP1
Group =&gt;GRP2 is not assigned to Grouping=&gt; GRP2
Clean new test course - no enrolments mapped to chem1004 - allow groups not selected
 
 
 
 
CMIS: Not Applicable
Moodle: Moodle course=&gt;AA2 is mapped to SITS Module MOD1 . Select 'Allow Group Import' for that mapped module.
Module and Moodle course as above
New Group =&gt; GRP1 , GRP2 created on course AA2.
New Grouping =&gt;GRP1 , GRP2 created on course AA2.
Group =&gt;GRP1 is assigned to Grouping=&gt; GRP1
Group =&gt;GRP2 is assigned to Grouping=&gt; GRP2
Member=&gt;MEM1 exists in Group=&gt;GRP1 
 enrolments mapped to chem1004 - allow groups is selected.
Existing enrolments from previous tests so should see students put into groups
 
 
 
 
Tests to delete group,groupings and group members
CMIS: Member=&gt;MEM1  unenrolled from Group=&gt;GRP1  for Module=&gt;MOD1
Moodle:Not Applicable
Member=&gt;MEM1  deleted from Group=&gt;GRP1 on course=&gt;AA1, AA2 in Moodle
States from last test on each course
 
 
 
4
CMIS: Group=&gt;GRP1 is deleted for Module=&gt;MOD1
Moodle: Not Applicable
Group=&gt;GRP1  and Grouping=&gt;GRP1 deleted from course=&gt;AA1,AA2 in Moodle
States from last test on  course
 
 
 
 
CMIS: Not Applicable
Moodle: Uncheck 'Allow group import' from Course =&gt; AA1 for Module=&gt;MOD1
Moodle course ID=24966
Group=&gt;GRP1,GRP2  and Grouping=&gt;GRP1,GRP2 deleted from course=&gt;AA1 in Moodle
States from last test on  course
 
 
 
 
 
CMIS: Not Applicable
Moodle: Select  'Allow group import' from Course =&gt; AA1 for Module=&gt;MOD1
New Group =&gt; GRP1 , GRP2 created on course AA2.
New Grouping =&gt;GRP1 , GRP2 created on course AA2.
Group =&gt;GRP1 is assigned to Grouping=&gt; GRP1
Group =&gt;GRP2 is assigned to Grouping=&gt; GRP2
Actviate group import on course ID=24966
 
 
 
 
 
CMIS: Not Applicable
Moodle: Unmap Module=&gt;MOD1 from Course=&gt;AA2
Group=&gt;GRP1,GRP2  and Grouping=&gt;GRP1,GRP2 deleted from course=&gt;AA1 in Moodle
Unmap chem1004 from course ID=34511
 
 
 
 
 
 
 
 
 
 
Overall Pass/Fail
 
 
 
 
 
 
 
 

 

 

 
User Acceptance Test Sheet
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
Item Being Tested:
ELE-Integration Project:CMIS - Moodle Integration
 
 
 
 
 
 
Test Notes:
System test
Group import mapping status : NA (Not applicable),  ADD (Add), RMV (Remove)
 
 
 
 
 
Test Run:
2
 
 
 
 
 
 
 
Date of Test:
Sept 2014
 
 
 
 
 
 
Name of Tester:
Rod Digges
 
 
 
 
 
 
Test Site
<https://ele.moodle-uat.ucl.ac.uk/>
 
 
 
 
 
 
\#
Testing Section
Scenario
Expected Outcome
State Before
State After
Test Notes
Pass?
Comments
1
Tests to add groups, groupings and gorup members
CMIS: MOD1 and MOD2 both have a GRP1 (identical code)
Moodle: Moodle course AA1 is mapped to modules MOD1  AND MOD2. Select 'Allow Group Import' for that mapped module. 
New Group =&gt; One instance of GRP1 created on course AA1.
New Grouping =&gt; One instance of GRP1 created on course AA1.
Group =&gt;GRP1 assigned to Grouping =&gt; GRP1 
Course AA1(id 609: BIOL1002) has no corresponding groups.<img src="images/icons/emoticons/thumbs_up.svg" alt="(thumbs up)" class="emoticon emoticon-thumbs-up" />
Course AA1 has GRP1 assigned to grouping GRP1
RUN 1
CMIS module BIOL1002 and BIOL1002A have groups TUT1 - TUT8.
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Tutor Lawrence Bellamy assigned to all groups<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />
 
CMIS: MOD3 and MOD4 both have a GRPA (identical code). MOD3-GRPA has student STU1 and MOD4-GRPA has student STU2
Moodle: Moodle course AA2 is mapped to modules MOD3 AND MOD4. Select 'Allow Group Import' for that mapped module. 
New Group =&gt; One instance of GRPA created on course AA2.
New Grouping =&gt; One instance of GRP1 created on course AA2
Group =&gt;GRPA assigned to Grouping =&gt; GRPA
Member =&gt;STU1 is assigned to GRPA, STU2 is assigned to GRPA
Course AA2- id 664 Introduction to Biological Anthropology ( has no corresponding groups <img src="images/icons/emoticons/thumbs_up.svg" alt="(thumbs up)" class="emoticon emoticon-thumbs-up" />. SITS Filter has been run prior to group import.
Course AA2 has GRP1 assigned to grouping GRP1, with STU1 and STU2 assigned to the group.
RUN 1
CMIS module ANTH1014 and ANTH1014A have groups TUT01A - TUT12B. Student 014083434 (zczlzdo, Zhenan Dong) is in ANTH1014 TUT05A<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />, student 014057174 (uclqsna, Sophie Nannetti) is in ANTH1014A TUT05A<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />.
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Zhenan (viollette) Dong enrolled but she has not been assigned to any group.
2
CMIS: MOD5 and MOD6 both have a GRPX (identical code)
Moodle: Moodle course AA3 already has MOD5 mapped with Allow Group Import selected. MOD6 is added.
No change
Course AA3 (id 5363) has had one run with MOD5 already mapped, thus already has GRPX<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />.

Mapping a new module with a new code does not change GRPX

LATN2008A mapping added prior to run 2<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

RUN 2
CMIS module LATN2008 and LATN2008A have groups PGTA1 and 2, and grp 1  and grp 2
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 
3
CMIS: MOD7 and MOD8 both have a GRPZ (identical code). MOD3-GRPZ has student STU3 and MOD4-GRPZ has student STU4

Moodle: Moodle course AA4(id 3429 already has MOD7 mapped with Allow Group Import selected. MOD8 is added.

No change to groups or groupings.
Member =&gt;STU3 remains in GRPZ, STU4 is also assigned to GRPZ.
Course AA4 has had one run with MOD7 already mapped, thus already has GRPZ.
SITS Filter has been run prior to group import.

Student Ngoc Ha (12013198) in TA prior to run 2.<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

Student Hoelke exists on course but has not been assigned to a group prior to run 2.

Mapping a new module with the same group code simply adds new students to the existing group and doesn't change the students already in there.

SEHI6011A mapped prior to run 2

RUN 2
CMIS module SEHI6011 and SEHI6011A have groups TA and TB. Student 012013198 (yjmsnqh, Ngoc Quyen) is in SEHI6011 TA<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />, student 012011078 (zceipkh, Philipp Hoelke) is in SEHI6011A TA<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />.
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 
 
Tests to delete group,groupings and group members
CMIS: MOD1 and MOD2 are unchanged
Moodle:AA1 has MOD1 and MOD2 mapped - deselect Allow Group Import for those mappings<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />.
Group=&gt;GRP1  removed from Moodle course. Students remain in group.
Has groups and groupings.
No groups or groupings.<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
RUN 3
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 
4
CMIS: MOD3 and MOD4 are unchanged
Moodle:AA2 (id664) has MOD3 and MOD4 mapped - remove both mappings<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />.
Group=&gt;GRP1  removed from Moodle course. Students also removed from course.
Has groups and groupings.
Groups and groupings should be removed<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> alongside students.

Students still there but had been manually enrolled previously - no evidence of them being portico enrolled - this is expected behaviour as Alexis enrolled the two test students manually.

RUN 3
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 
 
CMIS: MOD5 and MOD6 are unchanged

Moodle:AA3 (id 5363 has MOD5 (LATN2008) and MOD6 (LATN2008A) mapped - remove the mapping for MOD8<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />. MOD8 not mapped to this course assume we mean remove mapping for MOD6<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

No change
Has groups and groupings.
Groups and groupings should be left intact, as the remaining module still has those groups.<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
RUN 3
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 
 
 
CMIS: MOD7 and MOD8 are unchanged

Moodle:AA4 id 3429) has MOD7(SEHI6011 and MOD8 mapped - deselect Allow Group Import for MOD8 (SEHI6011A).

Member =&gt; STU4 is removed from GRPZ
Has groups and groupings, with studnets STU3 and STU4.
Groups and groupings should be left intact, as the remaining module still has those groups. STU3 (yjmsnqh, Ngoc Quyen) should also still be in group <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />but STU4 (zceipkh, Philipp Hoelke) should be removed.<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
RUN 3
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
Overall Pass/Fail
PASS<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [CMIS-Moodle Integration Test Scripts v1.0RD.xlsx](attachments/56500403/56500417.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)

