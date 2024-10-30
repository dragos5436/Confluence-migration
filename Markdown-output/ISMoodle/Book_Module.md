# Book Module

## Activity Module: Book

Installed on Moodle 1.9 moodle-pp (<http://moodle-test.ucl.ac.uk>)

Download from <http://moodle.org/mod/data/view.php?d=13&rid=319>

Go to the /data/apache/htdocs/moodle/mod folder

``` java
wget http://download.moodle.org/plugins19/mod/book.zip
```

(check the URL as this may change ...) 

unzip the downloaded file

Move the language files 

Go to the Notifications page in Moodle.

#### To test:

Go to your course and add it from the 'resource' drop down list.

#### Notes:

29/04/08 - when you hover over the ![](attachments/2032110/2097158.gif) icon the Alt text is \[\[generateimscp\]\] rather than a more user friendly text.

15/08/2008 - To fix this edit the language file at /data/apache/htdocs/moodle/lang/en\_utf8/book.php and add the following line:

``` java
$string['generateimscp'] = 'Generate zip file of this book';
```

LTSS can advise on the text that should go here ...
 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [generateimscp.gif](attachments/2032110/2097158.gif) (image/gif)

