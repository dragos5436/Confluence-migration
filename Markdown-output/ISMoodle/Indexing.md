# Indexing

## **File Indexing Comparison**

Filename searchable through Moodle
File content searchable through Moodle
File content indexed through back end
File Link
Azure
Elastic
Solr
Azure
Elastic
Solr
Azure
Elastic
Solr
<https://search2.preview-moodle.ucl.ac.uk/pluginfile.php/3519456/mod_folder/content/0/Unconformities%20practical%20sheet%201.docx?forcedownload=1>
YES

YES

YES

NO

YES

NO

TO CHECK

YES

NO

<https://search2.preview-moodle.ucl.ac.uk/pluginfile.php/3611364/mod_folder/content/0/Faulting%20exercise.pdf?forcedownload=1>
NO

YES

YES

NO

YES

NO

TO CHECK

YES

NO

<https://search2.preview-moodle.ucl.ac.uk/mod/resource/view.php?id=2466075>
NO

NO

NO

NO

NO

NO

TO CHECK

NO

NO

<https://search2.preview-moodle.ucl.ac.uk/mod/resource/view.php?id=2638596>
NO

NO

NO

NO

NO

NO

TO CHECK

NO

NO

<https://search2.preview-moodle.ucl.ac.uk/mod/resource/view.php?id=2610990>
NO

NO

NO

NO

NO

NO

TO CHECK

NO

NO

## **Limitations**

-   **only plan text documents**
-   **documents that have been scanned**
-   **text on images inside documents**

## **Errors when indexing through command line
**

**Azure**

------------------------------------------------------------------------

++ Error retrieving mod\_quiz-activity 26841 document, not all required data is available: Can't find data record in database table quiz. (

\[NULL\]) ++

\* line 96 of /search/classes/base\_activity.php: call to debugging()

\* line ? of unknownfile: call to core\_search\\base\_activity-&gt;get\_document()

\* line 103 of /lib/classes/dml/recordset\_walk.php: call to call\_user\_func()

\* line 72 of /search/classes/skip\_future\_documents\_iterator.php: call to core\\dml\\recordset\_walk-&gt;current()

\* line 93 of /search/classes/skip\_future\_documents\_iterator.php: call to core\_search\\skip\_future\_documents\_iterator-&gt;current()

\* line 461 of /search/engine/azure/classes/engine.php: call to core\_search\\skip\_future\_documents\_iterator-&gt;valid()

\* line 1153 of /search/classes/manager.php: call to search\_azure\\engine-&gt;add\_documents()

\* line 92 of /search/cli/indexer.php: call to core\_search\\manager-&gt;index()

++ Error retrieving mod\_quiz-activity 26842 document, not all required data is available: Can't find data record in database table quiz. (

\[NULL\]) ++

Processing area: URL

++ Error retrieving mod\_url-activity 71623 document, not all required data is available: Can't find data record in database table url. (

\[NULL\]) ++

\* line 96 of /search/classes/base\_activity.php: call to debugging()

\* line 57 of /mod/url/classes/search/activity.php: call to core\_search\\base\_activity-&gt;get\_document()

\* line ? of unknownfile: call to mod\_url\\search\\activity-&gt;get\_document()

\* line 103 of /lib/classes/dml/recordset\_walk.php: call to call\_user\_func()

\* line 72 of /search/classes/skip\_future\_documents\_iterator.php: call to core\\dml\\recordset\_walk-&gt;current()

\* line 93 of /search/classes/skip\_future\_documents\_iterator.php: call to core\_search\\skip\_future\_documents\_iterator-&gt;current()

\* line 461 of /search/engine/azure/classes/engine.php: call to core\_search\\skip\_future\_documents\_iterator-&gt;valid()

\* line 1153 of /search/classes/manager.php: call to search\_azure\\engine-&gt;add\_documents()

\* line 92 of /search/cli/indexer.php: call to core\_search\\manager-&gt;index()

++ Failed to add document to index Error Code: 207 ++

Warning: fwrite(): Unable to create temporary file, Check permissions in temporary files directory. in /data/apache/htdocs/cicd-moodlesite-39-submodules-elastic/local/aws/sdk/GuzzleHttp/Psr7/Stream.php on line 244

PHP Warning: fwrite(): Unable to create temporary file, Check permissions in temporary files directory. in /data/apache/htdocs/cicd-moodlesite-39-submodules-elastic/local/aws/sdk/GuzzleHttp/Psr7/Stream.php on line 244

++ Failed to add document to index Error Code: 207 ++

\* line 512 of /search/engine/azure/classes/engine.php: call to debugging()

\* line 574 of /search/engine/azure/classes/engine.php: call to search\_azure\\engine-&gt;process\_response()

\* line 414 of /search/engine/azure/classes/engine.php: call to search\_azure\\engine-&gt;batch\_add\_documents()

\* line 485 of /search/engine/azure/classes/engine.php: call to search\_azure\\engine-&gt;process\_document\_files()

\* line 1153 of /search/classes/manager.php: call to search\_azure\\engine-&gt;add\_documents()

\* line 92 of /search/cli/indexer.php: call to core\_search\\manager-&gt;index()

**Elastic**

------------------------------------------------------------------------

Exception ignored in shutdown function tool\_log\\log\\manager::dispose: Error writing to database (Table 'uclmoodleprod2.mdl\_logstore\_standard\_log' doesn't exist

INSERT INTO mdl\_logstore\_standard\_log () VALUES ()

\[array (

)\])

Processing area: Users
PHP Notice: Object of class stdClass could not be converted to int in /data/apache/htdocs/cicd-moodlesite-39-submodules-elastic/search/engine/elastic/classes/engine.php on line 400

Notice: Object of class stdClass could not be converted to int in /data/apache/htdocs/cicd-moodlesite-39-submodules-elastic/search/engine/elastic/classes/engine.php on line 400
PHP Notice: Object of class stdClass could not be converted to int in /data/apache/htdocs/cicd-moodlesite-39-submodules-elastic/search/engine/elastic/classes/engine.php on line 404

Notice: Object of class stdClass could not be converted to int in /data/apache/htdocs/cicd-moodlesite-39-submodules-elastic/search/engine/elastic/classes/engine.php on line 404

PHP Warning: Error executing "GetObject" on "<https://ucl-eu-west-2-moodle-sitedata.s3.eu-west-2.amazonaws.com/da/39/da39a3ee5e6b4b0d3255bfef95601890afd80709>"; AWS HTTP error: Client error: \`GET <https://ucl-eu-west-2-moodle-sitedata.s3.eu-west-2.amazonaws.com/da/39/da39a3ee5e6b4b0d3255bfef95601890afd80709>\` resulted in a \`404 Not Found\` response NotFound (client): 404 Not Found (Request-ID: F4BC8645B4539962) - in /data/apache/htdocs/cicd-moodlesite-39-submodules-elastic/local/aws/sdk/Aws/S3/StreamWrapper.php on line 746

++ Failed to add document to index Request Entity Too Large ++
\* line 597 of /search/engine/elastic/classes/engine.php: call to debugging()
\* line 458 of /search/engine/elastic/classes/engine.php: call to search\_elastic\\engine-&gt;batch\_add\_documents()
\* line 544 of /search/engine/elastic/classes/engine.php: call to search\_elastic\\engine-&gt;process\_document\_files()
\* line 1153 of /search/classes/manager.php: call to search\_elastic\\engine-&gt;add\_documents()
\* line 92 of /search/cli/indexer.php: call to core\_search\\manager-&gt;index()
PHP Warning: Error executing "GetObject" on "<https://ucl-eu-west-2-moodle-sitedata.s3.eu-west-2.amazonaws.com/af/13/af1383d963d0443e4c90dcf7f99558796f24dd0a>"; AWS HTTP error: Client error: \`GET <https://ucl-eu-west-2-moodle-sitedata.s3.eu-west-2.amazonaws.com/af/13/af1383d963d0443e4c90dcf7f99558796f24dd0a>\` resulted in a \`404 Not Found\` response NotFound (client): 404 Not Found (Request-ID: 3C7A28F33EB16513) - in /data/apache/htdocs/cicd-moodlesite-39-submodules-elastic/local/aws/sdk/Aws/S3/StreamWrapper.php on line 746

Warning: fopen(s3://ucl-eu-west-2-moodle-sitedata/c4/40/c4400690e76057e00cb98576e0b17a4173956e82): failed to open stream: "Aws\\S3\\StreamWrapper::stream\_open" call failed in /data/apache/htdocs/cicd-moodlesite-39-submodules-elastic/admin/tool/objectfs/classes/local/store/object\_file\_system.php on line 569

**Solr**

------------------------------------------------------------------------

Error while indexing file with document id mod\_\[name\]-activity-17285-solrfile1790817: Error 404 Not Found

++ Error retrieving mod\_url-activity 71623 document, not all required data is available: Can't find data record in database table url. (

\[NULL\]) ++

\* line 96 of /search/classes/base\_activity.php: call to debugging()

\* line 57 of /mod/url/classes/search/activity.php: call to core\_search\\base\_activity-&gt;get\_document()

\* line ? of unknownfile: call to mod\_url\\search\\activity-&gt;get\_document()

\* line 103 of /lib/classes/dml/recordset\_walk.php: call to call\_user\_func()

\* line 72 of /search/classes/skip\_future\_documents\_iterator.php: call to core\\dml\\recordset\_walk-&gt;current()

\* line 93 of /search/classes/skip\_future\_documents\_iterator.php: call to core\_search\\skip\_future\_documents\_iterator-&gt;current()

\* line 235 of /search/classes/engine.php: call to core\_search\\skip\_future\_documents\_iterator-&gt;valid()

\* line 1153 of /search/classes/manager.php: call to core\_search\\engine-&gt;add\_documents()

\* line 92 of /search/cli/indexer.php: call to core\_search\\manager→index()

Exception ignored in shutdown function tool\_log\\log\\manager::dispose: Error writing to database (Table 'uclmoodleprod.mdl\_logstore\_standard\_log' doesn't exist

INSERT INTO mdl\_logstore\_standard\_log () VALUES ()

\[array (

)\])

## **Inaccurate indexing
**

Due to above errors, files are not being indexing correctly or not being indexed at all.  Example as following

1.  navigate to <https://search-search2-preview-biaft3did34gzotja4rg6zdl6q.eu-west-2.es.amazonaws.com/_plugin/kibana/> &gt; dev tools &gt; run the following api search
2.  press ctrl + f &gt; search for 'Unconformities practical sheet 1.docx' &gt; content has been indexed
3.  search for 'Unconformities practice sheet 2.doc' &gt; content has not been indexed
4.  both files exists in the same folder <https://search2.preview-moodle.ucl.ac.uk/course/view.php?id=23418#section-7> but only one of the .doc file got indexed
5.  Not indexing correctly can lead to inaccurate search results


