# UCL customisations and fixes

## Database changes

Indexes applied - from Sekhar

**Quiz question numerical units - non-unique index (CR00003325)** Expand source

``` sql
ALTER TABLE mdl_question_numerical_units
ADD INDEX mdl_quesnumeunit_queuni_ix (question, unit);

ALTER TABLE mdl_question_numerical_units
DROP INDEX mdl_quesnumeunit_queuni_uix;
```

→ UPSTREAM push?

## New Moodle ([New docs](https://wiki.ucl.ac.uk/display/ISMoodle/New+Moodle+-+Documented+changes+to+core))

<table>
<thead>
<tr class="header">
<th>Fix</th>
<th>Related Ticket</th>
<th>How to test</th>
<th>Files modified</th>
<th>In New Moodle?</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>The 'Blackboard Collaborate' activity plugin (mod_collaborate) is currently causing the Moodle main cron job to exit prematurely following deletion of an instance of the activity from a course.</p>
<p>This is due to a missing `use` in the code</p></td>
<td>CR00003471</td>
<td>Check that cron runs</td>
<td><div class="content-wrapper">
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="diff" data-syntaxhighlighter-params="brush: diff; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: diff; gutter: false; theme: Confluence"><code>--- sftp://ccspmdl@moodle-admin-01.ucl.ac.uk//data/apache/htdocs/v3.4.4-build-20180709__ucl-20180904/mod/collaborate/classes/local.php  2018-07-17 14:41:23.000000000 +0100
+++ sftp://ccspmdl@moodle-admin-01-pp.ucl.ac.uk//data/apache/htdocs/v3.4.4+_build-20180709__ucl-20180904/mod/collaborate/classes/local.php  2018-09-05 15:06:50.000000000 +0100
@@ -36,16 +36,12 @@
 use mod_collaborate\soap\generated\HtmlSessionRecording;
 use mod_collaborate\soap\generated\RemoveHtmlSessionRecording;
 use mod_collaborate\soap\generated\RemoveHtmlSession;
 use mod_collaborate\soap\api;
 use mod_collaborate\event\recording_deleted;
 
+// BEGIN ucl hack - Fix Collaborate cron job hang following activity deletion.
+use mod_collaborate\logging\constants;
+// END ucl hack
+
 class local {
 
     const DURATIONOFCOURSE = 9999;
 
     const TIMEDURATIONOFCOURSE = &#39;3000-01-01 00:00&#39;;
 </code></pre>
</div>
</div>
<p><br />
</p>
<p><br />
</p>
</div></td>
<td>Yes</td>
<td><p><del>Keep</del></p>
<p><del>Raise with BB</del></p>
<p><br />
</p>
<p><br />
</p>
<p>AS</p>
<p>Update Plugin - this was section of code was reworked over a year ago <a href="https://github.com/blackboard-open-source/moodle-mod_collaborate/commit/a86b149d8c76e33ae4d14e3af69167181d748cd8" class="uri">https://github.com/blackboard-open-source/moodle-mod_collaborate/commit/a86b149d8c76e33ae4d14e3af69167181d748cd8</a></p>
<p>If issue remains then upstream the fix</p>
<p>Seems to have been added to this file instead</p>
<p><a href="https://github.com/blackboard-open-source/moodle-mod_collaborate/blame/master/classes/rest/api.php#L32" class="uri">https://github.com/blackboard-open-source/moodle-mod_collaborate/blame/master/classes/rest/api.php#L32</a></p></td>
</tr>
<tr class="even">
<td>SCP<br />

<p>#3795</p></td>
<td><p>calendar export settings - change from 60 to 90 days</p></td>
<td><ul>
<li> Go to calendar, click on Month Year above calendar&gt; Export Calendar</li>
<li>Select <strong>Export</strong> events and check <strong>Recent and next 90 days</strong></li>
<li>Click <strong>Export</strong><br />
This should generate a URL for calendar- check this works<br />
<strong><br />
</strong></li>
</ul>
<p>Go to /calendar/export.php. Check Lang is ok on 90 day option. Check events up to 90 days are exported.</p></td>
<td><div class="content-wrapper">
<p>/calendar/export_execute.php</p>
<p><br />
</p>
<p>lines 156 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code> //--- ucl hack begin- replaced with the line below to export 90 rather than 60 days
                //$timeend = time() + 5184000;
                $timeend = time() + (90 * 24 * 60 * 60); // 90 days
                //-- ucl hack end --//</code></pre>
</div>
</div>
</div></td>
<td>Yes</td>
<td>Email Digi Ed if still needed</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Stop people being able to select hourly and daily calendar subscription update frequencies</td>
<td><p>Go to <a href="https://moodle.ucl.ac.uk/calendar/managesubscriptions.php" class="uri">https://moodle.ucl.ac.uk/calendar/managesubscriptions.php</a></p>
and make sure you can't see hourly and daily from the &quot;update interval&quot; dropdown</td>
<td><div class="content-wrapper">
<p>/calendar/lib.php</p>
<p><br />
</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>function calendar_get_pollinterval_choices() {
    return array(
        &#39;0&#39; =&gt; new lang_string(&#39;never&#39;, &#39;calendar&#39;),
        
        /**UCL HACK Remove hourly and Daily options 
        
        HOURSECS =&gt; new lang_string(&#39;hourly&#39;, &#39;calendar&#39;),
        DAYSECS =&gt; new lang_string(&#39;daily&#39;, &#39;calendar&#39;),
        
        END UCL hack */
        WEEKSECS =&gt; new lang_string(&#39;weekly&#39;, &#39;calendar&#39;),
        &#39;2628000&#39; =&gt; new lang_string(&#39;monthly&#39;, &#39;calendar&#39;),
        YEARSECS =&gt; new lang_string(&#39;annually&#39;, &#39;calendar&#39;)
    );</code></pre>
</div>
</div>
</div></td>
<td>Yes</td>
<td>Still needed</td>
</tr>
<tr class="even">
<td><p>#268</p></td>
<td><p>Make sure students get unenroled by default</p></td>
<td><p>Go to Course <strong>Reset</strong> page, at bottom click Select default and see that Student is highlighted in roles to remove</p></td>
<td><div class="content-wrapper">
<p>/course/reset_form.php</p>
<p>lines 140 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>//-- ucl hack begin- fixes #91 when select default clicked, only select student (==5) rather than
 all those with an archetype of student because we don&#39;t want to reset participant and non editing tutor.
            //$defaults[&#39;unenrol_users&#39;] = array_keys($studentrole);
            $defaults[&#39;unenrol_users&#39;] = 5;
            //-- uck hack end --//</code></pre>
</div>
</div>
</div></td>
<td>No</td>
<td>Needs testing</td>
</tr>
<tr class="odd">
<td><p>RF IN02542961</p>
CR00001745</td>
<td>Add  comments and  completion data to default settings for course reset</td>
<td>Check course reset form, see that checkboxes are ticked by default</td>
<td><div class="content-wrapper">
<p>/course/reset_form.php</p>
<p>line 48 and 50</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>$mform-&gt;addElement(&#39;checkbox&#39;, &#39;reset_comments&#39;, get_string(&#39;deleteallcomments&#39;, &#39;moodle&#39;));
        //--ucl hack begin-- ticket IN02542961
        $mform-&gt;setDefault(&#39;reset_comments&#39;, true);
        //-- ucl hack end
        $mform-&gt;addElement(&#39;checkbox&#39;, &#39;reset_completion&#39;, get_string(&#39;deletecompletiondata&#39;, &#39;completion&#39;));
        //--ucl hack begin-- ticket IN02542961
        $mform-&gt;setDefault(&#39;reset_completion&#39;, true);
        //-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td>Yes</td>
<td>Needs testing</td>
</tr>
<tr class="even">
<td>Trac (Moodle2) #314</td>
<td>Allow manager and tutor roles to unenrol during course resets?</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>/enrol/imsenterprise/db/access.php</p>
<p>lines 36 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>// BEGIN ucl hack - Trac moodle2#314
    &#39;enrol/imsenterprise:unenrol&#39; =&gt; array(
        &#39;captype&#39; =&gt; &#39;write&#39;,
        &#39;contextlevel&#39; =&gt; CONTEXT_COURSE,
        &#39;archetypes&#39; =&gt; array(
            &#39;manager&#39; =&gt; CAP_ALLOW,
            &#39;editingteacher&#39; =&gt; CAP_ALLOW,
        )
    ),
    // END ucl hack - Trac moodle2#314</code></pre>
</div>
</div>
</div></td>
<td><p>Yes</p>
<p><br />
</p>
<p><br />
</p></td>
<td>Needs testing but probably not needed</td>
</tr>
<tr class="odd">
<td><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/ticket/314">moodle2/ticket/314</a></td>
<td><p>Allow manual unenrol for students</p></td>
<td>Login as a course admin. Reset a course with portico enrolments. Check that all students get unenrolled.</td>
<td><div class="content-wrapper">
<p>enrol/imsenterprise/lib.php</p>
<p>lines 797 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>// BEGIN ucl hack - Trac moodle2#314
    /**
     * ucl hack to unenrol students enrolled via portico
     * the following two functions have been copied from enrol/manual/lib.php.
     */
public function get_user_enrolment_actions(course_enrolment_manager $manager, $ue) {
        $actions = array();
        $context = $manager-&gt;get_context();
        $instance = $ue-&gt;enrolmentinstance;
        $params = $manager-&gt;get_moodlepage()-&gt;url-&gt;params();
        $params[&#39;ue&#39;] = $ue-&gt;id;
        if ($this-&gt;allow_unenrol_user($instance, $ue) &amp;&amp; has_capability(&quot;enrol/manual:unenrol&quot;, $context)) {
            $url = new moodle_url(&#39;/enrol/unenroluser.php&#39;, $params);
            $actions[] = new user_enrolment_action(new pix_icon(&#39;t/delete&#39;, &#39;&#39;), get_string(&#39;unenrol&#39;, &#39;enrol&#39;), $url, array(&#39;class&#39;=&gt;&#39;unenrollink&#39;, &#39;rel&#39;=&gt;$ue-&gt;id));
        }
        if ($this-&gt;allow_manage($instance) &amp;&amp; has_capability(&quot;enrol/manual:manage&quot;, $context)) {
            $url = new moodle_url(&#39;/enrol/editenrolment.php&#39;, $params);
            $actions[] = new user_enrolment_action(new pix_icon(&#39;t/edit&#39;, &#39;&#39;), get_string(&#39;edit&#39;), $url, array(&#39;class&#39;=&gt;&#39;editenrollink&#39;, &#39;rel&#39;=&gt;$ue-&gt;id));
        }
        return $actions;
    }
    public function allow_unenrol(stdClass $instance) {
        // Users with unenrol cap may unenrol other users manually.
        return true;
    }
    // END ucl hack - Trac moodle2#314</code></pre>
</div>
</div>
</div></td>
<td><p>No</p></td>
<td>Needs testing, but probably not needed</td>
</tr>
<tr class="even">
<td>ticket #53</td>
<td>Middle name fuzzy search</td>
<td><ul>
<li>Go to any course</li>
<li>Go to <strong>Course Admin &gt; Users &gt; Enrolled users</strong></li>
<li>Click <strong>'Enrol users'</strong></li>
<li>Search for Matthew Smith<strong><br />
</strong></li>
<li>Check all M Smiths with middle initials are returned in search</li>
</ul></td>
<td><div class="content-wrapper">
<p>/enrol/manual/yui/quickenrolment/quickenrolment.js</p>
<p>lines 354 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>//-- ucl hack begin -- ticket #53
            //params[&#39;search&#39;] = this.get(UEP.SEARCH).get(&#39;value&#39;);
            var qvalue;
            qvalue = this.get(UEP.SEARCH).get(&#39;value&#39;); // replace space with a %
            params[&#39;search&#39;] = qvalue.split(&#39; &#39;).join(&#39;%&#39;); 
            //-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td>No</td>
<td>Needs testing - still needed? File doesnt exist, so new hack needed if decided to be important</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Middle name fuzzy search for Enrolled users page only</td>
<td><ul>
<li>Go to any course</li>
<li>Go to <strong>Course Admin &gt; Users &gt; Enrolled users</strong></li>
<li>Search for Matthew Smith<strong><br />
</strong></li>
<li>Check all M Smiths with middle initials are returned in search</li>
</ul>
<p><br />
</p>
<p>**This for the time being has only been deployed to Moodle dev 312 , 315**</p></td>
<td><div class="content-wrapper">
<p>/enrol/users.php</p>
<p>line 40</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>//-- uck hack begin
$search = preg_replace(&#39;/\s+/&#39;,&quot;%&quot;,$search);
//-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td>No</td>
<td>Needs testing - still needed? File doesnt exist, so new hack needed if decided to be important</td>
</tr>
<tr class="even">
<td><br />
</td>
<td>added string for kosovo</td>
<td>Edit your profile and look for Kosovo in list of countries</td>
<td><div class="content-wrapper">
<p>/lang/en/countries.php</p>
<p>lines 147 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>//-- uck hack begin
$string[&#39;XK&#39;] = &#39;Kosovo&#39;;
//-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
<td><p>Ask digi ed if needed.</p>
<p>Prefer to remove</p>
<p><br />
</p>
<p>AS</p>
<p>Country recognised by UK &amp; 111 countries but not yet a UN Member so does not yet have a permanent ISO code. Moodle stick to ISO standard (<a href="https://tracker.moodle.org/browse/MDL-19639" class="uri">https://tracker.moodle.org/browse/MDL-19639</a>). No users on New Moodle using this but 5 accounts on Legacy Moodle, only 1 recently accessed. Small hack we can keep.</p></td>
</tr>
<tr class="odd">
<td>#321</td>
<td>Grade Essays option in Lesson- students not listed alphabetically</td>
<td><ul>
<li>Find lesson activity (<a href="https://moodle-pp.ucl.ac.uk/mod/lesson/essay.php?id=2207857" class="uri">https://moodle-pp.ucl.ac.uk/mod/lesson/essay.php?id=2207857</a>)</li>
<li>Are the students' names listed alphabetically by surname?</li>
</ul>
<p><br />
</p></td>
<td><div class="content-wrapper">
<p>/mod/lesson/essay.php</p>
<p>lines 370 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>//ucl hack begin - ticket moodle2#321 (https://svn.ucl.ac.uk/projects/isd/moodle2/ticket/321)
        // Cycle through all the students
        //foreach (array_keys($studentessays) as $userid) {
        foreach (array_keys($users) as $userid) {
        //ucl hack end</code></pre>
</div>
</div>
</div></td>
<td>Yes</td>
<td><p>Check with Digi Ed</p>
<p>Poss Keep</p></td>
</tr>
<tr class="even">
<td><p>RF 02542961</p>
CR00001745</td>
<td>Add TII date default settings for course reset</td>
<td>Check course reset form</td>
<td><div class="content-wrapper">
<p>/mod/turnitintooltwo/lib.php</p>
<p>line 615</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>//--ucl hack begin-- ticket IN02542961
    $mform-&gt;setDefault(&#39;renew_assignment_dates&#39;, true);
    //-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td>Yes</td>
<td><p><a href="https://github.com/turnitin/moodle-mod_turnitintooltwo/issues/491" class="uri">https://github.com/turnitin/moodle-mod_turnitintooltwo/issues/491</a></p></td>
</tr>
<tr class="odd">
<td>#163</td>
<td>remove auto-population of author field</td>
<td>Upload a file. See if your name appears in the 'Author' field</td>
<td><div class="content-wrapper">
<p>/repsitory/filepicker.js</p>
<p>lines 1690 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>//-- ucl hack begin- ticket #38
            //content.one(&#39;.fp-setauthor input&#39;).setAttrs({name:&#39;author&#39;, value:this.options.author});
            content.one(&#39;.fp-setauthor input&#39;).setAttrs({name:&#39;author&#39;, value:null});
            //-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td>Yes</td>
<td>Check with Digi Ed - Strongly advise to remove.</td>
</tr>
</tbody>
</table>

## Legacy Moodle

<table>
<thead>
<tr class="header">
<th><p>Ticket</p></th>
<th><p>Fix</p></th>
<th><p>How to test</p></th>
<th><p>Files modified</p></th>
<th>Test outcome/comments?</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><br />
</td>
<td>Add the 'all course link to the bottom of the Course overview</td>
<td><p>Go to my Home, look at bottom of your course list.</p>
<p>Look for &quot;<a href="https://moodle.ucl.ac.uk/course/index.php">Browse all courses on UCL Moodle</a> ...&quot; at the bottom of the course list</p></td>
<td><div class="content-wrapper">
<p>/blocks/course_overview/lang/en/block_course_overview.php</p>
<p>line 68</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>//--- ucl hack begin  --//
$string[&#39;allcourses&#39;] = &#39;Browse all courses on UCL Moodle&#39;;
$string[&#39;hideallcourseslink&#39;] = &#39;Hide \&#39;Browse all courses on UCL Moodle\&#39; link&#39;;
$string[&#39;confighideallcourseslink&#39;] = &#39;Remove the \&#39;Browse all courses on UCL Moodle\&#39; link under the list of courses. (This setting does not affect the admin view.)&#39;;
//--- ucl hack begin  --//</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Add the 'all course link to the bottom of the Course overview</td>
<td><p>Go to my Home, look at bottom of your course list.</p>
Look for &quot;<a href="https://moodle.ucl.ac.uk/course/index.php">Browse all courses on UCL Moodle</a> ...&quot; at the bottom of the course list</td>
<td><div class="content-wrapper">
<p>/blocks/course_overview/block_course_overview.php</p>
<p>line 90</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>        if (empty($sortedcourses)) {
//--- ucl hack begin  --//
     // $this-&gt;content-&gt;text .= get_string(&#39;nocourses&#39;,&#39;my&#39;);
            $this-&gt;content-&gt;text .= get_string(&#39;nocourses&#39;,&#39;my&#39;).&#39;&lt;br&gt;&#39;;
//-- ucl hack end --//
        } else {
            // For each course, build category cache.
            $this-&gt;content-&gt;text .= $renderer-&gt;course_overview($sortedcourses, $overviews);
            $this-&gt;content-&gt;text .= $renderer-&gt;hidden_courses($totalcourses - count($sortedcourses));
        }
//--- ucl hack begin  --//
    if (empty($CFG-&gt;block_course_overview_hideallcourseslink)) {
        $this-&gt;content-&gt;text .= &quot;&lt;a href=\&quot;$CFG-&gt;wwwroot/course/index.php\&quot;&gt;&quot;.get_string(&quot;allcourses&quot;,&quot;block_course_overview&quot;).&quot;&lt;/a&gt; ...&quot;;
    }
//-- ucl hack end --//
        return $this-&gt;content;</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Add the extra setting to the block</td>
<td><p>Go to /admin/settings.php?section=blocksettingcourse_overview</p>
<p>look for the last setting &quot;Hide 'Browse all courses on UCL Moodle' link&quot;</p></td>
<td><div class="content-wrapper">
<p>/blocks/course_overview/settings.php</p>
<p>line 40</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>//--- ucl hack begin  --//
    $settings-&gt;add(new admin_setting_configselect(&#39;block_course_overview/showcategories&#39;, new lang_string(&#39;showcategories&#39;, &#39;block_course_overview&#39;),
        new lang_string(&#39;showcategoriesdesc&#39;, &#39;block_course_overview&#39;), BLOCKS_COURSE_OVERVIEW_SHOWCATEGORIES_NONE, $showcategories));
    $settings-&gt;add(new admin_setting_configcheckbox(&#39;block_course_overview_hideallcourseslink&#39;, get_string(&#39;hideallcourseslink&#39;, &#39;block_course_overview&#39;),
                       get_string(&#39;confighideallcourseslink&#39;, &#39;block_course_overview&#39;), 0));
//-- ucl hack end --//</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>SCP<br />

<p>#3795</p></td>
<td><p>calendar export settings - change from 60 to 90 days</p></td>
<td><ul>
<li> Go to calendar, click on Month Year above calendar&gt; Export Calendar</li>
<li>Select <strong>Export</strong> events and check <strong>Recent and next 90 days</strong></li>
<li>Click <strong>Export</strong><br />
This should generate a URL for calendar- check this works<br />
<strong><br />
</strong></li>
</ul>
<p>Go to /calendar/export.php. Check Lang is ok on 90 day option. Check events up to 90 days are exported.</p></td>
<td><div class="content-wrapper">
<p>/calendar/export_execute.php</p>
<p>plus a change to calendar.php in the language pack</p>
<p>lines 156 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code> //--- ucl hack begin- replaced with the line below to export 90 rather than 60 days
                //$timeend = time() + 5184000;
                $timeend = time() + (90 * 24 * 60 * 60); // 90 days
                //-- ucl hack end --//</code></pre>
</div>
</div>
</div></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />  MB 90 days OK</p>
<p><br />
</p>
<p><br />
</p>
<p>Post upgrade- <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Stop people being able to select hourly and daily calendar subscription update frequencies</td>
<td><p>Go to <a href="https://moodle.ucl.ac.uk/calendar/managesubscriptions.php" class="uri">https://moodle.ucl.ac.uk/calendar/managesubscriptions.php</a></p>
and make sure you can't see hourly and daily from the &quot;update interval&quot; dropdown</td>
<td><div class="content-wrapper">
<p>/calendar/lib.php</p>
<p><br />
</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>function calendar_get_pollinterval_choices() {
    return array(
        &#39;0&#39; =&gt; new lang_string(&#39;never&#39;, &#39;calendar&#39;),
        
        /**UCL HACK Remove hourly and Daily options 
        
        HOURSECS =&gt; new lang_string(&#39;hourly&#39;, &#39;calendar&#39;),
        DAYSECS =&gt; new lang_string(&#39;daily&#39;, &#39;calendar&#39;),
        
        END UCL hack */
        WEEKSECS =&gt; new lang_string(&#39;weekly&#39;, &#39;calendar&#39;),
        &#39;2628000&#39; =&gt; new lang_string(&#39;monthly&#39;, &#39;calendar&#39;),
        YEARSECS =&gt; new lang_string(&#39;annually&#39;, &#39;calendar&#39;)
    );</code></pre>
</div>
</div>
</div></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>Fi</p>
<p>Google Chrome 51.0</p>
<p><br />
</p>
<p>Post upgrade- <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
</tr>
<tr class="even">
<td><p>#268</p></td>
<td><p>Make sure students get unenroled by default</p></td>
<td><p>Go to Course <strong>Reset</strong> page, at bottom click Select default and see that Student is highlighted in roles to remove</p></td>
<td><div class="content-wrapper">
<p>/course/reset_form.php</p>
<p>lines 140 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code> //-- ucl hack begin- fixes #91 when select default clicked, only select student (==5) rather than
 all those with an archetype of student because we don&#39;t want to reset participant and non editing tutor.
            //$defaults[&#39;unenrol_users&#39;] = array_keys($studentrole);
            $defaults[&#39;unenrol_users&#39;] = 5;
            //-- uck hack end --//</code></pre>
</div>
</div>
</div></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>Fi</p>
<p>Google Chrome 51.0</p>
<p><br />
</p>
<p>Post upgrade- <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
</tr>
<tr class="odd">
<td><p>RF IN02542961</p>
CR00001745</td>
<td>Add  comments and  completion data to default settings for course reset</td>
<td>Check course reset form, see that checkboxes are ticked by default</td>
<td><div class="content-wrapper">
<p>/course/reset_form.php</p>
<p>line 48 and 50</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>        $mform-&gt;addElement(&#39;checkbox&#39;, &#39;reset_comments&#39;, get_string(&#39;deleteallcomments&#39;, &#39;moodle&#39;));
        //--ucl hack begin-- ticket IN02542961
        $mform-&gt;setDefault(&#39;reset_comments&#39;, true);
        //-- ucl hack end
        $mform-&gt;addElement(&#39;checkbox&#39;, &#39;reset_completion&#39;, get_string(&#39;deletecompletiondata&#39;, &#39;completion&#39;));
        //--ucl hack begin-- ticket IN02542961
        $mform-&gt;setDefault(&#39;reset_completion&#39;, true);
        //-- ucl hack end
</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Trac (Moodle2) #314</td>
<td>Allow manager and tutor roles to unenrol during course resets?</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>/enrol/imsenterprise/db/access.php</p>
<p>lines 36 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>// BEGIN ucl hack - Trac moodle2#314
    &#39;enrol/imsenterprise:unenrol&#39; =&gt; array(
        &#39;captype&#39; =&gt; &#39;write&#39;,
        &#39;contextlevel&#39; =&gt; CONTEXT_COURSE,
        &#39;archetypes&#39; =&gt; array(
            &#39;manager&#39; =&gt; CAP_ALLOW,
            &#39;editingteacher&#39; =&gt; CAP_ALLOW,
        )
    ),
    // END ucl hack - Trac moodle2#314</code></pre>
</div>
</div>
</div></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>Fi</p>
<p>Google Chrome 51.0</p>
<p>(retained live Portico enrolments active)</p>
<p><br />
</p>
<p>Post upgrade- <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><br />
</p>
<p><br />
</p>
<p><br />
</p>
<p><br />
</p></td>
</tr>
<tr class="odd">
<td><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/ticket/314">moodle2/ticket/314</a></td>
<td><p>Allow manual unenrol for students</p></td>
<td>Login as a course admin. Reset a course with portico enrolments. Check that all students get unenrolled.</td>
<td><div class="content-wrapper">
<p>enrol/imsenterprise/lib.php</p>
<p>lines 797 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>    // BEGIN ucl hack - Trac moodle2#314
    /**
     * ucl hack to unenrol students enrolled via portico
     * the following two functions have been copied from enrol/manual/lib.php.
     */
public function get_user_enrolment_actions(course_enrolment_manager $manager, $ue) {
        $actions = array();
        $context = $manager-&gt;get_context();
        $instance = $ue-&gt;enrolmentinstance;
        $params = $manager-&gt;get_moodlepage()-&gt;url-&gt;params();
        $params[&#39;ue&#39;] = $ue-&gt;id;
        if ($this-&gt;allow_unenrol_user($instance, $ue) &amp;&amp; has_capability(&quot;enrol/manual:unenrol&quot;, $context)) {
            $url = new moodle_url(&#39;/enrol/unenroluser.php&#39;, $params);
            $actions[] = new user_enrolment_action(new pix_icon(&#39;t/delete&#39;, &#39;&#39;), get_string(&#39;unenrol&#39;, &#39;enrol&#39;), $url, array(&#39;class&#39;=&gt;&#39;unenrollink&#39;, &#39;rel&#39;=&gt;$ue-&gt;id));
        }
        if ($this-&gt;allow_manage($instance) &amp;&amp; has_capability(&quot;enrol/manual:manage&quot;, $context)) {
            $url = new moodle_url(&#39;/enrol/editenrolment.php&#39;, $params);
            $actions[] = new user_enrolment_action(new pix_icon(&#39;t/edit&#39;, &#39;&#39;), get_string(&#39;edit&#39;), $url, array(&#39;class&#39;=&gt;&#39;editenrollink&#39;, &#39;rel&#39;=&gt;$ue-&gt;id));
        }
        return $actions;
    }
    public function allow_unenrol(stdClass $instance) {
        // Users with unenrol cap may unenrol other users manually.
        return true;
    }
    // END ucl hack - Trac moodle2#314</code></pre>
</div>
</div>
</div></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td>ticket #53</td>
<td>Middle name fuzzy search</td>
<td><ul>
<li>Go to any course</li>
<li>Go to <strong>Course Admin &gt; Users &gt; Enrolled users</strong></li>
<li>Click <strong>'Enrol users'</strong></li>
<li>Search for Matthew Smith<strong><br />
</strong></li>
<li>Check all M Smiths with middle initials are returned in search</li>
</ul></td>
<td><div class="content-wrapper">
<p>/enrol/manual/yui/quickenrolment/quickenrolment.js</p>
<p>lines 354 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>//-- ucl hack begin -- ticket #53
            //params[&#39;search&#39;] = this.get(UEP.SEARCH).get(&#39;value&#39;);
            var qvalue;
            qvalue = this.get(UEP.SEARCH).get(&#39;value&#39;); // replace space with a %
            params[&#39;search&#39;] = qvalue.split(&#39; &#39;).join(&#39;%&#39;); 
            //-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>Fi</p>
<p>Google Chrome 51.0</p>
<p>Post upgrade- <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Middle name fuzzy search for Enrolled users page only</td>
<td><ul>
<li>Go to any course</li>
<li>Go to <strong>Course Admin &gt; Users &gt; Enrolled users</strong></li>
<li>Search for Matthew Smith<strong><br />
</strong></li>
<li>Check all M Smiths with middle initials are returned in search</li>
</ul>
<p><br />
</p>
<p>**This for the time being has only been deployed to Moodle dev 312 , 315**</p></td>
<td><div class="content-wrapper">
<p>/enrol/users.php</p>
<p>line 40</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>//-- uck hack begin
$search = preg_replace(&#39;/\s+/&#39;,&quot;%&quot;,$search);
//-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td><br />
</td>
<td>added string for kosovo</td>
<td>Edit your profile and look for Kosovo in list of countries</td>
<td><div class="content-wrapper">
<p>/lang/en/countries.php</p>
<p>lines 147 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>//-- uck hack begin
$string[&#39;XK&#39;] = &#39;Kosovo&#39;;
//-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>Fi</p>
<p>Google Chrome 51.0</p>
<p><br />
</p>
<p>post upgrade- <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
</tr>
<tr class="odd">
<td>#321</td>
<td>Grade Essays option in Lesson- students not listed alphabetically</td>
<td><ul>
<li>Find lesson activity (<a href="https://moodle-pp.ucl.ac.uk/mod/lesson/essay.php?id=2207857" class="uri">https://moodle-pp.ucl.ac.uk/mod/lesson/essay.php?id=2207857</a>)</li>
<li>Are the students' names listed alphabetically by surname?</li>
</ul>
<p><br />
</p></td>
<td><div class="content-wrapper">
<p>/mod/lesson/essay.php</p>
<p>lines 370 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>//ucl hack begin - ticket moodle2#321 (https://svn.ucl.ac.uk/projects/isd/moodle2/ticket/321)
        // Cycle through all the students
        //foreach (array_keys($studentessays) as $userid) {
        foreach (array_keys($users) as $userid) {
        //ucl hack end</code></pre>
</div>
</div>
</div></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p>
<p>&quot;No essay questions found in this lesson.&quot;</p>
<p></p>
<p>Post upgrade-</p></td>
</tr>
<tr class="even">
<td><p>RF 02542961</p>
CR00001745</td>
<td>Add TII date default settings for course reset</td>
<td>Check course reset form</td>
<td><div class="content-wrapper">
<p>/mod/turnitintooltwo/lib.php</p>
<p>line 615</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code>    //--ucl hack begin-- ticket IN02542961
    $mform-&gt;setDefault(&#39;renew_assignment_dates&#39;, true);
    //-- ucl hack end
</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>#163</td>
<td>remove auto-population of author field</td>
<td>Upload a file. See if your name appears in the 'Author' field</td>
<td><div class="content-wrapper">
<p>/repsitory/filepicker.js</p>
<p>lines 1690 -</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: php; gutter: false; theme: Confluence"><code> //-- ucl hack begin- ticket #38
            //content.one(&#39;.fp-setauthor input&#39;).setAttrs({name:&#39;author&#39;, value:this.options.author});
            content.one(&#39;.fp-setauthor input&#39;).setAttrs({name:&#39;author&#39;, value:null});
            //-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Fi</p>
<p>Google Chrome 51.</p>
<p>post upgrade- <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
</tr>
</tbody>
</table>

# Ignore hacks below- for reference only (not applicable to 3.1+)

### Version 3.1.5

| Ticket     | Fix                    | How to test                                                                                                              | files modified                                                                                              | Still Valid for Moodle 3.1.5 | Checked Pre 3.1.5 | Checked Post 3.1.5 |
|------------|------------------------|--------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|------------------------------|-------------------|--------------------|
| IN02336114 | Turnitin course reset. | Reset a course with a TII assignment. Check the reset doesnt hang, and that any submissions in the TII inbox are removed | mod/turnitintooltwo/lib.php                                                                                 
                                                                                                                 
    line 467                                                                                                     
                                                                                                                 
    ``` php                                                                                                      
    //$tiititle = $this->truncate_title( $tiititle, TURNITIN_ASSIGNMENT_TITLE_LIMIT, 'TT' );                     
    $tiititle = $turnitintooltwoassignment->truncate_title( $tiititle, TURNITIN_ASSIGNMENT_TITLE_LIMIT, 'TT' );  
    ```                                                                                                          |  No                          | OK                | OK                 |

### Version 3.1.4 – scheduled for production on 05/04/2017

| Ticket       | Fix                                                       | How to test                                                            | files modified                                                              | Still Valid for Moodle 3.1.4 | Checked Pre 3.1.4 | Checked Post 3.1.4 |
|--------------|-----------------------------------------------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------|------------------------------|-------------------|--------------------|
| ticket \#47? | mdl\_user.auth field set to 'ldap,mnet'                   
                                                             
  Forces imsenterprise accounts to use LDAP as auth method?  | Follow steps in tracker: <https://tracker.moodle.org/browse/MDL-55062> | /enrol/imsenterprise/lib.php                                                
                                                                                 
    lines 499 -                                                                  
                                                                                 
        //--ucl hack begin-- ticket 47 - mdl_user.auth field set to 'ldap,mnet'  
                            //$person->auth = $auth;                             
                            $person->auth = "ldap";                              
                            //--ucl hack end--                                   |  No                          | OK                | OK                 |

### 
Version 2.2.9 - installed on production on 16/04/13

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Ticket</p></th>
<th><p>Fix</p></th>
<th><p>How to test</p></th>
<th><p>files modified</p></th>
<th><p>Still Valid for Moodle 2.4</p></th>
<th><p>Checked Pre 2.4.3</p></th>
<th><p>Checked Post 2.4.3</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>#21,#164</p></td>
<td><p>Course Menu Block - trimlength default being ignored when adding a new block</p></td>
<td><p><br />
</p></td>
<td><p>/blocks/course_menu/block_course_menu.php</p></td>
<td><p><br />
</p></td>
<td><p>Not sure how to test - block looks OK</p></td>
<td><p>Ditto</p></td>
</tr>
<tr class="even">
<td><p>#271</p></td>
<td><p>Course Menu block reverts back to default Chapter Grouping of items when a student accesses the course</p></td>
<td><p>look at course specified in ticked as student, check course menu expansion items - minor</p></td>
<td><p>/blocks/course_menu/renderer.php<br />
/blocks/course_menu/block_course_menu.php</p></td>
<td><p><br />
</p></td>
<td><p>tested as student, OK</p></td>
<td><p>OK</p></td>
</tr>
<tr class="odd">
<td><p>#235</p></td>
<td><p>left align quiz results block text</p></td>
<td><p>look at quiz results block</p></td>
<td><p>\blocks\quiz_results\styles.css</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK</p></td>
<td><p>OK</p></td>
</tr>
<tr class="even">
<td><p><br />
</p></td>
<td><p>increase the font size<br />
Change forum selection criteria for site news ('News' forum). Tweak page-header height in UCL theme css. </p></td>
<td><p>?</p></td>
<td><p>\blocks\dock.js</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>How to test - assuming is OK</p></td>
<td><p>Ditto</p></td>
</tr>
<tr class="odd">
<td><p>#157,#200</p></td>
<td><p>Guest Log in - blocks automatically docked on left</p></td>
<td><p>As per fix text</p></td>
<td><p>\blocks\moodleblock.class.php</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK</p></td>
<td><p>OK</p></td>
</tr>
<tr class="even">
<td><p>#268</p></td>
<td><p>added size, added unenrol_users</p></td>
<td><p>Go to reset page, at bottom click Select default and see that Student is highlighted in roles to remove</p></td>
<td><p>\course\reset_form.php</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK</p></td>
<td><p>OK</p></td>
</tr>
<tr class="odd">
<td><p>#301</p></td>
<td><p>no need for extra fields</p></td>
<td><p>Go to a gradebook and see that only a column for student names is visible</p></td>
<td><p>\grade\report\grader\lib.php</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK</p></td>
<td><p>OK</p></td>
</tr>
<tr class="even">
<td><p><br />
</p></td>
<td><p>added string for kosovo</p></td>
<td><p>Edit your profile and look for Kosovo in list of countries</p></td>
<td><p>\lang\en\countries.php</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK</p></td>
<td><p>NOT OK</p></td>
</tr>
<tr class="odd">
<td><p><br />
</p></td>
<td><p>Add original styling, not 'none'</p></td>
<td><p>??</p></td>
<td><p>\lib\ajax\section_classes.js</p></td>
<td><p><strong>File doesn't Exist</strong></p></td>
<td><p>??</p></td>
<td><p>??</p></td>
</tr>
<tr class="even">
<td><p>#231#153</p></td>
<td><p>size of pop up docs link. Added height and width<br />
stripped out image tags from navbar</p></td>
<td><p><br />
</p></td>
<td><p>\lib\outputrenderers.php</p></td>
<td><p><strong>No: This has been fixed by Moodle 2.4</strong></p></td>
<td><p>N/A</p></td>
<td><p>N/A</p></td>
</tr>
<tr class="odd">
<td><p>#178</p></td>
<td><p>clear the login name</p></td>
<td><p><br />
</p></td>
<td><p>\login\index_form.html</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK</p></td>
<td><p>OK</p></td>
</tr>
<tr class="even">
<td><p><br />
</p></td>
<td><p>not sure what this does!</p></td>
<td><p>??</p></td>
<td><p>\mod\data\field\picture\field.class.php</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>??</p></td>
<td><p>??</p></td>
</tr>
<tr class="odd">
<td><p>#299</p></td>
<td><p>added no scrolling</p></td>
<td><p>Look at In-frame URl on Upgrade test course</p></td>
<td><p>\mod\url\locallib.php</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>Looks like not carried through, but very minor</p></td>
<td><p>NOT carried through</p></td>
</tr>
<tr class="even">
<td><p>#163</p></td>
<td><p>remove autopopulation of author field</p></td>
<td><p><br />
</p></td>
<td><p>\repository\filepicker.js</p></td>
<td><p><strong>Yes: Changed to Line 1655 though now the line starting should be commented out &quot;content.one('.fp-setauthor input')&quot;</strong></p></td>
<td><p>NOT carried through</p></td>
<td><p>OK</p></td>
</tr>
<tr class="odd">
<td><p><strong>#174</strong></p></td>
<td><p>replace auto overflow with none</p></td>
<td><p>Add a comment block and add lots of long comments</p></td>
<td><p>\theme\base\style\core.css</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK, no scrollbars, block just grows in length</p></td>
<td><p>OK</p></td>
</tr>
<tr class="even">
<td><p>#256</p></td>
<td><p>ucl banner</p></td>
<td><p><br />
</p></td>
<td><p>\theme\mymobile\layout\general.php</p></td>
<td><p><strong>Yes: For mymobile theme change margin-bottom from -8px to -1px Remember to apply this to the mydashboard instance too.</strong></p></td>
<td><p>Not sur ehow to test, looks Ok on Mobile</p></td>
<td><p>Not sure how to test, Can't test till fully live</p></td>
</tr>
<tr class="odd">
<td><p><br />
</p></td>
<td><p>add docked blocks for new accounts</p></td>
<td><p>??</p></td>
<td><p>\user\profile\lib.php</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>??</p></td>
<td><p>??</p></td>
</tr>
<tr class="even">
<td><p>#181</p></td>
<td><p>Make alternate text compulsory in TinyMCE editor</p></td>
<td><p><br />
</p></td>
<td><p>/lib/editor/tinymce/tiny_mce/3.4.9/plugins/advimage/js/image.js</p></td>
<td><p><br />
</p></td>
<td><p>OK? - you get prompt about no ALT text</p></td>
<td><p>OK</p></td>
</tr>
<tr class="odd">
<td><p><br />
</p></td>
<td><p>calendar export settings - change from 60 to 90 days</p></td>
<td><p><br />
</p></td>
<td><p><strong>/calendar/export_execute.php</strong><br />
<strong>/lang/en_utf8/calendar.php</strong></p></td>
<td><p><br />
</p></td>
<td><p>OK</p></td>
<td><p>OK</p></td>
</tr>
</tbody>
</table>

## Version 2.2.7 - scp 6132 scheduled for production on 11/02/13

------------------------------------------------------------------------

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Ticket</p></th>
<th><p>Fix</p></th>
<th><p>How to test</p></th>
<th><p>Files modified</p></th>
<th><p>Still Valid for Moodle 2.4</p></th>
<th><p>Checked Pre 2.4.3</p></th>
<th><p>Checked Post 2.4.3</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><br />
</p></td>
<td><p>Quiz question numbering wraps instead of sitting on 1 long line</p></td>
<td><p>No ticket number, dont know how to check</p></td>
<td><p><br />
</p></td>
<td><p>?</p></td>
<td><p>No</p></td>
<td><p>No</p></td>
</tr>
<tr class="even">
<td><p><br />
</p></td>
<td><p>New course should default to being hidden from students</p></td>
<td><p>Create a new course. Shouldnt need checking unless a major version/DB upgrade takes place</p></td>
<td><p><br />
</p></td>
<td><p>Yes</p></td>
<td><p>OK</p></td>
<td><p>OK</p></td>
</tr>
</tbody>
</table>

## Version 2.2.6 - scp 6042 Installed on production on 04/12/12

------------------------------------------------------------------------

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Ticket</p></th>
<th><p>Fix</p></th>
<th><p>How to test</p></th>
<th><p>Files modified</p></th>
<th><p>Still Valid for Moodle 2.4</p></th>
<th><p>Checked Pre 2.4.3</p></th>
<th><p>Checked Post 2.4.3</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>#321</p></td>
<td><p>Grade Essays option in Lesson- students not listed alphabetically</p></td>
<td><p>There is a link in the upgrade test course</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/changeset/24060/moodle2-main/trunk/data/apache/htdocs/moodle/mod/lesson/essay.php">/mod/lesson/essay.php</a></p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK</p></td>
<td><p>OK</p></td>
</tr>
<tr class="even">
<td><p><br />
</p></td>
<td><p>Added language string for imsenterprise:unenrol</p></td>
<td><p>??</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/enrol/imsenterprise/lang/en/enrol_imsenterprise.php?rev=24040">enrol/imsenterprise/lang/en/enrol_imsenterprise.php</a></p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>?? How to check?</p></td>
<td><p>?? How to check?</p></td>
</tr>
<tr class="odd">
<td><p>#314</p></td>
<td><p>IMS (Portico) enrolment plugin - unenrolself not set, students can't unenrol</p></td>
<td><p>Go to settings users permissions define roles.<br />
Look under 'Authenticated user' search for imsenterprise:unenrol and see what it is set to.</p></td>
<td><p><em>/enrol/imsenterprise/db/access.php</em><br />
<em>/enrol/imsenterprise/lang/enrol_imsenterprise.php</em><br />
<em>/enrol/imsenterprise/version.php</em><br />
<em>/enrol/imsenterprise/unenrolself.php</em></p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>Not Set</p></td>
<td><p>Not, to discuss</p></td>
</tr>
</tbody>
</table>

## Version 2.2.5 - scp 5974 installed on production on 30/10/12

------------------------------------------------------------------------

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Ticket</p></th>
<th><p>Fix</p></th>
<th><p>How to Test</p></th>
<th><p>files modified</p></th>
<th><p>Still Valid for Moodle 2.4</p></th>
<th><p>Checked Pre 2.4.3</p></th>
<th><p>Checked Post 2.4.3</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>#177</p></td>
<td><p>Mobile theme needs news items on homepage</p></td>
<td><p>Login via mobile phone, go to the navigation block and click on news. View a news item and check that every displays correctly</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/ucl?rev=23861">theme/ucl</a><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/ucl/layout/frontpage.php?rev=23861">/layout/frontpage.php</a><br />
<a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/ucl?rev=23861">theme/ucl</a><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/ucl/layout/frontpage.php?rev=23861">/layout</a><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/ucl/style/ucl.css?rev=23861">style/ucl.css</a></p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK</p></td>
<td><p>Can't test till fully live</p></td>
</tr>
<tr class="even">
<td><p>#306</p></td>
<td><p>Navigation, Settings and Help blocks on<br />
mobile version contain no content</p></td>
<td><p>On a mobile check select Navigation, Settings and Help and check that content is displayed for each option</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile?rev=23992">theme/mymobile</a>/<a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile/config.php?rev=23992">config.php</a><br />
<a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile?rev=23992">theme/mymobile</a><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile/javascript/custom.js?rev=23992">/javascript/custom.js</a><br />
<a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile?rev=23992">theme/mymobile</a>/<a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile/layout/embedded.php?rev=23992">layout/embedded.php</a><br />
<a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile?rev=23992">theme/mymobile</a>/<a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile/layout/general.php?rev=23992">layout/general.php</a><br />
<a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile?rev=23992">theme/mymobile/</a><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile/layout/mydashboard.php?rev=23992">layout/mydashboard.php</a><br />
theme/mymobile/<a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile/style/core.css?rev=23992">style/core.cs</a>s<br />
\blocks\navigation\styles.css</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK</p></td>
<td><p>Can't test till fully live</p></td>
</tr>
<tr class="odd">
<td><p>#310</p></td>
<td><p>Add Moodle Qatar theme to UCL Moodle</p></td>
<td><p>In a course, select Settings&gt;Edit settings. In the 'Force theme' drop down box, select UCL Qatar and click save changes.<br />
Check that the course still displays as expected. The difference is very subtle, notice the UCL log at the top right of the page.</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/ucl_qatar?rev=23715">theme/ucl_qatar</a></p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK</p></td>
<td><p>OK</p></td>
</tr>
<tr class="even">
<td><p>#308</p></td>
<td><p>No users displayed if course contains more than 100 users</p></td>
<td><p>This ticket fixes an issue in courses with more than 100 users enrolled. When adding users to a group, if the course contains more than 100 users,<br />
 no users are displayed in the  Add/remove users box. This is now fixed for course which contain less than 500 students.<br />
To test, as a tutor/admin go to a course (e.g. ECON1001) and create a group. Select Users&gt;groups and select the 'Create group' button.<br />
 Enter 'group A' in the group name field and select save changes. Select  Add/remove users, all users should be displayed.</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/user/selector/lib.php?rev=23849">user/selector/lib.php</a></p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>OK</p></td>
<td><p>Something has changes in the test course. Cant test easily.</p></td>
</tr>
<tr class="odd">
<td><p>#309</p></td>
<td><p>remove banner images and extraneous text<br />
from print view on quiz results page and other Moodle pages</p></td>
<td><p>Login as a student and go to a course where the student has completed a quiz. eg.<br />
Go to course <a href="https://v225.moodle-uat.ucl.ac.uk/course/view.php?id=13673" class="uri">https://v225.moodle-uat.ucl.ac.uk/course/view.php?id=13673</a> and login as [Emir Aciyan. Go to a completed quiz and click Review.<br />
Click print preview and make sure the quiz answers are displayed correctly.</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile?rev=23863">theme/mymobile</a>/<a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile/config.php?rev=23863">config.php</a><br />
theme/mymobile/<a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/theme/mymobile/style/printstyles.css?rev=23863">style/printstyles.css</a></p></td>
<td><p><strong>Can't Find Files</strong></p></td>
<td><p>OK</p></td>
<td><p>OK</p></td>
</tr>
<tr class="even">
<td><p><br />
</p></td>
<td><p>Unenrolment icon not displayed for portico enrolled users</p></td>
<td><p><br />
</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/enrol/imsenterprise/lib.php?rev=23988">enrol/imsenterprise/lib.php</a></p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>Looks OK, big red 'unenrol' icon by the method</p></td>
<td><p>Looks OK, big red 'unenrol' icon by the method</p></td>
</tr>
<tr class="odd">
<td><p><br />
</p></td>
<td><p>Unlinking users in turnitin displays error. Requires latest version of turnitin</p></td>
<td><p><br />
</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/mod/turnitintool?rev=23943">/mod/turnitintool</a>/*.*</p></td>
<td><p><strong>No turn it in installed locally</strong></p></td>
<td><p>Not checked</p></td>
<td><p>Not checked</p></td>
</tr>
<tr class="even">
<td><p>#317</p></td>
<td><p>Moodle Library Resources block: Interim fix to prevent stuck processes - supress outbound CURL requests</p></td>
<td><p><br />
</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/browser/moodle2-main/trunk/data/apache/htdocs/moodle/blocks/library_resources/block_library_resources.php?rev=23909">blocks/library_resources/block_library_resources.php</a></p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>how to check?</p></td>
<td><p>how to check?</p></td>
</tr>
<tr class="odd">
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
</tbody>
</table>


