# Moodle 3.7.4

1)Update Theme

<https://git.automation.ucl.ac.uk/moodle/moodle-1819/merge_requests/22> - DONE

2)Theme settings changes

allowuserblockhiding -&gt; No (should already be the case)

theme\_adaptable | coursesectionactivityquizbgcolor -&gt; transparent

theme\_adaptable | coursesectionactivityforumbgcolor -&gt; transparent

theme\_adaptable | coursesectionactivityassignbgcolor -&gt; transparent

theme\_adaptable | navbardropdowntextcolor -&gt; \#006174

theme\_adaptable | customcss -&gt; ADD:

``` java
/*Hotfix for jezhops#81 */
ul.ctopics .content .summary ul, ul.ctopics .content .section ul {
margin: 0 0 10px 20px;
}
/*End of collapsed topics fix*/


/*Hotfix for block padding - jezhops#9 */
.mb-3{
 padding: .5rem!important;
}
/*End Fix for block padding*/


/*Hotfix for jezhops#82 */
.menubar{
justify-content: flex-end;
}
/*End fix for Block editing ... */
```

3)STACK plugins

<https://git.automation.ucl.ac.uk/moodle/moodle-1819/merge_requests/21> - DONE

Make sure they get installed but are DISABLED:

<https://moodle.ucl.ac.uk/admin/qtypes.php>

<https://moodle.ucl.ac.uk/admin/qbehaviours.php>

Set these settings:

qtype\_stack | platform -&gt; Server
qtype\_stack | maximaversion -&gt; 5.41.0

Only enabled on feature launch day once infrastructure sorted - under separate CR

These 2 settings will need changing then:

qtype\_stack | maximacommand -&gt; <http://localhost:8765/MaximaPool/MaximaPool>
qtype\_stack | serveruserpass → astrongpassword

4) Accessibility tool

<https://git.automation.ucl.ac.uk/moodle/moodle-1819/merge_requests/23>

Only change 'enableaccesstool', 'theme\_adaptable' to true when ready to launch feature.

5) Local Hub plugin

<https://git.automation.ucl.ac.uk/moodle/moodle-local_hub/merge_requests/2> - DONE

Before upgrading, run these SQL queries:

``` java
UPDATE moodle_live.mdl_config_plugins SET name='site1button' WHERE plugin='local_hub' AND name ='moodle31button';
UPDATE moodle_live.mdl_config_plugins SET name='site1description' WHERE plugin='local_hub' AND name ='moodle31description';
UPDATE moodle_live.mdl_config_plugins SET name='site1url' WHERE plugin='local_hub' AND name ='moodle31url';
UPDATE moodle_live.mdl_config_plugins SET name='site2button' WHERE plugin='local_hub' AND name ='moodle34button';
UPDATE moodle_live.mdl_config_plugins SET name='site2description' WHERE plugin='local_hub' AND name ='moodle34description';
UPDATE moodle_live.mdl_config_plugins SET name='site2url' WHERE plugin='local_hub' AND name ='moodle34url';
SELECT * FROM moodle_live.mdl_config_plugins where plugin='local_hub';
```

6) Language pack fixes due to H5P

<https://github.com/h5p/h5p-moodle-plugin/issues/313>

<https://github.com/h5p/h5p-moodle-plugin/commit/e3e340043acbbda0521718738c9b04e35a3ead8a>

``` java
UPDATE moodle_live.mdl_tool_customlang
SET    stringid  = lower(stringid)
WHERE  componentid = '543'
AND    lower(stringid) not like binary(stringid)
AND    stringid not like 'license%';
```

The only capitalised language strings remaining - <https://github.com/h5p/h5p-moodle-plugin/blob/stable/lang/en/hvp.php#L347-L357>


