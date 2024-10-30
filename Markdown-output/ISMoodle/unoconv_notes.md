# unoconv notes

## Unoconv installation

**Overview** – Universal Office Converter (unoconv) is a command line tool to convert any document format that LibreOffice can import to any document format that LibreOffice can export. It makes use of the LibreOffice's UNO bindings for non-interactive conversion of documents. <https://github.com/dagwieers/unoconv>
At UCL's Moodle installation we are using just the python script.
Requirement: If you installed unoconv by hand, make sure you have the required LibreOffice or OpenOffice packages installed. A hard requirement is the UNO python bindings which are often inside a sub package named libreoffice-pyuno or libobasis4.4-pyuno.
**Installed on moodle-d/e/f/g/admin servers**

-   The path to unoconv installation : /usr/bin/unoconv
-   Dependent on LibreOffice packages –

Path to LibreOffice: /usr/lib64/libreoffice

-   Unoconv listener kicks in at the start-up. Path to unoconv upstart script

$ /etc/init/unoconv.conf
<https://docs.moodle.org/31/en/mod/assign/feedback/editpdf/testunoconv/upstart>

-   Following processes run on moodle-d/e/f/admin when the file conversion kicks off from Moodle in this order -&gt;

$ su -s /bin/sh -c exec "$0" "$@" ccspwww – /usr/bin/unoconv –l
$ python /usr/bin/unoconv –l
$ /usr/lib64/libreoffice/program/soffice.bin --headless --invisible --nocrashreport --nodefault –no
*Questions:*

-   *Check the LibreOffice packages installation*

*From README of unoconv*
"If you installed unoconv by hand, make sure you have the required LibreOffice or OpenOffice packages installed. A hard requirement is the UNO python bindings which are often inside a subpackage named libreoffice-pyuno or libobasis4.4-pyuno.Various sub-packages are needed for specific import or export filters, e.g. XML-based filters require the xsltfilter subpackage, e.g. libobasis4.4-xsltfilter."

## Ghost script

Overview – Allows users to annotate a pdf document.
The path to ghostscript installation - /usr/bin/gs
*Questions:*

-   *When is gs* *triggered from Moodle?*

*Ghost script is triggered from Moodle every time a pdf file is been graded. It allows tutors to add annotations on the document while grading.*
*/mod/assign/feedback/editpdf/classes/pdf.php -&gt; ensure\_pdf\_compatible()*
*/mod/assign/feedback/editpdf/classes/pdf.php -&gt; get\_image()*

-   *Is it triggered as part of unoconv or as a separate process?*

*It is triggered as a separate process – in fact from the pdf script within Moodle and not as part of unoconv. It allows users to add annotations while giving feedback*

## Moodle side of things

-   Unoconv is triggered when tutor has to grade the submission on Moodle
-   Unoconv settings :

<https://moodle.ucl.ac.uk/admin/settings.php?section=assignfeedback_editpdf>
Configure system paths under path to unoconv document
Configure system paths for ghost script
*Questions:*

-   *At what point the unoconv script kicks off from Moodle?*

*When the tutor starts grading a document that is submitted in the format other than pdf.*

-   *Course -&gt; Create an Assignment activity -&gt; Submit the document in word format*
-   *Click on the activity -&gt; Grade. At this point the document conversion triggers and the document is converted to pdf format. Tutor is now allowed to add annotations*

*\\moodleucl\\lib\\filestorage\\file\_storage.php -&gt; create\_converted\_document ()*

-   *How long a file conversion would typically take?*

*Not more than 60 sec. Depends on the size of the document*

## Unoconv Monitoring script

**Overview**

-   Monitors unoconv conversion process by running every 5 mins as cron job.
-   The script runs unoconv convert command (/usr/bin/unoconv python script)
-   If the conversion script is still running after the timeout value set in monitoring script(which is 30 sec) then it generates an error message. This would indicate the unoconv process on the app server that's been kicked off by Moodle has been running for a while and has locked down the resources (Note: LibreOffice is single threaded so there could ideally be just one conversion running at any given time)

**Details**

-   Path to monitoring script: /home/ccspmdl/monitor-unoconv.sh
-   Input document path: /home/ccspmdl/monitor-unoconv\_in.docx
-   All output files are saved under /tmp/ directory
-   Cron job setup on moodle-d/e/f/g to run the monitoring script every 5 minutes

\[ccspmdl@moodle-d ~\]$ crontab -l
MAILTO="rde.learning@ucl.ac.uk"
\*/5 \* \* \* \* /home/ccspmdl/monitor-unoconv.sh 2&gt;&1 | grep -v "Leaking python objects bridged to UNO"

-   How to run the script
    $ ./monitor-unoconv.sh
    ***Things to improve in the script***

<!-- -->

-   *Clean-up output files saved under /tmp/ dir : This needs cleaning up as the files are under ccspwww and the monitoring script runs as ccspmdl and hence has no permission to delete files under /tmp/*
-   *Run the monitoring script on moodle-admin – check if Moodle kicks off uniconv process to convert files in batches*
-   *Tidy up all python script leaks, thread delete alerts. Instead of sending email from the cron job – best to set it up in the shell script*
-   *Change the role for monitoring script on moodle-g – should run as root instead of ccspmdl*
-   *Increase timeout from 30sec to 60 sec?*
-   *Change the script to send out emails only if its stuck by adding a condition where the rest of the non-important errors are directed to an error\_log that could be ignored*

**Improvements to unoconv process to make it more stable**

-   **Move unoconv process to a app-server that's not part of laod balancing. In UCL's case it will be moodle-admin.**

[**https://docs.moodle.org/31/en/Installing\_unoconv\#Offload\_processing\_to\_a\_different\_server**](https://docs.moodle.org/31/en/Installing_unoconv#Offload_processing_to_a_different_server)
**This would have no adverse effect on web servers as far as load is concerned. It would only affect moodle-admin but since moodle-admin just runs cron and inport functionality it will not affect moodle's performance.**

-   **Or alternatively we could wait until we do the next upgrade to Moodle version 3.3. or 3.4. Unoconv** **is a file converter plugin and is now part of Moodle-v3.3 release**

**More details –**
[**https://docs.moodle.org/dev/Moodle\_3.3\_release\_notes\#For\_administrators**](https://docs.moodle.org/dev/Moodle_3.3_release_notes#For_administrators)
[**https://tracker.moodle.org/browse/MDL-55528**](https://tracker.moodle.org/browse/MDL-55528)
[**https://tracker.moodle.org/browse/MDL-58280**](https://tracker.moodle.org/browse/MDL-58280)
