# Post process from command line

### Edit as needed

 

``` bash
unset HISTFILE
DB_USER='moodle_xxx'
DB_PASSWORD='<in keepass>'
DB_NAME='moodle_xxx'
```

 

**Not sure editing email addresses is needed**

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="sql comments"># Set email address to black hole for all but moodl/trail accounts.</code>
</div>
<div class="line number7 index6 alt2">
<pre><code>sql_statement=$(cat &lt;&lt;EOF</code></pre>
<div class="line number2 index1 alt1">
<code class="sql keyword">UPDATE</code> <code class="sql plain">mdl_user</code>
</div>
<div class="line number3 index2 alt2">
<code class="sql keyword">SET</code> <code class="sql plain">email =  </code><code class="sql string">'nobody@ucl.ac.uk'</code>
</div>
<div class="line number4 index3 alt1">
<code class="sql keyword">WHERE</code> <code class="sql plain">id  </code><code class="sql color1">NOT</code> <code class="sql color1">IN</code> <code class="sql plain">(</code>
</div>
<div class="line number5 index4 alt2">
<code class="sql spaces">     </code><code class="sql keyword">SELECT</code> <code class="sql plain">A.id </code><code class="sql keyword">FROM</code> <code class="sql plain">mdl_user A</code>
</div>
<div class="line number6 index5 alt1">
<code class="sql spaces">     </code><code class="sql keyword">WHERE</code> <code class="sql plain">A.username  </code><code class="sql color1">LIKE</code> <code class="sql string">'moodl%'</code> <code class="sql color1">OR</code> <code class="sql plain">A.username  </code><code class="sql color1">LIKE</code> <code class="sql string">'trail%'</code>
</div>
<div class="line number7 index6 alt2">
<code class="sql plain">);</code>
</div>
<div class="line number7 index6 alt2">
EOF )
</div>
<pre><code></code></pre>
</div>
<div class="line number7 index6 alt2">
<code class="java plain">echo $sql_statement </code> <code class="java plain">| mysql -u $DB_USER -p${DB_PASSWORD} -v $DB_NAME</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

### Update sits filter views

To update dependent views in the appropriate `moodle_sits_management_???2` database, execute the SQL which is generated by the following to recreate each of the views...

Update 'SITS Filter 2' dependencies.

 

**It's better to do that from the database, not the command line**

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="sql keyword">SELECT</code>
</div>
<div class="line number2 index1 alt1">
<code class="sql spaces">     </code><code class="sql plain">TABLE_SCHEMA</code>
</div>
<div class="line number3 index2 alt2">
<code class="sql spaces">   </code><code class="sql plain">, TABLE_NAME</code>
</div>
<div class="line number4 index3 alt1">
<code class="sql spaces">   </code><code class="sql plain">, CONCAT( </code><code class="sql string">'CREATE OR REPLACE VIEW '</code> <code class="sql plain">, TABLE_SCHEMA,  </code><code class="sql string">'.'</code> <code class="sql plain">, TABLE_NAME,  </code><code class="sql string">' AS '</code> <code class="sql plain">,</code>
</div>
<div class="line number5 index4 alt2">
<code class="sql spaces">            </code><code class="sql color2">REPLACE</code> <code class="sql plain">(VIEW_DEFINITION,  </code><code class="sql string">'`moodle_live`.'</code> <code class="sql plain">,  </code><code class="sql string">'`moodle_devxxxx`.'</code> <code class="sql plain">),  </code><code class="sql string">';'</code> <code class="sql plain">)  </code><code class="sql keyword">AS</code> <code class="sql plain">sql_create</code>
</div>
<div class="line number6 index5 alt1">
<code class="sql keyword">FROM</code> <code class="sql plain">information_schema.VIEWS</code>
</div>
<div class="line number7 index6 alt2">
<code class="sql keyword">WHERE</code> <code class="sql plain">TABLE_SCHEMA =  </code><code class="sql string">'moodle_sits_management_dev2'</code>
</div>
<div class="line number8 index7 alt1">
<code class="sql color1">AND</code> <code class="sql plain">VIEW_DEFINITION  </code><code class="sql color1">LIKE</code> <code class="sql string">'%`moodle_live`.%'</code> <code class="sql plain">;</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

 

### Unlink google analytics

 

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
sql_statement=$(cat &lt;&lt;EOF
</div>
<div class="line number2 index1 alt1">
<div class="line number7 index6 alt2">
<div class="line number7 index6 alt2">
<div class="line number1 index0 alt2">
<code class="sql keyword">UPDATE</code> <code class="sql plain">mdl_config_plugins  </code><code class="sql keyword">SET</code> <code class="sql plain">`value` = 0  </code><code class="sql keyword">WHERE</code> <code class="sql plain">`plugin` =  </code><code class="sql string">'theme_ucl'</code> <code class="sql color1">AND</code> <code class="sql plain">` </code><code class="sql keyword">name</code> <code class="sql plain">` =  </code><code class="sql string">'useanalytics'</code> <code class="sql plain">;</code>
</div>
<div class="line number2 index1 alt1">
<code class="sql keyword">UPDATE</code> <code class="sql plain">mdl_config_plugins  </code><code class="sql keyword">SET</code> <code class="sql plain">`value` =  </code><code class="sql string">''</code> <code class="sql keyword">WHERE</code> <code class="sql plain">`plugin` =  </code><code class="sql string">'theme_ucl'</code> <code class="sql color1">AND</code> <code class="sql plain">` </code><code class="sql keyword">name</code> <code class="sql plain">` =  </code><code class="sql string">'analyticsid'</code> <code class="sql plain">;</code>
</div>
EOF )
</div>
<pre><code></code></pre>
</div>
<div class="line number7 index6 alt2">
<code class="java plain">echo $sql_statement </code> <code class="java plain">| mysql -u $DB_USER -p${DB_PASSWORD} -v $DB_NAME</code>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

 

### Set site name in Frontpage settings

Find another way to do it

 

### Set cookie prefix

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="bash plain">moosh config-</code><code class="bash functions">set</code> <code class="bash plain">sessioncookie ucl_devxxxxxx</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

### Blackboard collaborate

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="sql comments"># Set Blackboard Collaborate to use test account (details in KeePass).</code>
</div>
</div>
<div class="line number4 index3 alt1">
<div class="line number1 index0 alt2">
sql_statement=$(cat &lt;&lt;EOF
</div>
<div class="line number2 index1 alt1">
<div class="line number7 index6 alt2">
<div class="line number7 index6 alt2">
<div class="line number1 index0 alt2">
<div class="line number2 index1 alt1">
<code class="sql keyword">UPDATE</code> <code class="sql plain">mdl_config  </code><code class="sql keyword">SET</code> <code class="sql plain">`value` =  </code><code class="sql string">'https://eu1.bbcollab.com/site/external/adapter/default/v3'</code>  <code class="sql keyword">WHERE</code> <code class="sql plain">` </code><code class="sql keyword">name</code> <code class="sql plain">` =  </code><code class="sql string">'elluminate_server'</code> <code class="sql plain">;</code>
</div>
<div class="line number3 index2 alt2">
<code class="sql keyword">UPDATE</code> <code class="sql plain">mdl_config  </code><code class="sql keyword">SET</code> <code class="sql plain">`value` =  </code><code class="sql string">'UCLEUMOODLETEST'</code> <code class="sql keyword">WHERE</code> <code class="sql plain">` </code><code class="sql keyword">name</code> <code class="sql plain">` =  </code><code class="sql string">'elluminate_auth_username'</code> <code class="sql plain">;</code>
</div>
<div class="line number4 index3 alt1">
<code class="sql keyword">UPDATE</code> <code class="sql plain">mdl_config  </code><code class="sql keyword">SET</code> <code class="sql plain">`value` =  </code><code class="sql string">'&lt;in KeePass&gt;'</code> <code class="sql keyword">WHERE</code> <code class="sql plain">` </code><code class="sql keyword">name</code> <code class="sql plain">` =  </code><code class="sql string">'elluminate_auth_password'</code> <code class="sql plain">;</code>
</div>
</div>
EOF )
</div>
<pre><code></code></pre>
</div>
<div class="line number7 index6 alt2">
<code class="java plain">echo $sql_statement </code> <code class="java plain">| mysql -u $DB_USER -p${DB_PASSWORD} -v $DB_NAME</code>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

 

 

### Global string replace (host URL)

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="java plain">php admin/tool/replace/cli/replace.php --search=</code><code class="java string">' https://moodle.ucl.ac.uk '</code> <code class="java plain">--replace=</code><code class="java string">'https://vxx.moodle-dev.ucl.ac.uk'</code> <code class="java plain">--non-interactive</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

### Changes to site settings:

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="bash plain">moosh config-</code><code class="bash functions">set</code> <code class="bash plain">guestloginbutton 0</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

### Change site policy

##### Security &gt; Site policies &gt; Site policy URL = http://moodle-archive.ucl.ac.uk/yy-yy/policy/about\_the\_archive.html (update yy with 10-11, 11-12 etc)

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="bash plain">moosh config-</code><code class="bash functions">set</code> <code class="bash plain">sitepolicy </code><code class="bash string">''</code>
</div>
<div class="line number2 index1 alt1">
<code class="bash plain">moosh config-</code><code class="bash functions">set</code> <code class="bash plain">sitepolicyguest </code><code class="bash string">''</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

### Set all guest access to 0 and all enrolment options to 0

##### this disables all enrolments, guest functionality and student course ‘browsing’ 

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="bash plain">moosh config-</code><code class="bash functions">set</code> <code class="bash plain">logguests 0</code>
</div>
<div class="line number2 index1 alt1">
<code class="bash plain">moosh config-</code><code class="bash functions">set</code> <code class="bash plain">allowguestmymoodle 0</code>
</div>
<div class="line number3 index2 alt2">
<code class="bash plain">moosh config-</code><code class="bash functions">set</code> <code class="bash plain">autologinguests 0</code>
</div>
<div class="line number4 index3 alt1">
<code class="bash plain">moosh config-</code><code class="bash functions">set</code> <code class="bash plain">enrol_plugins_enabled </code><code class="bash string">&quot;&quot;</code>
</div>
<div class="line number5 index4 alt2">
<code class="bash plain">moosh config-</code><code class="bash functions">set</code> <code class="bash plain">allowunenroll 0</code>
</div>
<div class="line number6 index5 alt1">
<code class="bash plain">moosh config-</code><code class="bash functions">set</code> <code class="bash plain">allow_mass_enroll_feature 0 </code><code class="bash comments">#just in case</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

### Modify local\_settings.php

###### a. Change dbhost to '[moodle-snapshot.ucl.ac.uk](http://moodle-snapshot.ucl.ac.uk)'

     

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="bash functions">sed</code> <code class="bash plain">-i s/${OLD_HOST}/${NEW_HOST}</code><code class="bash plain">/g</code> <code class="bash plain">local_settings.php</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

###### b. Change dbname

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="bash functions">sed</code> <code class="bash plain">-i s/${OLD_DATABASE}/${NEW_DATABASE}</code><code class="bash plain">/g</code> <code class="bash plain">local_settings.php</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

###### e. Change dataroot 

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="bash functions">sed</code> <code class="bash plain">-i s/${OLD_DATAROOT}/${NEW_DATAROOT}</code><code class="bash plain">/g</code> <code class="bash plain">local_settings.php</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

### Make other changes as required, especially noemailever = true

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number1 index0 alt2">
<code class="java plain">moosh config-set noemailever </code><code class="java value">1</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

### Other settings to edit

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number2 index1 alt1">
<code class="java plain">moosh config-set sesskey ZJtr2016_17</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

 

### **Edit as appropriate** 

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="container" title="Hint: double-click to select code">
<div class="line number4 index3 alt1">
<code class="java plain">echo </code><code class="java string">&quot;UPDATE mdl_config_plugins SET `value` = '' WHERE `plugin` = 'theme_ucl' AND ` name ` = 'usepolicy' ;&quot;</code> <code class="java plain">| mysql -u $DB_USER -p${DB_PASSWORD} -v $DB_NAME</code>
</div>
<div class="line number5 index4 alt2">
<code class="java plain">echo </code><code class="java string">&quot;UPDATE mdl_config_plugins SET `value` = '' WHERE `plugin` = 'theme_ucl' AND ` name ` = 'marketing1image' ;&quot;</code> <code class="java plain">| mysql -u $DB_USER -p${DB_PASSWORD} -v $DB_NAME</code>
</div>
<div class="line number6 index5 alt1">
<code class="java plain">echo </code><code class="java string">&quot;UPDATE mdl_config_plugins SET `value` = '' WHERE `plugin` = 'theme_ucl' AND ` name ` = 'marketing2image' ;&quot;</code> <code class="java plain">| mysql -u $DB_USER -p${DB_PASSWORD} -v $DB_NAME</code>
</div>
<div class="line number7 index6 alt2">
<code class="java plain">echo </code><code class="java string">&quot;UPDATE mdl_config_plugins SET `value` = '' WHERE `plugin` = 'theme_ucl' AND ` name ` = 'marketing3image' ;&quot;</code> <code class="java plain">| mysql -u $DB_USER -p${DB_PASSWORD} -v $DB_NAME</code>
</div>
<div class="line number8 index7 alt1">
<code class="java plain">echo </code><code class="java string">&quot;UPDATE mdl_config_plugins SET `value` = '' WHERE `plugin` = 'theme_ucl' AND ` name ` = 'marketing4image' ;&quot;</code> <code class="java plain">| mysql -u $DB_USER -p${DB_PASSWORD} -v $DB_NAME</code>
</div>
</div></td>
</tr>
</tbody>
</table>

 

 

------------------------------------------------------------------------
