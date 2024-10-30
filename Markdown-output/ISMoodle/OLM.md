# OLM

The REST endpoints for Moodle web services are of the form…

https://{{url}}/webservice/rest/server.php?wstoken={{wstoken}}&moodlewsrestformat=json&wsfunction={{function\_name}}&{{options}}

For example, to fetch details for a specified course from UAT… (although this won’t actually work at the moment, as we’ll need to assign permissions based on which functions you need)…

[https://v344.moodle-01-u.ucl.ac.uk/webservice/rest/server.php?wstoken={{wstoken}}&moodlewsrestformat=json&wsfunction=core\_course\_get\_courses&options\[ids\]\[0\]=1234](https://v344.moodle-01-u.ucl.ac.uk/webservice/rest/server.php?wstoken=%7b%7bwstoken%7d%7d&moodlewsrestformat=json&wsfunction=core_course_get_courses&options%5bids%5d%5b0%5d=1234)

There are some more info and examples at…

<https://docs.moodle.org/dev/Creating_a_web_service_client>

Docs

[<img src="rest/documentConversion/latest/conversion/thumbnail/109150391/1" height="250" />](/download/attachments/107610321/HLD_Snippet_OLM_Moodle.docx?version=1&modificationDate=1542988597000&api=v2)

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [HLD\_Snippet\_OLM\_Moodle.docx](attachments/107610321/109150391.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)

