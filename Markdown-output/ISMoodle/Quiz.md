# Quiz

# Issue with quiz display/pagination

On Thurs 4th Dec 2008 Matt reported a problem with the display of a quiz. When we looked in the database there were two ',' next to each other and this was messing up the display and pagination, see below:

``` java
SELECT id, course, name, questions FROM mdl_quiz WHERE id = '2853';
+------+--------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| id   | course | name                    | questions                                                                                                                                                                                                                                      |
+------+--------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 2853 |   2284 | Certificate 2008 Part 1 | 33489,35319,27831,27865,34567,27949,33505,33485,33579,27665,60585,33559,27911,60579,33531,27675,33291,37787,38931,32859,27773,38309,38387,37833,34875,37837,32955,27647,57747,35029,35215,35353,34963,35103,35221,35311,35145,34997,0,,34549,0 |
+------+--------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
```

To fix this Rachel ran the following command to remove the double ,

``` java
update mdl_quiz set questions = "33489,35319,27831,27865,34567,27949,33505,33485,33579,27665,60585,33559,27911,60579,33531,27675,33291,37787,38931,32859,27773,38309,38387,37833,34875,37837,32955,27647,57747,35029,35215,35353,34963,35103,35221,35311,35145,34997,0,34549,0" where id = 2853;
```

The extra commas entered the database via the Re-Ordering tool on the Edit tab when making changes to the questions in a quiz. There is a known bug with this tool that has subsequently been fixed in the Moodle CVS code. This is a supportive factor for using the CVS versions of Moodle.  
