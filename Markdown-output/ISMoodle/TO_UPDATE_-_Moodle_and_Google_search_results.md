# TO UPDATE? - Moodle and Google search results

In order to prevent the wasdev-a and moodle-pp machines from appearing in search engines, particularly the new Google appliances that have been purchased, a '**robots.txt**' file has been placed in the root moodle directory ( **/data/apache/htdocs/moodle/robots.txt** ).

> Adrian writes:
> We need to check whether this will cause existing pages to be removed from the search index - we can check in a few days to see if they are still there.

If we rebuild these systems, we need to remember to put the robots.txt file back on development and pre-production installation, but not on the live Moodle installations.

The file is owned by root and so needs a member of Systems to edit it if necessary. 

The contents of the file is very simple:

``` java
User-agent: *
Disallow: /
```
