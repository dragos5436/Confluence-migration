# homepage display for sub\_admin users SCP 3803

We created a new ['Sub Administrator' role](Roles) that all members of LTSS and Apps Dev are a member of. However having your account assigned to this 'sub\_admin' role made the Moodle home page very slow to load as it loaded every single Moodle course. The following change to the index.php file fixes this.

(See also [stop sub\_admin users appearing as course participants SCP 3822](stop_sub_admin_users_appearing_as_course_participants_SCP_3822) )

This fix assume that only the **admin** and **sub\_admin** roles will have permissions to create courses.

Edit the moodle/**index.php** file as follows (around line 219)

``` java
case FRONTPAGECOURSELIST:

   /*** added by Rachel Cooper on 6/10/08 ***/
   //check to see if the logged in user has the rights to approve course creation.
   //(only full admin or sub admin users have the rights to approve course creation)

   if (isloggedin() and has_capability('moodle/site:approvecourse', get_context_instance(CONTEXT_SYSTEM)) and !isguest() and empty($CFG->disablemycourses)) {
      //Do nothing, the moodle home page will load quicker
      //if it doesn't display every single course to users with the 'sub admin' role
      //only full admin or sub admin users have the rights to approve course creation
   }
   else
   /*** end of code added by Rachel Cooper on 6/10/08 ***/

   if (isloggedin() and !has_capability('moodle/site:config', get_context_instance(CONTEXT_SYSTEM)) and !isguest() and empty($CFG->disablemycourses)) {
      print_heading_block(get_string('mycourses'));
      print_my_moodle();
   }

   else if ((!has_capability('moodle/site:config', get_context_instance(CONTEXT_SYSTEM)) and !isguest()) or (count_records('course') <= FRONTPAGECOURSELIMIT)) {
      // admin should not see list of courses when there are too many of them
      print_heading_block(get_string('availablecourses'));
      print_courses(0);
   }
break;
```
