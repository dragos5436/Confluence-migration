# Block - Library Resources and Library Search

-   [Library Search](#BlockLibraryResourcesandLibrarySearch-LibrarySearch)
-   [Library Resources](#BlockLibraryResourcesandLibrarySearch-LibraryResources)

# Library Search

-   unzip the attached library\_search.zipand copy the unzipped files as described below:
    -   copy the **library\_search** folder to **/data/apache/htdocs/moodle/blocks**
    -   copy the library\_search/lang/en\_utf8/block\_library\_search.php file to the moodle/lang/en\_utf8 folder
    -   ensure the files have the correct permissions, e.g. 644 

<!-- -->

-   Go to the **Notifications** folder

<!-- -->

-   The following table will be added to the database: **mdl\_block\_library\_search**
    It may add records for RHUL, if so these can be edited through the Moodle Admin page for the block

If the table is not added you can add it manually as follows:

``` java
CREATE TABLE mdl_block_library_search (
  id int(11) NOT NULL auto_increment,
  linktext varchar(255) NOT NULL default '',
  url varchar(255) NOT NULL default '',
  notes text,
  defaultshow int(11) NOT NULL default '1',
  PRIMARY KEY  (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
```

Add the following records to the table:

**Library Catalogue**
[http://library.ucl.ac.uk/F?func=find-b&request=%s&find\_code=WRD](http://library.ucl.ac.uk/F?func=find-b&request=%s&find_code=WRD)

**Metalib: General Search**
[http://metalib-a.lib.ucl.ac.uk:8331/V/?func=meta-1-check&mode=simple&find\_request\_1=%s&ckbox=UCL00688&ckbox=UCL00331&ckbox=UCL00730&ckbox=UCL00953&ckbox=UCL01087&ckbox=UCL00887](http://metalib-a.lib.ucl.ac.uk:8331/V/?func=meta-1-check&mode=simple&find_request_1=%s&ckbox=UCL00688&ckbox=UCL00331&ckbox=UCL00730&ckbox=UCL00953&ckbox=UCL01087&ckbox=UCL00887)

**Google Scholar**
[http://scholar.google.com/scholar?q=%s](http://scholar.google.com/scholar?q=%s)

# Library Resources

-   unzip the attached [library\_resources.zip](attachments/3113216/5177347.zip)and copy the unzipped files as described below:
    -   copy the **library\_resources** folder to **/data/apache/htdocs/moodle/blocks**
    -   copy the lang files
    -   ensure the files have the correct permissions, e.g. 644 

<!-- -->

-   Go to the **Notifications** folder

The following table will be added to the database:

-   **mdl\_block\_library\_resources**

The code given to us by RHUL also included two other tables which we don't need so these are commented out in the attached zip file and will not be added when you install this block.

-   **rhul\_lib\_liaison**
-   **rhul\_lib\_liaison\_subject**

comment out line 63 in **/data/apache/htdocs/moodle/blocks/library\_resources/block\_library\_resources.php**

``` java
//$librarian = get_record_sql('SELECT * FROM `rhul_lib_liaison` WHERE rhul_lib_liaison.id in (SELECT librarian FROM rhul_lib_liaison_subject WHERE rhul_lib_li\
aison_subject.category =' .$course->category .')');
```

The following records need to be added to the **mdl\_block\_library\_resources** table:

``` java
select * from mdl_block_library_resources;
+----+------------------------+------------------------------------------------------------------------------------------------------+-------+-------------+---------+
| id | linktext               | url                                                                                                  | notes | defaultshow | context |
+----+------------------------+------------------------------------------------------------------------------------------------------+-------+-------------+---------+
|  1 | Reading List           | http://ls-tlss.ucl.ac.uk/cgi-bin/displaylist?module=08%s                                             |       |           1 |       2 |
|  2 | Past UCL Exam Papers   | http://digitool-a.lib.ucl.ac.uk:8881/R?func=search-advanced-go&LOCAL_BASE=1152&find_code1=WRD&reques |       |           1 |       2 |
|  3 | UCL Library Catalogue  | http://library.ucl.ac.uk                                                                             |       |           1 |       1 |
|  4 | Metalib                | http://metalib-a.lib.ucl.ac.uk:8331/V                                                                |       |           1 |       1 |
|  5 | UCL Subject Librarians | http://www.ucl.ac.uk/Library/whoaz.shtml                                                             |       |           1 |       1 |
+----+------------------------+------------------------------------------------------------------------------------------------------+-------+-------------+---------+
5 rows in set (0.00 sec)
```

**%s** in the URL's above is replaced with the course code (or category number etc depending on the context you choose) when the link is displayed in the course.

For   *Reading List   * *<http://ls-tlss.ucl.ac.uk/cgi-bin/displaylist?module=_>***08**%s\_   
We need to replace **08** with the current year to allow the search to work. To change the url for the current year, In Site Admin, select Modules, Blocks, Library Resources and click on the link Add/Edit search engines. Select the edit icon on the Reading List row and change the url so that the number before the %s is the current year. The click the edit button.
(This could be automated with some coding when someone has time!).

These two library blocks were installed on the live Moodle server on 12-Aug-08 during the outage, but hidden from users. They were un-hidden to make them available to users on the live server on 17-Sept-08.

Margaret Stone requested the following changes to Library Resources Block:

Open all the links in a new window

Disable the "Subject Librarians" link by default.

Add the following urls to the block

 
"WISE Information Skills"
(<http://moodle.ucl.ac.uk/course/category.php?id=70>)

and "Library homepage" (<http://www.ucl.ac.uk/library>)

This was scp'ed (3934) on live on 1/4/09

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Library\_Moodle\_proposal.doc](attachments/3113216/3375107.doc) (application/msword)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [library\_search.zip](attachments/3113216/5177346.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [library\_resources.zip](attachments/3113216/5177347.zip) (application/zip)

