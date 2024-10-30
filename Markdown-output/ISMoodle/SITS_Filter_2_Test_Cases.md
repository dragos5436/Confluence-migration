# SITS Filter 2 Test Cases

Please add any test cases to the list that you can think of:

------------------------------------------------------------------------

1.  CASE: A student is enrolled on a programme and selects a module and has not been accepted the department yet (and it is within 2 weeks of start of term so it has not been auto-accepted):
    TEST: The student should not be enrolled on the module, unless the mapping has been set up to allow pre-accepted enrolments.
2.  CASE: A student is enrolled on a programme and selects a module, is approved and enrolled on a Moodle course. They then decide to change to another module and so unenrol themselves in Portico.
    TEST: They should be unenroled from any Moodle courses that include that module overnight (including where any departments that include that module have been defined, unless they are still taking another module within that department).
3.  CASE: A student is enrolled on a programme and selects a module and is rejected by the department.
    TEST: They should not be enroled on any related Moodle courses.

**Martin's contributions - may double up with above - I think I like his simpler layout better though:**

Student confirmed on module in Portico – should be enrolled on Moodle courses that are mapped

Student un-enrols from module in Portico - should be un-enrolled on Moodle courses that are mapped

Student is un-enrolled from course on Moodle but is still enrolled on module in Portico – should be re-enrolled on moodle course.

A previously unenrolled (via portico xml) student is manually enrolled via Moodle – Student should remain enrolled in Moodle?

----------------------------------------------

Need to ensure that communications are made to all Moodle users that we will be using this method of un-enrolment. Possible resistance from some users?

Have we identified any issues where academics require the student records to still be in place past the point at which they may be un-enrolled from Portico?

What is the date at which students are removed from Portico?

How are courses who do not conform with the normal academic year handled? (Medical school and some masters?)

What happens to students retaking/resitting how are they handled? Are they enrolled/un-enrolled?
