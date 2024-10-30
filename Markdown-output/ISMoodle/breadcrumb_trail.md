# breadcrumb trail

In Moodle 1.9 the breadcrumb trail was not displaying correctly.

To fix this edit the header.html file in each of the UCL themes e.g./data/apache/htdocs/moodle/theme/ucl-pink/header.html

Change line 45 from:

``` java
<div class="breadcrumb"><?php print_navigation("$navigation"); ?></div>
```

To:

``` java
<div class="breadcrumb"><?php print_navigation($navigation); ?></div>
```
