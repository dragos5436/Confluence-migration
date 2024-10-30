# Behat Triage 3.9 Results

[behat-390-left-to-triage.txt](attachments/137150309/137152496.txt)

<table>
<thead>
<tr class="header">
<th>Locally Fixed</th>
<th>Pull Request/Tracker/Comment</th>
<th>Failed Steps</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><div class="content-wrapper">
<p>YES</p>
</div></td>
<td><a href="https://github.com/drachels/moodle-mod_hotquestion/pull/40/commits/fd3e5d72eaa604a905c166200e3c7296db9690e1" class="uri">https://github.com/drachels/moodle-mod_hotquestion/pull/40/commits/fd3e5d72eaa604a905c166200e3c7296db9690e1</a></td>
<td><pre><code>001 Scenario: Add a hotquestion activity and complete the activity as a student # /var/www/html/mod/hotquestion/tests/behat/Add Hot Question Activity.feature:7
      And I follow &quot;Test hotquestion name&quot;                                      # /var/www/html/mod/hotquestion/tests/behat/Add Hot Question Activity.feature:27
        Link matching locator &quot;Test hotquestion name&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>YES</p>
</div></td>
<td><a href="https://github.com/jmvedrine/moodle-qtype_algebra/pull/3/commits/f38e48c54bf7fdc24fe86b2f940e2714ad5a0aae" class="uri">https://github.com/jmvedrine/moodle-qtype_algebra/pull/3/commits/f38e48c54bf7fdc24fe86b2f940e2714ad5a0aae</a></td>
<td><pre><code>023 Scenario: Backup and restore a course containing an algebra question # /var/www/html/question/type/algebra/tests/behat/backup_and_restore.feature:26
      Then the following fields match these values:                      # /var/www/html/question/type/algebra/tests/behat/backup_and_restore.feature:33
        Field matching locator &quot;Question name&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="even">
<td><div class="content-wrapper">
<p>NO</p>
</div></td>
<td><br />
</td>
<td><pre><code>024 Scenario: Access the STACK response analysis report    # /var/www/html/mod/quiz/report/stack/tests/behat/basic_test.feature:59
      Given I set up STACK using the PHPUnit configuration # /var/www/html/mod/quiz/report/stack/tests/behat/basic_test.feature:8
        Warning: file_get_contents(/var/www/html/question/type/stack/stack/maxima/stackmaxima.mac): failed to open stream: No such file or directory in /var/www/html/question/type/.stack/tests/fixtures/test_maxima_configuration.php line 58</code></pre></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>NO</p>
</div></td>
<td><br />
</td>
<td><pre><code>025 Scenario: Add the block Library Resources to a course # /var/www/html/blocks/library_resources/tests/behat/block_library_resources.feature:20
      When I add the &quot;Library Resources&quot; block            # /var/www/html/blocks/library_resources/tests/behat/block_library_resources.feature:23
        Other backtraces found:
        line 58 of /blocks/library_resources/block_library_resources.php: call to behat_error_handler()
        line 766 of /blocks/moodleblock.class.php: call to block_library_resources-&amp;gt;get_content()
        line 235 of /blocks/moodleblock.class.php: call to block_list-&amp;gt;formatted_contents()
        line 1181 of /lib/blocklib.php: call to block_base-&amp;gt;get_content_for_output()
        line 1233 of /lib/blocklib.php: call to block_manager-&amp;gt;create_block_contents()
        line 374 of /lib/blocklib.php: call to block_manager-&amp;gt;ensure_content_created()
        line 3966 of /lib/outputrenderers.php: call to block_manager-&amp;gt;region_has_content()
        line 40 of /theme/boost/layout/columns2.php: call to core_renderer-&amp;gt;blocks()
        line 1374 of /lib/outputrenderers.php: call to include()
        line 1304 of /lib/outputrenderers.php: call to core_renderer-&amp;gt;render_page_layout()
        line 244 of /course/view.php: call to core_renderer-&amp;gt;header() (Exception)</code></pre></td>
</tr>
<tr class="even">
<td><div class="content-wrapper">
<p>YES</p>
</div></td>
<td>need to create a tracker issue</td>
<td><pre><code>026 Scenario: Admin page can be accessed through bookmarks block               # /var/www/html/blocks/admin_bookmarks/tests/behat/bookmark_admin_pages.feature:22
      And I click on &quot;Scheduled tasks&quot; &quot;link&quot; in the &quot;Admin bookmarks&quot; &quot;block&quot; # /var/www/html/blocks/admin_bookmarks/tests/behat/bookmark_admin_pages.feature:25
        Block matching locator &quot;&#39;Admin bookmarks&#39;&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>YES</p>
</div></td>
<td>need to create a tracker issue</td>
<td><pre><code>027 Scenario: Admin page can be removed from bookmarks                         # /var/www/html/blocks/admin_bookmarks/tests/behat/bookmark_admin_pages.feature:29
      And I click on &quot;Scheduled tasks&quot; &quot;link&quot; in the &quot;Admin bookmarks&quot; &quot;block&quot; # /var/www/html/blocks/admin_bookmarks/tests/behat/bookmark_admin_pages.feature:32
        Block matching locator &quot;&#39;Admin bookmarks&#39;&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="even">
<td><div class="content-wrapper">
<p>NOT REQUIRED</p>
</div></td>
<td>we dont use the combined qtype</td>
<td><pre><code>042 Scenario: Create, edit and preview a combined question. # /var/www/html/question/type/algebra/tests/behat/combinable.feature:18
      And I set the field &quot;Combined&quot; to &quot;1&quot;                 # /var/www/html/question/type/algebra/tests/behat/combinable.feature:23
        Field matching locator &quot;Combined&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>YES</p>
</div></td>
<td><p><a href="https://github.com/jmvedrine/moodle-qtype_algebra/pull/4/commits/68bf874a3e4f1c6c215276ac3cf4cfb6c74f163f" class="uri">https://github.com/jmvedrine/moodle-qtype_algebra/pull/4/commits/68bf874a3e4f1c6c215276ac3cf4cfb6c74f163f</a></p>
<p><br />
</p></td>
<td><pre><code>063 Scenario: Edit an Algebra question                # /var/www/html/question/type/algebra/tests/behat/edit.feature:28
      And I set the following fields to these values: # /var/www/html/question/type/algebra/tests/behat/edit.feature:30
        Field matching locator &quot;Question name&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="even">
<td><div class="content-wrapper">
<p>NOT REQUIRED</p>
</div></td>
<td>Ran test again and passed fine</td>
<td><pre><code>064 Scenario: Edit a All-or-Nothing Multiple Choice question # Algebra/var/www/html/question/type/multichoiceset/tests/behat/edit.feature:27
      And I set the following fields to these values:        # /var/www/html/question/type/multichoiceset/tests/behat/edit.feature:29
        Field matching locator &quot;Question name&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>NOT REQUIRED</p>
</div></td>
<td>Ran test again and passed fine</td>
<td><pre><code>071 Scenario: Export a All-or-Nothing Multiple Choice question                    # /var/www/html/question/type/multichoiceset/tests/behat/export.feature:26
      Then following &quot;click here&quot; should download between &quot;1800&quot; and &quot;1900&quot; bytes # /var/www/html/question/type/multichoiceset/tests/behat/export.feature:30
        Downloaded data was 1925 bytes, expecting between 1800 and 1900 (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><div class="content-wrapper">
<p>PASS</p>
</div></td>
<td>behat test fails but functionality works fine in production</td>
<td><pre><code>072 Scenario: A teacher can use the radio buttons to set attendance values for unselected users # /var/www/html/mod/attendance/tests/behat/extra_features.feature:213
      And &quot;L&quot; &quot;text&quot; should exist in the &quot;Student 2&quot; &quot;table_row&quot;                                # /var/www/html/mod/attendance/tests/behat/extra_features.feature:229
        Text matching locator &quot;L in the Student 2 table_row&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>NO</p>
</div></td>
<td><p>001 Scenario: Preset settings are applied # /var/www/html/blocks/admin_presets/tests/behat/import_settings.feature:19</p>
<p>And I follow &quot;yui_3_17_2_1_1595867005162_307&quot; # /var/www/html/blocks/admin_presets/tests/behat/import_settings.feature:22</p>
<p><br />
</p></td>
<td><pre><code>095 Scenario: Preset settings are applied # /var/www/html/blocks/admin_presets/tests/behat/import_settings.feature:18
      And I follow &quot;Turn editing on&quot;      # /var/www/html/blocks/admin_presets/tests/behat/import_settings.feature:10
        The &quot;(//html/.//a
        [./@href][((./@id = &#39;Turn editing on&#39; or contains(normalize-space(string(.)), &#39;Turn editing on&#39;) or contains(./@title, &#39;Turn editing on&#39;) or contains(./@rel, 
&#39;Turn editing on&#39;)) or .//*[(contains(concat(&#39; &#39;, @class, &#39; &#39;), &#39; icon &#39;) or name() = &#39;img&#39;) and (contains(./@alt, &#39;Turn editing on&#39;) or contains(./@title, &#39;Turn editing on&#39;))])] | //html/.//*
        [translate(./@role, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;link&#39;][((./@id = &#39;Turn editing on&#39; or contains(./@value, &#39;Turn editing on&#39;)) or contains(./@title, 
&#39;Turn editing on&#39;) or contains(normalize-space(string(.)), &#39;Turn editing on&#39;))])[1]&quot; xpath node is not visible and it should be visible (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><div class="content-wrapper">
<p>NO</p>
</div></td>
<td><p>001 Scenario: Settings don't change if you import what you just exported # /var/www/html/blocks/admin_presets/tests/behat/import_settings.feature:54</p>
<p>And I press &quot;Load selected settings&quot; # /var/www/html/blocks/admin_presets/tests/behat/import_settings.feature:56</p>
<p>debugging() message/s found:</p>
<p><br />
</p></td>
<td><pre><code>096 Scenario: Settings don&#39;t change if you import what you just exported # /var/www/html/blocks/admin_presets/tests/behat/import_settings.feature:52
      And I follow &quot;Turn editing on&quot;                                     # /var/www/html/blocks/admin_presets/tests/behat/import_settings.feature:10
        The &quot;(//html/.//a
        [./@href][((./@id = &#39;Turn editing on&#39; or contains(normalize-space(string(.)), &#39;Turn editing on&#39;) or contains(./@title, &#39;Turn editing on&#39;) or contains(./@rel, 
&#39;Turn editing on&#39;)) or .//*[(contains(concat(&#39; &#39;, @class, &#39; &#39;), &#39; icon &#39;) or name() = &#39;img&#39;) and (contains(./@alt, &#39;Turn editing on&#39;) or contains(./@title, 
&#39;Turn editing on&#39;))])] | //html/.//*
        [translate(./@role, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;link&#39;][((./@id = &#39;Turn editing on&#39; or contains(./@value, &#39;Turn editing on&#39;)) or contains(./@title, &#39;Turn editing on&#39;) or contains(normalize-space(string(.)), 
&#39;Turn editing on&#39;))])[1]&quot; xpath node is not visible and it should be visible (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>NO</p>
</div></td>
<td><p>in test the following lines 29&amp;30</p>
<p>And I configure Turnitin URL</p>
<p>And I configure Turnitin credentials</p>
<p>env variable is probably empty as fields are not being filled in with credentials</p>
<p><a href="https://github.com/turnitin/moodle-plagiarism_turnitin/blob/5d917d75d2efa829a732ef576ef3d6fd719c51a2/vendor/Integrations/phpsdk-package/README.md" class="uri">https://github.com/turnitin/moodle-plagiarism_turnitin/blob/5d917d75d2efa829a732ef576ef3d6fd719c51a2/vendor/Integrations/phpsdk-package/README.md</a></p>
<p><br />
</p>
<p><a href="https://github.com/turnitin/moodle-plagiarism_turnitin/blob/185971479dd96918ca5b37aa5572500131f48aeb/tests/behat/behat_plagiarism_turnitin.php#L87" class="uri">https://github.com/turnitin/moodle-plagiarism_turnitin/blob/185971479dd96918ca5b37aa5572500131f48aeb/tests/behat/behat_plagiarism_turnitin.php#L87</a></p></td>
<td><pre><code>097 Scenario: Test the plugin connectivity   # /var/www/html/plagiarism/turnitin/tests/behat/installed.feature:26
      And I press &quot;Test Turnitin Connection&quot; # /var/www/html/plagiarism/turnitin/tests/behat/installed.feature:28
        The &quot;(//html/.//input
        [translate(./@type, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;submit&#39; or translate(./@type, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = 
&#39;image&#39; or translate(./@type, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;button&#39; or translate(./@type, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = 
&#39;reset&#39;][((./@id = &#39;Test Turnitin Connection&#39; or ./@name = &#39;Test Turnitin Connection&#39;) or contains(./@value, 
&#39;Test Turnitin Connection&#39;) or contains(./@title, &#39;Test Turnitin Connection&#39;) or contains(./@aria-label, &#39;Test Turnitin Connection&#39;))] | //html/.//input
        [translate(./@type, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;image&#39;][contains(./@alt, &#39;Test Turnitin Connection&#39;)] | //html/.//button
        [((./@id = &#39;Test Turnitin Connection&#39; or ./@name = &#39;Test Turnitin Connection&#39;) or contains(./@value, &#39;Test Turnitin Connection&#39;) or contains(./@title, &#39;Test Turnitin Connection&#39;) 
or contains(./@aria-label, &#39;Test Turnitin Connection&#39;) or contains(normalize-space(string(.)), &#39;Test Turnitin Connection&#39;))] | //html/.//*
        [translate(./@role, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;button&#39;][((./@id = &#39;Test Turnitin Connection&#39; or ./@name = &#39;Test Turnitin Connection&#39;) or 
contains(./@value, &#39;Test Turnitin Connection&#39;) or contains(./@title, &#39;Test Turnitin Connection&#39;) or contains(./@aria-label, &#39;Test Turnitin Connection&#39;) or contains(normalize-space(string(.)), 
&#39;Test Turnitin Connection&#39;))])[1]&quot; xpath node is not visible and it should be visible (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>101 Scenario: Lesson main page rich content is annotated.                                                          # /var/www/html/filter/ally/tests/behat/lesson_annotation.feature:30
      And the lesson page content entitled &quot;Test lesson content 2&quot; is annotated and contains text &quot;Test content 2&quot; # /var/www/html/filter/ally/tests/behat/lesson_annotation.feature:54
        Xpath matching locator &quot;            //*[@data-ally-richcontent=&quot;lesson:lesson_pages:contents:371001&quot;]&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>106 Scenario: Change colour of some text # /var/www/html/lib/editor/atto/plugins/morefontcolors/tests/behat/morefontcolors.feature:12
      And I follow &quot;Edit profile&quot;        # /var/www/html/lib/editor/atto/plugins/morefontcolors/tests/behat/morefontcolors.feature:16
        The &quot;(//html/.//a
        [./@href][((./@id = &#39;Edit profile&#39; or contains(normalize-space(string(.)), &#39;Edit profile&#39;) or contains(./@title, &#39;Edit profile&#39;) or contains(./@rel, &#39;Edit profile&#39;)) or 
.//*[(contains(concat(&#39; &#39;, @class, &#39; &#39;), &#39; icon &#39;) or name() = &#39;img&#39;) and (contains(./@alt, &#39;Edit profile&#39;) or contains(./@title, &#39;Edit profile&#39;))])] | //html/.//*
        [translate(./@role, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;link&#39;][((./@id = &#39;Edit profile&#39; or contains(./@value, &#39;Edit profile&#39;)) or contains(./@title, 
&#39;Edit profile&#39;) or contains(normalize-space(string(.)), &#39;Edit profile&#39;))])[1]&quot; xpath node is not visible and it should be visible (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>109 Scenario: Module tutors need to be able to view grades of students taking courses they are recorded as a tutor for # /var/www/html/report/myfeedback/tests/behat/non_student_access.feature:62
      Given the following &quot;users&quot; exist:                                                                               # /var/www/html/report/myfeedback/tests/behat/non_student_access.feature:9
        The username must be in lower case (moodle_exception)</code></pre></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>110 Scenario: Personal tutors need to be able to view grades of their tutees. For instance, when a Personal Tutor is
preparing for a meeting with a student during which the tutor wishes to discuss the student&#39;s performance
(perhaps focusing on areas where they are doing well and where there is room for improvement.) # /var/www/html/report/myfeedback/tests/behat/non_student_access.feature:74
      Given the following &quot;users&quot; exist:                                                                                                                                                                                                                                                                                      
# /var/www/html/report/myfeedback/tests/behat/non_student_access.feature:9
        The username must be in lower case (moodle_exception)</code></pre></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>111 Scenario: A Departmental Admin wishes to log-in and check student performance across a cohort so that they can identify
any potential students struggling (and subsequently raise these instances of concerning performance with module Tutors.) # /var/www/html/report/myfeedback/tests/behat/non_student_access.feature:89
      Given the following &quot;users&quot; exist:                                                                                                                                                                                                             
# /var/www/html/report/myfeedback/tests/behat/non_student_access.feature:9
        The username must be in lower case (moodle_exception)</code></pre></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>113 Scenario: Paste from Microsoft Word on Windows # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:18
      Then I should see &quot;Firma ABC&quot;                # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:23
        &quot;Firma ABC&quot; text was not found in the page (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>114 Scenario: Paste from Google Doc on Windows             # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:26
      Then I should see &quot;Or only when redcolor I do this?&quot; # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:31
        &quot;Or only when redcolor I do this?&quot; text was not found in the page (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>115 Scenario: Paste from LibreOffice        # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:34
      Then I should see &quot;There is texthere&quot; # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:39
        &quot;There is texthere&quot; text was not found in the page (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>116 Scenario: Paste from Microsoft Word on Mac # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:42
      Then I should see &quot;Firma ABC&quot;            # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:47
        &quot;Firma ABC&quot; text was not found in the page (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>117 Scenario: Paste from Google Doc on Mac                 # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:50
      Then I should see &quot;Or only when redcolor I do this?&quot; # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:55
        &quot;Or only when redcolor I do this?&quot; text was not found in the page (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>118 Scenario: Paste as unformatted text on Windows         # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:58
      Then I should see &quot;Or only when redcolor I do this?&quot; # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:63
        &quot;Or only when redcolor I do this?&quot; text was not found in the page (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>119 Scenario: Paste as unformatted text on Mac             # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:66
      Then I should see &quot;Or only when redcolor I do this?&quot; # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:71
        &quot;Or only when redcolor I do this?&quot; text was not found in the page (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>120 Scenario: Paste table and content into formatting # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:74
      Then I should see &quot;Look at me&quot;                  # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:79
        &quot;Look at me&quot; text was not found in the page (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>121 Scenario: Paste without formatting text                                                                       # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:84
      When I set the innerhtml of &quot;atto_pastespecial_iframe&quot; to &quot;&lt;p id=&#39;skynet&#39;&gt;There is no need for concern&lt;/p&gt;&quot; # /var/www/html/lib/editor/atto/plugins/pastespecial/tests/behat/pastespecial.feature:85
        missing ; before statement
        Build info: version: &#39;2.53.1&#39;, revision: &#39;a36b8b1&#39;, time: &#39;2016-06-30 17:37:03&#39;
        System info: host: &#39;0e9e67f32bc8&#39;, ip: &#39;172.29.0.2&#39;, os.name: &#39;Linux&#39;, os.arch: &#39;amd64&#39;, os.version: &#39;5.3.0-59-generic&#39;, java.version: &#39;1.8.0_91&#39;
        Driver info: driver.version: unknown (WebDriver\Exception\UnknownError)</code></pre></td>
</tr>
<tr class="even">
<td><div class="content-wrapper">
<p>YES</p>
</div></td>
<td><a href="https://github.com/jmvedrine/moodle-qtype_algebra/pull/4/commits/68bf874a3e4f1c6c215276ac3cf4cfb6c74f163f" class="uri">https://github.com/jmvedrine/moodle-qtype_algebra/pull/4/commits/68bf874a3e4f1c6c215276ac3cf4cfb6c74f163f</a></td>
<td><pre><code>132 Scenario: Preview an Algebra question with correct answer           # /var/www/html/question/type/algebra/tests/behat/preview.feature:28
      When I click on &quot;Preview&quot; &quot;link&quot; in the &quot;algebra-001&quot; &quot;table_row&quot; # /var/www/html/question/type/algebra/tests/behat/preview.feature:29
        The &quot;((//html/.//tr[contains(normalize-space(.), &#39;algebra-001&#39;) and not(.//tr[contains(normalize-space(.), &#39;algebra-001&#39;)])])[1]/.//a
        [./@href][((./@id = &#39;Preview&#39; or contains(normalize-space(string(.)), &#39;Preview&#39;) or contains(./@title, &#39;Preview&#39;) or contains(./@rel, &#39;Preview&#39;)) or 
.//*[(contains(concat(&#39; &#39;, @class, &#39; &#39;), &#39; icon &#39;) or name() = &#39;img&#39;) and (contains(./@alt, &#39;Preview&#39;) or contains(./@title, &#39;Preview&#39;))])] | (//html/.//tr[contains(normalize-space(.), 
&#39;algebra-001&#39;) and not(.//tr[contains(normalize-space(.), &#39;algebra-001&#39;)])])[1]/.//*
        [translate(./@role, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;link&#39;][((./@id = &#39;Preview&#39; or contains(./@value, &#39;Preview&#39;)) or contains(./@title, 
&#39;Preview&#39;) or contains(normalize-space(string(.)), &#39;Preview&#39;))])[1]&quot; xpath node is not visible and it should be visible (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>YES</p>
</div></td>
<td><a href="https://github.com/jmvedrine/moodle-qtype_algebra/pull/4/commits/68bf874a3e4f1c6c215276ac3cf4cfb6c74f163f" class="uri">https://github.com/jmvedrine/moodle-qtype_algebra/pull/4/commits/68bf874a3e4f1c6c215276ac3cf4cfb6c74f163f</a></td>
<td><pre><code>133 Scenario: Preview an Algebra question with incorrect answer         # /var/www/html/question/type/algebra/tests/behat/preview.feature:44
      When I click on &quot;Preview&quot; &quot;link&quot; in the &quot;algebra-001&quot; &quot;table_row&quot; # /var/www/html/question/type/algebra/tests/behat/preview.feature:45
        The &quot;((//html/.//tr[contains(normalize-space(.), &#39;algebra-001&#39;) and not(.//tr[contains(normalize-space(.), &#39;algebra-001&#39;)])])[1]/.//a
        [./@href][((./@id = &#39;Preview&#39; or contains(normalize-space(string(.)), &#39;Preview&#39;) or contains(./@title, &#39;Preview&#39;) or contains(./@rel, &#39;Preview&#39;)) or .//*[(contains(concat
(&#39; &#39;, @class, &#39; &#39;), &#39; icon &#39;) or name() = &#39;img&#39;) and (contains(./@alt, &#39;Preview&#39;) or contains(./@title, &#39;Preview&#39;))])] | (//html/.//tr[contains(normalize-space(.), &#39;algebra-001&#39;) 
and not(.//tr[contains(normalize-space(.), &#39;algebra-001&#39;)])])[1]/.//*
        [translate(./@role, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;link&#39;][((./@id = &#39;Preview&#39; or contains(./@value, &#39;Preview&#39;)) or contains(./@title, &#39;Preview&#39;) 
or contains(normalize-space(string(.)), &#39;Preview&#39;))])[1]&quot; xpath node is not visible and it should be visible (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>134 Scenario: Preview a Multiple choice question and submit a wrong response.  # /var/www/html/question/type/multichoiceset/tests/behat/preview.feature:28
      When I click on &quot;Preview&quot; &quot;link&quot; in the &quot;All-or-nothing-001&quot; &quot;table_row&quot; # /var/www/html/question/type/multichoiceset/tests/behat/preview.feature:29
        The &quot;((//html/.//tr[contains(normalize-space(.), &#39;All-or-nothing-001&#39;) and not(.//tr[contains(normalize-space(.), &#39;All-or-nothing-001&#39;)])])[1]/.//a
        [./@href][((./@id = &#39;Preview&#39; or contains(normalize-space(string(.)), &#39;Preview&#39;) or contains(./@title, &#39;Preview&#39;) or contains(./@rel, &#39;Preview&#39;)) or .//*[(contains(concat(&#39; &#39;,
 @class, &#39; &#39;), &#39; icon &#39;) or name() = &#39;img&#39;) and (contains(./@alt, &#39;Preview&#39;) or contains(./@title, &#39;Preview&#39;))])] | (//html/.//tr[contains(normalize-space(.), &#39;All-or-nothing-001&#39;) and 
not(.//tr[contains(normalize-space(.), &#39;All-or-nothing-001&#39;)])])[1]/.//*
        [translate(./@role, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;link&#39;][((./@id = &#39;Preview&#39; or contains(./@value, &#39;Preview&#39;)) or contains(./@title, &#39;Preview&#39;) or 
contains(normalize-space(string(.)), &#39;Preview&#39;))])[1]&quot; xpath node is not visible and it should be visible (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>135 Scenario: Preview a Multiple choice question and submit a correct response. # /var/www/html/question/type/multichoiceset/tests/behat/preview.feature:42
      When I click on &quot;Preview&quot; &quot;link&quot; in the &quot;All-or-nothing-001&quot; &quot;table_row&quot;  # /var/www/html/question/type/multichoiceset/tests/behat/preview.feature:43
        The &quot;((//html/.//tr[contains(normalize-space(.), &#39;All-or-nothing-001&#39;) and not(.//tr[contains(normalize-space(.), &#39;All-or-nothing-001&#39;)])])[1]/.//a
        [./@href][((./@id = &#39;Preview&#39; or contains(normalize-space(string(.)), &#39;Preview&#39;) or contains(./@title, &#39;Preview&#39;) or contains(./@rel, &#39;Preview&#39;)) or .//*[(contains(concat(&#39; &#39;, 
@class, &#39; &#39;), &#39; icon &#39;) or name() = &#39;img&#39;) and (contains(./@alt, &#39;Preview&#39;) or contains(./@title, &#39;Preview&#39;))])] | (//html/.//tr[contains(normalize-space(.), &#39;All-or-nothing-001&#39;) and not
(.//tr[contains(normalize-space(.), &#39;All-or-nothing-001&#39;)])])[1]/.//*
        [translate(./@role, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;link&#39;][((./@id = &#39;Preview&#39; or contains(./@value, &#39;Preview&#39;)) or contains(./@title, &#39;Preview&#39;) or contains
(normalize-space(string(.)), &#39;Preview&#39;))])[1]&quot; xpath node is not visible and it should be visible (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>137 Scenario: Student completes public questionnaire instances in two different courses and sees each response in the proper course # /var/www/html/mod/questionnaire/tests/behat/public_questionnaire.feature:69
      And I follow &quot;Add an activity or resource&quot;                                                                                    # /var/www/html/mod/questionnaire/tests/behat/public_questionnaire.feature:44
        Link matching locator &quot;Add an activity or resource&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>138 Scenario: Teacher should not see responses for a questionnaire using a public instance # /var/www/html/mod/questionnaire/tests/behat/public_questionnaire_teacher.feature:91
      And I follow &quot;Add an activity or resource&quot;                                           # /var/www/html/mod/questionnaire/tests/behat/public_questionnaire_teacher.feature:45
        Link matching locator &quot;Add an activity or resource&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>139 Scenario: A user follows vote to increase heat                # /var/www/html/mod/hotquestion/tests/behat/questions_vote.feature:28
      And I click on &quot;Vote&quot; &quot;link&quot; in the &quot;Anonymous&quot; &quot;table_row&quot; # /var/www/html/mod/hotquestion/tests/behat/questions_vote.feature:44
        Link matching locator &quot;Vote&quot; in the &quot;Anonymous&quot; &quot;table_row&quot;&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>149 Scenario: User can select and restore all missing models                              # /var/www/html/admin/tool/analytics/tests/behat/restoredefault.feature:73
      And I click on &quot;Delete&quot; &quot;link&quot; in the &quot;Courses at risk of not starting&quot; &quot;table_row&quot; # /var/www/html/admin/tool/analytics/tests/behat/restoredefault.feature:78
        The &quot;((//html/.//tr[contains(normalize-space(.), &#39;Courses at risk of not starting&#39;) and not(.//tr[contains(normalize-space(.), &#39;Courses at risk of not starting&#39;)])])[1]/.//a
        [./@href][((./@id = &#39;Delete&#39; or contains(normalize-space(string(.)), &#39;Delete&#39;) or contains(./@title, &#39;Delete&#39;) or contains(./@rel, &#39;Delete&#39;)) or .//*[(contains(concat(&#39; &#39;, @class, &#39; &#39;), 
&#39; icon &#39;) or name() = &#39;img&#39;) and (contains(./@alt, &#39;Delete&#39;) or contains(./@title, &#39;Delete&#39;))])] | (//html/.//tr[contains(normalize-space(.), &#39;Courses at risk of not starting&#39;) and not
(.//tr[contains(normalize-space(.), &#39;Courses at risk of not starting&#39;)])])[1]/.//*
        [translate(./@role, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;link&#39;][((./@id = &#39;Delete&#39; or contains(./@value, &#39;Delete&#39;)) or contains(./@title, &#39;Delete&#39;) or
 contains(normalize-space(string(.)), &#39;Delete&#39;))])[1]&quot; xpath node is not visible and it should be visible (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><pre><code>153 Scenario: Load changes and revert them # /var/www/html/blocks/admin_presets/tests/behat/revert_changes.feature:8
      And I follow &quot;Turn editing on&quot;       # /var/www/html/blocks/admin_presets/tests/behat/revert_changes.feature:11
        The &quot;(//html/.//a
        [./@href][((./@id = &#39;Turn editing on&#39; or contains(normalize-space(string(.)), &#39;Turn editing on&#39;) or contains(./@title, &#39;Turn editing on&#39;) or contains(./@rel, &#39;Turn editing on&#39;)) or
 .//*[(contains(concat(&#39; &#39;, @class, &#39; &#39;), &#39; icon &#39;) or name() = &#39;img&#39;) and (contains(./@alt, &#39;Turn editing on&#39;) or contains(./@title, &#39;Turn editing on&#39;))])] | //html/.//*
        [translate(./@role, &#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;, &#39;abcdefghijklmnopqrstuvwxyz&#39;) = &#39;link&#39;][((./@id = &#39;Turn editing on&#39; or contains(./@value, &#39;Turn editing on&#39;)) or contains(./@title, 
&#39;Turn editing on&#39;) or contains(normalize-space(string(.)), &#39;Turn editing on&#39;))])[1]&quot; xpath node is not visible and it should be visible (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>YES</p>
</div></td>
<td><p><a href="https://github.com/ehsan42/moodle/commit/1c47ad1f00a55ad622d6caf9634a62a8d0b72927" class="uri">https://github.com/ehsan42/moodle/commit/1c47ad1f00a55ad622d6caf9634a62a8d0b72927</a></p>
<p><br />
</p>
<p>originla test is fine, upated so passes for us as we also have turntiin assignment</p></td>
<td><pre><code>156 Scenario: Search results are returned if the search query matches any activity names # /var/www/html/course/tests/behat/search_recommended_activities.feature:5
      Then I should see &quot;Search results: 1&quot;                                              # /var/www/html/course/tests/behat/search_recommended_activities.feature:11
        &quot;Search results: 1&quot; text was not found in the page (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><div class="content-wrapper">
<p>YES</p>
</div></td>
<td><br />
</td>
<td><pre><code>201 Scenario: An admin follows export to csv toolbutton to export all site questions # /var/www/html/mod/hotquestion/tests/behat/toolbar_export_to_csv_admin.feature:32
      And following &quot;Export to .csv&quot; should download between &quot;1300&quot; and &quot;1400&quot; bytes # /var/www/html/mod/hotquestion/tests/behat/toolbar_export_to_csv_admin.feature:160
        Downloaded data was 1490 bytes, expecting between 1300 and 1400 (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>YES</p>
</div></td>
<td><br />
</td>
<td><pre><code>202 Scenario: A teacher follows export to csv toolbutton to export questions       # /var/www/html/mod/hotquestion/tests/behat/toolbar_export_to_csv_teacher.feature:32
      And following &quot;Export to .csv&quot; should download between &quot;700&quot; and &quot;800&quot; bytes # /var/www/html/mod/hotquestion/tests/behat/toolbar_export_to_csv_teacher.feature:160
        Downloaded data was 805 bytes, expecting between 700 and 800 (Behat\Mink\Exception\ExpectationException)</code></pre></td>
</tr>
<tr class="even">
<td><div class="content-wrapper">
<p>NOT REQUIRED</p>
</div></td>
<td>ran test again and passed fine</td>
<td><pre><code>203 Scenario: Several tutors add slots, they can be seen only by relevant users # /var/www/html/mod/scheduler/tests/behat/tutorappointments.feature:108
      Then &quot;Cancel booking&quot; &quot;button&quot; should exist                               # /var/www/html/mod/scheduler/tests/behat/tutorappointments.feature:148
        Button matching locator &quot;Cancel booking&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</code></pre></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p>NO</p>
</div></td>
<td><p>no &lt;footer&lt;/footer&gt; region found during test</p></td>
<td><pre><code>207</code></pre>
<p>001 Scenario: Visitors should not see a feedback link on footer when they are not logged in # /var/www/html/lib/tests/behat/userfeedback.feature:19</p>
<p>Then I should not see &quot;Give feedback&quot; in the &quot;page-footer&quot; &quot;region&quot; # /var/www/html/lib/tests/behat/userfeedback.feature:23</p>
<p>Region matching locator &quot;page-footer&quot; not found. (Behat\Mink\Exception\ElementNotFoundException)</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>


