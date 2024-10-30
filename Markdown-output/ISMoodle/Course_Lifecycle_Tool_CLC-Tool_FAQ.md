# Course Lifecycle Tool (CLC-Tool) FAQ

Q. Complete list of functionalities included in MVP (first release) for rollover CLC tool:

A. 

Course Rollover:

-   Auto-suggest fields for courses which are delivering module occurrences based on SITS data
-   Copy course, excluding Collaborate and Zoom activities
-   Course reset of new course
-   Places new course in 2022-23 category structure
-   Moves current course to 2021-22 category structure
-   Creates **inactive** portico mappings for the new academic year
-   New course is set as hidden
-   email sent when rollover complete with a link to the Date Manager for that course  -&gt;** [M67 - Date manager](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M67+-+Date+manager)**

Category Structure:

-   Faculty / Department / Entity category structure generated from SITS data
-   Programme and Miscellaneous categories generated at Department level
-   Category level Moodle roles copied from current structure to new structure (? tbc) 

Q. List of functionalities not included in the MVP:

A.

CTP-762 - (TI4 21-22 and TI1 22-23) - CLC - Rollover Tool improvements Done  & Silvia also has a number of things in mind

Q. What happens if my course has no mapping?
A.

You must select a mapping in order to use the rollover tool.

The mapping decides which departmental category the course will be rolled over into and is based upon which department the course mapping belongs too.

Q. What happens if my course has multiple mappings?

A. 

Q. What happens if my course is mapped to a programme / route?

A.

Q. What happens if my course is mapped to a module and to a programme?

A.

Q. What happens if I add a mapping to a 'timeless' course to roll over content?

A.

Q. Can I rollover my Term 1 course into a Term 2 course?

A. No at the current time the CLC-Tool does not allow rollover within the same academic year. This function will be added to the tool before October 2022

**What is preventing this?** This is supported - just delete the incremented mapping and search & add the term 2 mapping.

Q. What do I need to prepare /do before rolling over my course?

A.

Q. Who can do the rollover?

A. The rollover function is available to the Moodle Course Administrator and Tutor role

Q. What happens to my old course once I have rolled over?

A.

The old/current course will have a Course end date set & placed in the 2021-22 category structure, otherwise it will remain unchanged & continue to be available as previously.

Q. Can I edit my course full name, short name, Portico ID, category?

A.

Q. Can I edit the start date / end date of the rolled over course?

A.

Yes.

Please note having a correct course start date and course end date is critical to the operation of Course Life Cycle processes. Inputting of incorrect dates may negatively affect your course interacting with Moodle activities.

Q. Can I roll over the same course multiple times?

A.

Q.  Can I roll over a course reading list?

A. ? Course Reading lists rely on the 8 character module code, the naming convention used by the course rollover tool ensures old & new courses will be able to access it. 

**Q. Can I roll over a 'frozen/read only' course?  (Not relevant until the Course Freeze tool is available)
**

**A.**

Q. Who receive the completion email? Can I add another user? 

A. The person requesting the course rollover. No, but you can forward the email when you get it.

Q: Previously the snapshot was separate from Moodle and was never updated, so the danger of data loss was minimal. Now, the previous years of the courses we have to keep access are on the live instance of Moodle, so there is a danger when Moodle is updated and something goes wrong to loose access to archive data. How we ensure that these are protected? Thank you very much, hopefully it has been answered already.
Possible answer - to be ‘tidied’
We regularly update all snapshot instances to the most recent, supported Moodle version to keep it secured.

If the tutor means that it was read-only. I believe snapshot was made read-only after November only to allow for LSA and marking of LSA. There will be a system to 'freeze' /make courses with past date (course end date+ a number of weeks - to be decided) set up. But we don't have this in place right now and have multiple solutions possible so I cannot give details because it's not been decided which solution will be implemented yet. Rest assured that the equivalent of snapshot 'read-only' will apply to past course to avoid people changing old courses by accident.

AS - CLC reduces risk of data loss from course resets during the switching over phase. 

All Snapshots are equally upgraded as prod. Data loss from an upgrade is a highly unlikely outcome in any case.

We are indeed changing the implementation of post-LSA read-only of these archive courses but there is no fundamental difference here in protecting from data loss.

The highest risk relates to past courses re-enabling the portico mappings for an old course causing enrolments to be deleted & knock on impact on course completion data. This is on our radar & we will have some mitigations in place for that.

Questions from Fiona H:

1.  How does the rollover work for modules that run in alternate years? There are many instances of this in A&H and SHS, so there will not be a 2021-22 instance to rollover.

A. Just delete the proposed mappings and select the ones for the desired academic year. 

1.  What is the timeline for the completion of this work?

A. Further improvements to the overall solution are planned over the next 18 months.

1.  What happens if somebody forgets to rollover their module? How do they get this resolved?

A. They roll it over.

1.  Why is this better than the current process (for teachers and for staff in departments, not for Digi Ed colleagues)? What is the resource/time gain?

A. The timeframe where courses can be prepared for the next academic year is expanded significantly - can happen much earlier - which allows workload to be less compressed.

1.  What exactly will be rolled over, I assume all content on the current Moodle page?

A. I'm sure we've already answered that in the FAQs.

1.  What guidance will be provided to departments to ensure that we are not rolling over copyrighted material that is out of licence/checking that we are removing old assessment information etc.? Will need a Moodle page rollover health check or something for colleagues to work through.

A. This is exactly the same as before.

1.  The information that colleagues are required to put into Moodle when rolling over a course, such as end dates and start dates – will there be a template provided for this by DigiEd colleagues, or will departments need to discuss internally to set these? If the latter, are there any concerns about differences between departments, or indeed, within a department where there is no standardisation and/or human error?

A. The data is automatically filled by the system as much as feasible. Beyond that they are your courses, you should know.

1.  What communications have gone out to departments about this decision and the implication of this on their workload? There is this article from the Education bulletin:

Goodbye to Moodle Snapshots!! ). However, the way 'rollover' is talked about, especially towards the start of the article, does not make it clear that there needs to be departmental action.

A. Departments have always had to reset courses in the summer after the snapshot is taken, this is a replacement for that process.

Q: what happens if we use a course as a landing page? will the link to the relevant courses be replicated?

A. You will need to update the links in the rolled over course


