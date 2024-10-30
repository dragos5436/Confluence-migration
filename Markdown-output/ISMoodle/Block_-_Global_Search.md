# Block - Global Search

-   [Enabling the Global Search Block](#BlockGlobalSearch-EnablingtheGlobalSearchBlock)
-   [enable file indexing for PDF and Word documents](#BlockGlobalSearch-enablefileindexingforPDFandWorddocuments)
    -   [PDFtotext](#BlockGlobalSearch-PDFtotext)
        -   [Testing that PDFtotext works](#BlockGlobalSearch-TestingthatPDFtotextworks)
    -   [Antiword](#BlockGlobalSearch-Antiword)
-   [Advanced Searching (hiding \[\[modulenameplural\]\] from the drop down list)](#BlockGlobalSearch-AdvancedSearching(hiding%5B%5Bmodulenameplural%5D%5Dfromthedropdownlist))
-   [Technical issues (Pete testing it)](#BlockGlobalSearch-Technicalissues(Petetestingit))

# Enabling the Global Search Block

This block is actually part of Moodle 1.9, but it needs to be enabled. To do this:

1.  Go to Admin &gt; Miscellaneous &gt; Experimental and tick the box to *enable global search*.
2.  Next go to Admin &gt; Modules &gt; Blocks &gt; Global Search and click on save without editing any of the options.
3.  Go into your test course and add the Global Search block, search on any word, e.g. 'test'. If the search results report that no index has been created then click to create this index.
    **PLEASE NOTE** this can take a long time on a large database so be careful about doing this on your live server.
4.  Once the index is created try and do a search again.

# enable file indexing for PDF and Word documents

To get the Global Search to index PDF files and Word documents we need to install to extra things into Moodle: **xpdf pdftotext** and **antiword**.

if you **enable file indexing** under Admin &gt; Modules &gt; Blocks &gt; Global Search then you need to have **pdftotext** and **antiword** installed on the server in the paths specified on this Moodle settings page.

## PDFtotext

**On Windows**

1.  to install PDFtotext go to <http://www.foolabs.com/xpdf/download.html>
2.  I downloaded <ftp://ftp.foolabs.com/pub/xpdf/xpdf-3.02pl2-win32.zip>
3.  Unzip this file and copy the unzipped **xpdf** folder to your moodle/lib/ folder ensuring that the **pdftotext.exe** is where Moodle expects to find it
    1.  go to Administration &gt; Modules &gt; Blocks &gt; Global Search to check where moodle will be looking for this exe file

**On Linux/Ubuntu**

1.  copy the xpdf folder to **/data/apache/htdocs/moodle/lib/xpdf** (a copy of the xpdf folder is at /home.local/ccspmdl/ on moodle-pp)
2.  check that the **pdftotext.exe** is where Moodle expects to find it
    1.  go to Administration &gt; Modules &gt; Blocks &gt; Global Search to check where moodle will be looking for this exe file
3.  check the permissions of this exe file as it must be executable

**NOTE:** When you edit settings at Administration &gt; Modules &gt; Blocks &gt; Global Search they are saved in the **mdl\_config** MySQL table.

### Testing that PDFtotext works

Check that you have a PDF file as a resource in a course and search for a word from within this PDF file (ideally something obscure so that your search results do not bring back loads or results you'll have to search though). If your file is not found by the search then check that the PDF file is being indexed:

-   click on the **statistics** link from the search page (http://&lt;moodle website&gt;/search/stats.php)
-   run the **indexer test** (http://&lt;moodle website&gt;/search/tests/index.php)
-   check to see how PDFs are listed in the report (if this is a long page you may want to use the Edit &gt; Find function in your browser), ideally it should say that it has finished the pdf files, if it reports errors then it has not worked correctly
-   At the bottom of this page it should report that it has finished and give you a link to **start indexing** to do it for real.
-   Run the real indexer (be careful what time of day you do this as it may take a while and slow down the Moodle server which it is running) and check that it finishes and gives a link back to the search **query page**.
-   Search for a word from your PDF file again and this time it should be found.
-   In the future the [cron job](cron_job) should refresh this indexing periodically so that you don't have to do it manually when you add more PDF files etc.

## Antiword

See <http://www.winfield.demon.nl/>

Download the <http://www.winfield.demon.nl/#Programmer>

# Advanced Searching (hiding \[\[modulenameplural\]\] from the drop down list)

There is an option to do an advanced search which allows you to narrow down your search and to look in just one of the following modules: chat, databases, forums, glossaries, lessons, resources, technical project, or wikis.

At the time of writing (25 April) we do not have the *Technical project* activity module installed on our Moodle installation and so this appears in the drop down menu as **\[\[modulenameplural\]\]**.

To hide this you need to comment out two lines in the /data/apache/htdocs/moodle/**search/lib.php** file (lines 43 and 44):

``` java
//define('SEARCH_TYPE_TECHPROJECT', 'techproject');
//define('PATH_FOR_SEARCH_TYPE_TECHPROJECT', 'mod/techproject');
```

This will remove the unwanted \[\[modulenameplural\]\] from the drop down list in the advanced search.

See <http://docs.moodle.org/en/Global_Search_set-up#Supported_modules> for more info. 

# Technical issues (Pete testing it)

20 April 09 - I've been trying to get this run locally on my test setup but it fails - slightly tricky as my server's running windows so may be a red herring.

At the time of writing, Moodle tracker currently has 25 unresolved issues with the Global search - see <http://tracker.moodle.org/browse/MDL/component/10300>

A couple of thoughts re our setup:

-   Is this anywhere near stable enough for users to use?
-   The indexed material appear to be physical files on a disk - how does this work with load balancing?

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Global Search settings.gif](attachments/2031762/2097174.gif) (image/gif)

