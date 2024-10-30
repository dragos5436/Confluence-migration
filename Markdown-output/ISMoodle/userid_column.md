# userid column

Display the userid in the <http://moodle-test.ucl.ac.uk/admin/user.php> page as another column in the table. To do this change the following lines of code in the /data/apache/htdocs/moodle/admin/user.php file:

Line 125 from

``` java
$columns = array("firstname", "lastname", "email", "city", "country", "lastaccess");
```

to

``` java
$columns = array("firstname", "lastname", *"username",* "email", "city", "country", "lastaccess");
```

Lines 205 - 206 from

``` java
$table->head = array ("$firstname / $lastname", $email, $city, $country, $lastaccess, "", "", "");
$table->align = array ("left", "left", "left", "left", "left", "center", "center", "center");
```

to

``` java
$table->head = array ("$firstname / $lastname", *$username,* $email, $city, $country, $lastaccess, "", "", "");
$table->align = array ("left", "left", *"left",* "left", "left", "left", "center", "center", "center");
```

Lines 269 - 270 from

``` java
$table->data\[\] = array ("<a href=\"../user/view.php?id=$user-> id&amp;course=$site->id\">$fullname</a>","$user->email",
```

to

``` java
$table->data\[\] = array ("<a href=\"../user/view.php?id=$user-> id&amp;course=$site->id\">$fullname</a>",
"$user->username",
"$user->email",
```
