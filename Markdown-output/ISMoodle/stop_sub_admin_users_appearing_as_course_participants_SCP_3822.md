# stop sub\_admin users appearing as course participants SCP 3822

Read more about the **[**sub admin role**](Roles)** and the **[**change to the moodle/index.php file**](homepage_display_for_sub_admin_users_SCP_3803)** which go with this hack.

We found when we tried to implement the sub\_admin role that on going to the 'participants' list in a course, that all users with the sub\_admin role (e.g. all of Apps Dev and LTSS staff) were being listed as participants of a course, e.g. go to <http://moodle.ucl.ac.uk/user/index.php?contextid=19989> which was undesirable.

To get round this we added the following code to **moodle/user/index.php** (around line 69-91):

``` java
$canviewroles    = get_roles_with_capability('moodle/course:view', CAP_ALLOW, $context);

$doanythingroles = get_roles_with_capability('moodle/site:doanything', CAP_ALLOW, $sitecontext);

//added by Rachel Cooper 30/10/2008
//Only users with the sub-admin or full admin roles should be able to approve courses
//so create this new $courseapprovalroles variable
$courseapprovalroles = get_roles_with_capability('moodle/site:approvecourse', CAP_ALLOW, $sitecontext);
//end of added code

foreach ($roles as $role) {
    if (!isset($canviewroles[$role->id])) {   // Avoid this role (eg course creator)
          $avoidroles[] = $role->id;
          unset($roles[$role->id]);
          continue;
    }
    if (isset($doanythingroles[$role->id])) {   // Avoid this role (ie admin)
         $avoidroles[] = $role->id;
         unset($roles[$role->id]);
         continue;
    }
    //added by Rachel Cooper 30/10/2008
    //stop the sub_admin users appearing on the 'current role' drop down list
    if (isset($courseapprovalroles[$role->id])) {   // Avoid this role (ie sub_admin)
        $avoidroles[] = $role->id;
        unset($roles[$role->id]);
        continue;
    }
    //end of added code
```

This stops the 'sub admin' role appearing in the 'current role' drop down list and stops and users who are assigned to the sub admin role appearing in the course participants list.
