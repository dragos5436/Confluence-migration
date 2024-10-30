# UCL Hacks - Moodle v3.4 and above

#### Version 3.4

## Hacks included in Moodle version 3.4 release

<table>
<thead>
<tr class="header">
<th>No</th>
<th><p>Ticket</p></th>
<th><p>Fix</p></th>
<th><p>How to test</p></th>
<th><p>Files modified with Code snippet</p></th>
<th><p>Test outcome/comments?</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>SCP <br />

<p>#3795</p></td>
<td><p>calendar export settings - change from 60 to 90 days</p></td>
<td><ul>
<li> Go to calendar, click on Month Year above calendar&gt; Export Calendar</li>
<li>Select <strong>Export</strong> events and check <strong>Recent and next 90 days</strong></li>
<li>Click<strong> Export</strong><br />
This should generate a URL for calendar- check this works<br />
<strong><br />
</strong></li>
</ul>
<p>Go to /calendar/export.php. Check Lang is ok on 90 day option. Check events up to 90 days are exported.</p></td>
<td><div class="content-wrapper">
<p>/calendar/export_execute.php</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: FadeToGrey" data-theme="FadeToGrey" style="brush: php; gutter: false; theme: FadeToGrey"><code>case &#39;recentupcoming&#39;:
    //Events in the last 5 or next 60 days
    $timestart = time() - 432000;
    //--- ucl hack begin- replaced with the line below to export 90 rather than 60 days
    //$timeend = time() + 5184000;
    $timeend = time() + (90 * 24 * 60 * 60); // 90 days
    //-- ucl hack end --//
break;</code></pre>
</div>
</div>
<p>/lang/en/calendar.php</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: FadeToGrey" data-theme="FadeToGrey" style="brush: php; gutter: false; theme: FadeToGrey"><code>//--- ucl hack begin- export 90 rather than 60 days
//$string[&#39;recentupcoming&#39;] = &#39;Recent and next 60 days&#39;;
$string[&#39;recentupcoming&#39;] = &#39;Recent and next 90 days&#39;;
//-- ucl hack end --//</code></pre>
</div>
</div>
<p></p>
<p><br />
</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>2</td>
<td><br />
</td>
<td>Stop people being able to select hourly and daily calendar subscription update frequencies</td>
<td><p>Go to <a href="https://moodle.ucl.ac.uk/calendar/managesubscriptions.php" class="uri">https://moodle.ucl.ac.uk/calendar/managesubscriptions.php</a></p>
and make sure you can't see hourly and daily from the &quot;update interval&quot; dropdown</td>
<td><div class="content-wrapper">
<p>/calendar/lib.php</p>
<p><br />
</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: FadeToGrey" data-theme="FadeToGrey" style="brush: php; gutter: false; theme: FadeToGrey"><code>function calendar_get_pollinterval_choices() {
    return array(
        &#39;0&#39; =&gt; new \lang_string(&#39;never&#39;, &#39;calendar&#39;),
        /**UCL HACK Remove hourly and Daily options
        HOURSECS =&gt; new \lang_string(&#39;hourly&#39;, &#39;calendar&#39;),
        DAYSECS =&gt; new \lang_string(&#39;daily&#39;, &#39;calendar&#39;),
         * END UCL hack */
        WEEKSECS =&gt; new \lang_string(&#39;weekly&#39;, &#39;calendar&#39;),
        &#39;2628000&#39; =&gt; new \lang_string(&#39;monthly&#39;, &#39;calendar&#39;),
        YEARSECS =&gt; new \lang_string(&#39;annually&#39;, &#39;calendar&#39;)
    );
}</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>3</td>
<td><p>RF IN02542961</p>
CR00001745</td>
<td>Add  comments and  completion data to default settings for course reset</td>
<td>Check course reset form, see that checkboxes are ticked by default</td>
<td><div class="content-wrapper">
<p>/course/reset_form.php</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: FadeToGrey" data-theme="FadeToGrey" style="brush: php; gutter: false; theme: FadeToGrey"><code>$mform-&gt;addElement(&#39;checkbox&#39;, &#39;reset_comments&#39;, get_string(&#39;deleteallcomments&#39;, &#39;moodle&#39;));
//--ucl hack begin-- ticket IN02542961
$mform-&gt;setDefault(&#39;reset_comments&#39;, true);
//-- ucl hack end
$mform-&gt;addElement(&#39;checkbox&#39;, &#39;reset_completion&#39;, get_string(&#39;deletecompletiondata&#39;, &#39;completion&#39;));
//--ucl hack begin-- ticket IN02542961
$mform-&gt;setDefault(&#39;reset_completion&#39;, true);
//-- ucl hack end
$mform-&gt;addElement(&#39;checkbox&#39;, &#39;delete_blog_associations&#39;, get_string(&#39;deleteblogassociations&#39;, &#39;blog&#39;));</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>4</td>
<td><br />
</td>
<td><p>Required by local/ucl_tools/imsenterprise_unenrol plugin to allow admin to unenrol students that are enrolled via portico/imsenterprise</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>/enrol/imsenterprise/db/access.php</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: FadeToGrey" data-theme="FadeToGrey" style="brush: php; gutter: false; theme: FadeToGrey"><code>// BEGIN ucl hack - Trac moodle2#314
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
<p>enrol/imsenterprise/lib.php</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: FadeToGrey" data-theme="FadeToGrey" style="brush: php; gutter: false; theme: FadeToGrey"><code>// BEGIN ucl hack - Trac moodle2#314
/**
 * ucl hack to unenrol students enrolled via portico
 * The function allows users to be un-enrolled
 */
public function allow_unenrol(stdClass $instance) {
    // Users with unenrol cap may unenrol other users manually.
    return true;
}
// END ucl hack - Trac moodle2#314</code></pre>
</div>
</div>
</div></td>
<td><p>This hack is required for site-admin → ucl tools → Portcico en-enrol</p>
<p>feature to work</p>
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
<td>5</td>
<td><br />
</td>
<td>added string for kosovo</td>
<td>Edit your profile and look for Kosovo in list of countries</td>
<td><div class="content-wrapper">
<p>/lang/en/countries.php</p>
<p><br />
</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: FadeToGrey" data-theme="FadeToGrey" style="brush: php; gutter: false; theme: FadeToGrey"><code>$string[&#39;KR&#39;] = &#39;Korea, Republic Of&#39;;
//-- uck hack begin
$string[&#39;XK&#39;] = &#39;Kosovo&#39;;
//-- ucl hack end
$string[&#39;KW&#39;] = &#39;Kuwait&#39;;</code></pre>
</div>
</div>
<p><br />
</p>
<p><br />
</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>6</td>
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
<p><br />
</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: FadeToGrey" data-theme="FadeToGrey" style="brush: php; gutter: false; theme: FadeToGrey"><code>//ucl hack begin - ticket moodle2#321 (https://svn.ucl.ac.uk/projects/isd/moodle2/ticket/321)
// Cycle through all the students
//foreach (array_keys($studentessays) as $userid) {
foreach (array_keys($users) as $userid) {
//ucl hack end</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>7</td>
<td><p>RF 02542961</p>
CR00001745</td>
<td>Add TII date default settings for course reset</td>
<td>Check course reset form</td>
<td><div class="content-wrapper">
<p>/mod/turnitintooltwo/lib.php</p>
<p><br />
</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: FadeToGrey" data-theme="FadeToGrey" style="brush: php; gutter: false; theme: FadeToGrey"><code>//--ucl hack begin-- ticket IN02542961
$mform-&gt;setDefault(&#39;renew_assignment_dates&#39;, true);
//-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>8</td>
<td>#163</td>
<td>remove auto-population of author field</td>
<td>Upload a file. See if your name appears in the 'Author' field</td>
<td><div class="content-wrapper">
<p>/repository/filepicker.js</p>
<p><br />
</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="php" data-syntaxhighlighter-params="brush: php; gutter: false; theme: FadeToGrey" data-theme="FadeToGrey" style="brush: php; gutter: false; theme: FadeToGrey"><code>content.one(&#39;.fp-saveas input&#39;).set(&#39;name&#39;, &#39;title&#39;);
//-- ucl hack begin- ticket #38
//content.one(&#39;.fp-setauthor input&#39;).setAttrs({name:&#39;author&#39;, value:this.options.author});
content.one(&#39;.fp-setauthor input&#39;).setAttrs({name:&#39;author&#39;, value:null});
//-- ucl hack end</code></pre>
</div>
</div>
</div></td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Hacks excluded in Moodle version 3.4 release

<table>
<thead>
<tr class="header">
<th>No</th>
<th><p>Ticket</p></th>
<th><p>Fix</p></th>
<th><p>How to test</p></th>
<th><p>Files modified</p></th>
<th><p>Reasons for exclusion</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><p>Trac (Moodle2) #314</p>
<p><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/ticket/314">moodle2/ticket/314</a></p></td>
<td><p>Allow manager and tutor roles to unenrol during course resets?</p>
<p>Allow manual unenrol for students</p></td>
<td>Login as a course admin. Reset a course with portico enrolments. Check that all students get unenrolled.</td>
<td><div class="content-wrapper">
<p>enrol/imsenterprise/lib.php</p>
<p>lines 797 -</p>
<div class="table-wrap">
<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><code class="java comments">// BEGIN ucl hack - Trac moodle2#314</code><br />
<code class="java spaces">    </code><code class="java preprocessor">/**</code><br />
<code class="java spaces">     </code><code class="java preprocessor">* ucl hack to unenrol students enrolled via portico</code><br />
<code class="java spaces">     </code><code class="java preprocessor">* the following two functions have been copied from enrol/manual/lib.php.</code><br />
<code class="java spaces">     </code><code class="java preprocessor">*/</code><br />
<code class="java keyword">public</code> <code class="java plain">function get_user_enrolment_actions(course_enrolment_manager $manager, $ue) {</code><br />
<code class="java spaces">        </code><code class="java plain">$actions = array();</code><br />
<code class="java spaces">        </code><code class="java plain">$context = $manager-&gt;get_context();</code><br />
<code class="java spaces">        </code><code class="java plain">$instance = $ue-&gt;enrolmentinstance;</code><br />
<code class="java spaces">        </code><code class="java plain">$params = $manager-&gt;get_moodlepage()-&gt;url-&gt;params();</code><br />
<code class="java spaces">        </code><code class="java plain">$params[</code><code class="java string">'ue'</code><code class="java plain">] = $ue-&gt;id;</code><br />
<code class="java spaces">        </code><code class="java keyword">if</code> <code class="java plain">($</code><code class="java keyword">this</code><code class="java plain">-&gt;allow_unenrol_user($instance, $ue) &amp;&amp; has_capability(</code><code class="java string">&quot;enrol/manual:unenrol&quot;</code><code class="java plain">, $context)) {</code><br />
<code class="java spaces">            </code><code class="java plain">$url = </code><code class="java keyword">new</code> <code class="java plain">moodle_url(</code><code class="java string">'/enrol/unenroluser.php'</code><code class="java plain">, $params);</code><br />
<code class="java spaces">            </code><code class="java plain">$actions[] = </code><code class="java keyword">new</code> <code class="java plain">user_enrolment_action(</code><code class="java keyword">new</code> <code class="java plain">pix_icon(</code><code class="java string">'t/delete'</code><code class="java plain">, </code><code class="java string">''</code><code class="java plain">), get_string(</code><code class="java string">'unenrol'</code><code class="java plain">, </code><code class="java string">'enrol'</code><code class="java plain">), $url, array(</code><code class="java string">'class'</code><code class="java plain">=&gt;</code><code class="java string">'unenrollink'</code><code class="java plain">, </code><code class="java string">'rel'</code><code class="java plain">=&gt;$ue-&gt;id));</code><br />
<code class="java spaces">        </code><code class="java plain">}</code><br />
<code class="java spaces">        </code><code class="java keyword">if</code> <code class="java plain">($</code><code class="java keyword">this</code><code class="java plain">-&gt;allow_manage($instance) &amp;&amp; has_capability(</code><code class="java string">&quot;enrol/manual:manage&quot;</code><code class="java plain">, $context)) {</code><br />
<code class="java spaces">            </code><code class="java plain">$url = </code><code class="java keyword">new</code> <code class="java plain">moodle_url(</code><code class="java string">'/enrol/editenrolment.php'</code><code class="java plain">, $params);</code><br />
<code class="java spaces">            </code><code class="java plain">$actions[] = </code><code class="java keyword">new</code> <code class="java plain">user_enrolment_action(</code><code class="java keyword">new</code> <code class="java plain">pix_icon(</code><code class="java string">'t/edit'</code><code class="java plain">, </code><code class="java string">''</code><code class="java plain">), get_string(</code><code class="java string">'edit'</code><code class="java plain">), $url, array(</code><code class="java string">'class'</code><code class="java plain">=&gt;</code><code class="java string">'editenrollink'</code><code class="java plain">, </code><code class="java string">'rel'</code><code class="java plain">=&gt;$ue-&gt;id));</code><br />
<code class="java spaces">        </code><code class="java plain">}</code><br />
<code class="java spaces">        </code><code class="java keyword">return</code> <code class="java plain">$actions;</code><br />
<code class="java spaces">    </code><code class="java plain">}</code><br />
<code class="java spaces"> </code><br />
<code class="java spaces">    </code><code class="java comments">// END ucl hack - Trac moodle2#314</code></p></td>
</tr>
</tbody>
</table>
</div>
</div></td>
<td><p>Confirm if this hack is still required at all?</p>
<p>It seems to be quite an old requirement and it might not even work.</p>
<p>Param from that site admins are now allowed to un-enrol portico enrolled users using portico un-enrol plugin. That might suffice?</p></td>
</tr>
<tr class="even">
<td>2</td>
<td><p>#268</p></td>
<td><p>Make sure students get unenroled by default</p></td>
<td><p>Go to Course <strong>Reset</strong> page, at bottom click Select default and see that Student is highlighted in roles to remove</p></td>
<td><div class="content-wrapper">
<p>/course/reset_form.php</p>
<p><br />
</p>
<div class="table-wrap">
<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><code class="java comments">//-- ucl hack begin- fixes #91 when select default clicked, only select student (==5) rather than</code><br />
<code class="java spaces"> </code><code class="java plain">all those with an archetype of student because we don't want to reset participant and non editing tutor.</code><br />
<code class="java comments">//$defaults['unenrol_users'] = array_keys($studentrole);</code><br />
<code class="java spaces">  </code><code class="java plain">$defaults[</code><code class="java string">'unenrol_users'</code><code class="java plain">] = </code><code class="java value">5</code><code class="java plain">;</code><br />
<code class="java comments">//-- uck hack end --//</code></p></td>
</tr>
</tbody>
</table>
</div>
</div></td>
<td><div class="content-wrapper">
<ul>
<li>This won't work as is for student role != 5</li>
<li>Wrong approach use shortname instead</li>
<li>Check moodle tracker. Is fixed in version <a href="https://tracker.moodle.org/issues/?jql=project+%3D+MDL+AND+fixVersion+%3D+2.3.5" title="2.3.5 Bug fixes">2.3.5</a>, <a href="https://tracker.moodle.org/issues/?jql=project+%3D+MDL+AND+fixVersion+%3D+2.4.1" title="2.4.1 Polish on 2.4">2.4.1</a><br />
<a href="https://tracker.moodle.org/browse/MDL-34190" class="uri">https://tracker.moodle.org/browse/MDL-34190</a></li>
</ul>
<p><br />
</p>
<br />

<p><br />
</p>
</div></td>
</tr>
<tr class="odd">
<td>3</td>
<td>ticket #53</td>
<td>Middle name fuzzy search</td>
<td><ul>
<li>Go to any course</li>
<li>Go to <strong>Course Admin &gt; Users &gt; Enrolled users</strong></li>
<li>Click<strong> 'Enrol users'</strong></li>
<li>Search for Matthew Smith<strong><br />
</strong></li>
<li>Check all M Smiths with middle initials are returned in search</li>
</ul></td>
<td><div class="content-wrapper">
<p>/enrol/manual/yui/quickenrolment/quickenrolment.js</p>
<p>lines 354 -</p>
<div class="table-wrap">
<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><code class="java comments">//-- ucl hack begin -- ticket #53</code><br />
<code class="java spaces">            </code><code class="java comments">//params['search'] = this.get(UEP.SEARCH).get('value');</code><br />
<code class="java spaces">            </code><code class="java plain">var qvalue;</code><br />
<code class="java spaces">            </code><code class="java plain">qvalue = </code><code class="java keyword">this</code><code class="java plain">.get(UEP.SEARCH).get(</code><code class="java string">'value'</code><code class="java plain">); </code><code class="java comments">// replace space with a %</code><br />
<code class="java spaces">            </code><code class="java plain">params[</code><code class="java string">'search'</code><code class="java plain">] = qvalue.split(</code><code class="java string">' '</code><code class="java plain">).join(</code><code class="java string">'%'</code><code class="java plain">);</code><br />
<code class="java spaces">            </code><code class="java comments">//-- ucl hack end</code></p></td>
</tr>
</tbody>
</table>
</div>
</div></td>
<td>The /yui/quickenrolment/quickenrolment.js doesn't exist in version 3.4</td>
</tr>
<tr class="even">
<td>4</td>
<td><br />
</td>
<td>Middle name fuzzy search for Enrolled users page only</td>
<td><ul>
<li>Go to any course</li>
<li>Go to <strong>Course Admin &gt; Users &gt; Enrolled users</strong></li>
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
<div class="table-wrap">
<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><code class="java comments">//-- uck hack begin</code><br />
<code class="java plain">$search = preg_replace(</code><code class="java string">'/\s+/'</code><code class="java plain">,</code><code class="java string">&quot;%&quot;</code><code class="java plain">,$search);</code><br />
<code class="java comments">//-- ucl hack end</code></p></td>
</tr>
</tbody>
</table>
</div>
</div></td>
<td>enrol/users.php scripts is not part of Moodle version 3.4 release</td>
</tr>
<tr class="odd">
<td>5</td>
<td><br />
</td>
<td>Add the 'all course link to the bottom of the Course overview</td>
<td><p>Go to my Home, look at bottom of your course list.</p>
<p>Look for &quot;<a href="https://moodle.ucl.ac.uk/course/index.php">Browse all courses on UCL Moodle</a> ...&quot; at the bottom of the course list</p></td>
<td><div class="content-wrapper">
<p>/blocks/course_overview/lang/en/block_course_overview.php</p>
<p>line 68</p>
<div class="table-wrap">
<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><code class="php comments">//--- ucl hack begin  --//</code><br />
<code class="php variable">$string</code><code class="php plain">[</code><code class="php string">'allcourses'</code><code class="php plain">] = </code><code class="php string">'Browse all courses on UCL Moodle'</code><code class="php plain">;</code><br />
<code class="php variable">$string</code><code class="php plain">[</code><code class="php string">'hideallcourseslink'</code><code class="php plain">] = </code><code class="php string">'Hide \'Browse all courses on UCL Moodle\' link'</code><code class="php plain">;</code><br />
<code class="php variable">$string</code><code class="php plain">[</code><code class="php string">'confighideallcourseslink'</code><code class="php plain">] = </code><code class="php string">'Remove the \'Browse all courses on UCL Moodle\' link under the list of courses. (This setting does not affect the admin view.)'</code><code class="php plain">;</code><br />
<code class="php comments">//--- ucl hack begin  --//</code></p></td>
</tr>
</tbody>
</table>
</div>
</div></td>
<td>/blocks/course_overview is not part of version 3.4 release</td>
</tr>
<tr class="even">
<td>6</td>
<td><br />
</td>
<td>Add the 'all course link to the bottom of the Course overview</td>
<td><p>Go to my Home, look at bottom of your course list.</p>
Look for &quot;<a href="https://moodle.ucl.ac.uk/course/index.php">Browse all courses on UCL Moodle</a> ...&quot; at the bottom of the course list</td>
<td><div class="content-wrapper">
<p>/blocks/course_overview/block_course_overview.php</p>
<p>line 90</p>
<div class="table-wrap">
<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><code class="php spaces">        </code><code class="php keyword">if</code> <code class="php plain">(</code><code class="php functions">empty</code><code class="php plain">(</code><code class="php variable">$sortedcourses</code><code class="php plain">)) {</code><br />
<code class="php comments">//--- ucl hack begin  --//</code><br />
<code class="php spaces">     </code><code class="php comments">// $this-&gt;content-&gt;text .= get_string('nocourses','my');</code><br />
<code class="php spaces">            </code><code class="php variable">$this</code><code class="php plain">-&gt;content-&gt;text .= get_string(</code><code class="php string">'nocourses'</code><code class="php plain">,</code><code class="php string">'my'</code><code class="php plain">).</code><code class="php string">'&lt;br&gt;'</code><code class="php plain">;</code><br />
<code class="php comments">//-- ucl hack end --//</code><br />
<code class="php spaces">        </code><code class="php plain">} </code><code class="php keyword">else</code> <code class="php plain">{</code><br />
<code class="php spaces">            </code><code class="php comments">// For each course, build category cache.</code><br />
<code class="php spaces">            </code><code class="php variable">$this</code><code class="php plain">-&gt;content-&gt;text .= </code><code class="php variable">$renderer</code><code class="php plain">-&gt;course_overview(</code><code class="php variable">$sortedcourses</code><code class="php plain">, </code><code class="php variable">$overviews</code><code class="php plain">);</code><br />
<code class="php spaces">            </code><code class="php variable">$this</code><code class="php plain">-&gt;content-&gt;text .= </code><code class="php variable">$renderer</code><code class="php plain">-&gt;hidden_courses(</code><code class="php variable">$totalcourses</code> <code class="php plain">- </code><code class="php functions">count</code><code class="php plain">(</code><code class="php variable">$sortedcourses</code><code class="php plain">));</code><br />
<code class="php spaces">        </code><code class="php plain">}</code><br />
<code class="php comments">//--- ucl hack begin  --//</code><br />
<code class="php spaces">    </code><code class="php keyword">if</code> <code class="php plain">(</code><code class="php functions">empty</code><code class="php plain">(</code><code class="php variable">$CFG</code><code class="php plain">-&gt;block_course_overview_hideallcourseslink)) {</code><br />
<code class="php spaces">        </code><code class="php variable">$this</code><code class="php plain">-&gt;content-&gt;text .= </code><code class="php string">&quot;&lt;a href=\&quot;$CFG-&gt;wwwroot/course/index.php\&quot;&gt;&quot;</code><code class="php plain">.get_string(</code><code class="php string">&quot;allcourses&quot;</code><code class="php plain">,</code><code class="php string">&quot;block_course_overview&quot;</code><code class="php plain">).</code><code class="php string">&quot;&lt;/a&gt; ...&quot;</code><code class="php plain">;</code><br />
<code class="php spaces">    </code><code class="php plain">}</code><br />
<code class="php comments">//-- ucl hack end --//</code><br />
<code class="php spaces">        </code><code class="php keyword">return</code> <code class="php variable">$this</code><code class="php plain">-&gt;content;</code></p></td>
</tr>
</tbody>
</table>
</div>
</div></td>
<td>/blocks/course_overview is not part of version 3.4 release</td>
</tr>
<tr class="odd">
<td>7</td>
<td><br />
</td>
<td>Add the extra setting to the block</td>
<td><p>Go to /admin/settings.php?section=blocksettingcourse_overview</p>
<p>look for the last setting &quot;Hide 'Browse all courses on UCL Moodle' link&quot;</p></td>
<td><div class="content-wrapper">
<p>/blocks/course_overview/settings.php</p>
<p>line 40</p>
<div class="table-wrap">
<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><code class="php comments">//--- ucl hack begin  --//</code><br />
<code class="php spaces">    </code><code class="php variable">$settings</code><code class="php plain">-&gt;add(</code><code class="php keyword">new</code> <code class="php plain">admin_setting_configselect(</code><code class="php string">'block_course_overview/showcategories'</code><code class="php plain">, </code><code class="php keyword">new</code> <code class="php plain">lang_string(</code><code class="php string">'showcategories'</code><code class="php plain">, </code><code class="php string">'block_course_overview'</code><code class="php plain">),</code><br />
<code class="php spaces">        </code><code class="php keyword">new</code> <code class="php plain">lang_string(</code><code class="php string">'showcategoriesdesc'</code><code class="php plain">, </code><code class="php string">'block_course_overview'</code><code class="php plain">), BLOCKS_COURSE_OVERVIEW_SHOWCATEGORIES_NONE, </code><code class="php variable">$showcategories</code><code class="php plain">));</code><br />
<code class="php spaces">    </code><code class="php variable">$settings</code><code class="php plain">-&gt;add(</code><code class="php keyword">new</code> <code class="php plain">admin_setting_configcheckbox(</code><code class="php string">'block_course_overview_hideallcourseslink'</code><code class="php plain">, get_string(</code><code class="php string">'hideallcourseslink'</code><code class="php plain">, </code><code class="php string">'block_course_overview'</code><code class="php plain">),</code><br />
<code class="php spaces">                       </code><code class="php plain">get_string(</code><code class="php string">'confighideallcourseslink'</code><code class="php plain">, </code><code class="php string">'block_course_overview'</code><code class="php plain">), 0));</code><br />
<code class="php comments">//-- ucl hack end --//</code></p></td>
</tr>
</tbody>
</table>
</div>
</div></td>
<td></td>
</tr>
</tbody>
</table>


