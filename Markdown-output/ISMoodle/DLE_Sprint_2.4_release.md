# DLE Sprint 2.4 release

Release date: Thursday 14th March 2024, between midnight-4am

Release Lead: AS

Deadline to add changes to this release: Friday 8th March 2024 5pm

Deadline to handover release to Catalyst: Monday 11th March 2024 5pm

Must sign-off staging deployment by: Tuesday 12th March 2023 5pm

1) Changes that will need to be included in the release

-    <https://github.com/ucl-isd/moodle-local_sitsgradepush/pull/45>
-    Extend plugins
-   theme\_ucl
-   https://github.com/uclmoodle/moodle-report\_myfeedback/pull/55
-   https://github.com/ucl-isd/moodle-local\_courserollover/pull/39

2) Make sure new plugins are disabled:

Plugin type

plugin name

Desired state

Reason

[moodle.ucl.ac.uk/admin/settings.php?section=manageauths](http://moodle.ucl.ac.uk/admin/settings.php?section=manageauths)

CourseMerchant SSO

Off

UCL eXtend only

[moodle.ucl.ac.uk/admin/settings.php?section=local\_coursemerchantrpc\_settings](http://moodle.ucl.ac.uk/admin/settings.php?section=local_coursemerchantrpc_settings)

local\_coursemerchantrpc | enabled

Off

UCL eXtend only

[moodle.ucl.ac.uk/admin/modules.php](http://moodle.ucl.ac.uk/admin/modules.php)

VerifyEd

FacetoFace

Off

Off

UCL eXtend only

3) New Config changes:

<table>
<thead>
<tr class="header">
<th><p>Setting</p></th>
<th><p>Default</p></th>
<th><div class="content-wrapper">
<p>Change to</p>
</div></th>
<th><div class="content-wrapper">
<p>Reason</p>
</div></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>local_courserollover | enable_moduleid_46</td>
<td>Yes</td>
<td>No</td>
<td>New disabled plugin</td>
</tr>
<tr class="even">
<td>local_courserollover | enable_moduleid_47</td>
<td>Yes</td>
<td>No</td>
<td>new disabled plugin</td>
</tr>
<tr class="odd">
<td>facetoface | fromaddress</td>
<td>noreply@example.com</td>
<td><a href="mailto:noreply@ucl.ac.uk">noreply@ucl.ac.uk</a></td>
<td>good practice even if plugin due to remain disabled</td>
</tr>
<tr class="even">
<td><p>theme_ucl | footer</p>
<p>(moodle.ucl.ac.uk/admin/settings.php?section=themesettingucl)</p></td>
<td><br />
</td>
<td>&lt;div class=&quot;col-lg-4&quot;&gt;<br />
  &lt;h3&gt;Help &amp;amp; support&lt;/h3&gt;<br />
  &lt;ul class=&quot;list-unstyled&quot;&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://moodle-snapshot.ucl.ac.uk/" class="uri">https://moodle-snapshot.ucl.ac.uk/</a>&quot; target=&quot;_blank&quot;&gt;Moodle snapshots&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://moodle.ucl.ac.uk/course/view.php?id=12159" class="uri">https://moodle.ucl.ac.uk/course/view.php?id=12159</a>&quot; target=&quot;_blank&quot;&gt;Moodle user group&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://ucldata.atlassian.net/wiki/spaces/MoodleResourceCentre/pages/31863953/M30+-+Preparing+your+Moodle+course+for+the+next+Academic+Year" class="uri">https://ucldata.atlassian.net/wiki/spaces/MoodleResourceCentre/pages/31863953/M30+-+Preparing+your+Moodle+course+for+the+next+Academic+Year</a>&quot; target=&quot;_blank&quot;&gt;Request a Moodle course&lt;/a&gt;<br />
    &lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://ucldata.atlassian.net/wiki/spaces/MoodleResourceCentre/overview" class="uri">https://ucldata.atlassian.net/wiki/spaces/MoodleResourceCentre/overview</a>&quot; target=&quot;_blank&quot;&gt;Staff guide&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://ucldata.atlassian.net/wiki/spaces/LecturecastResourceCentre/overview" class="uri">https://ucldata.atlassian.net/wiki/spaces/LecturecastResourceCentre/overview</a>&quot; target=&quot;_blank&quot;&gt;Staff Lecturecast guide&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://ucldata.atlassian.net/wiki/spaces/ELearningStudentSupport/pages/64716801/Moodle" class="uri">https://ucldata.atlassian.net/wiki/spaces/ELearningStudentSupport/pages/64716801/Moodle</a>&quot; target=&quot;_blank&quot;&gt;Student guide&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;/course/view.php?id=34&quot;&gt;Turnitin similarity checker&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;/course/view.php?id=39060&quot;&gt; Understanding academic<br />
        integrity&lt;/a&gt;&lt;/li&gt;<br />
  &lt;/ul&gt;<br />
&lt;/div&gt;<br />
&lt;div class=&quot;col-lg-4&quot;&gt;<br />
  &lt;h3&gt;UCL Services&lt;/h3&gt;<br />
  &lt;ul class=&quot;list-unstyled&quot;&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://www.ucl.ac.uk/isd/services/learning-teaching/learning-teaching-services/digital-skills-development" class="uri">https://www.ucl.ac.uk/isd/services/learning-teaching/learning-teaching-services/digital-skills-development</a>&quot; target=&quot;_blank&quot;&gt;Digital skills development&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://www.ucl.ac.uk/isd/linkedin-learning" class="uri">https://www.ucl.ac.uk/isd/linkedin-learning</a>&quot; target=&quot;_blank&quot;&gt;&lt;span class=&quot;badge badge-warning text-dark mr-2&quot;&gt;New&lt;/span&gt;LinkedIn<br />
        learning&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="http://outlook.com/live.ucl.ac.uk" class="uri">http://outlook.com/live.ucl.ac.uk</a>&quot; target=&quot;_blank&quot;&gt;Microsoft Outlook email (Live@UCL)&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="http://www.ucl.ac.uk/portico" class="uri">http://www.ucl.ac.uk/portico</a>&quot; target=&quot;_blank&quot;&gt;Portico student information<br />
        service&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://qualtrics.ucl.ac.uk/jfe/form/SV_6h7p60YBIVGS0VE?Q_EED=eyJTZXJ2aWNlTmFtZSI6Ik1vb2RsZSJ9" class="uri">https://qualtrics.ucl.ac.uk/jfe/form/SV_6h7p60YBIVGS0VE?Q_EED=eyJTZXJ2aWNlTmFtZSI6Ik1vb2RsZSJ9</a>&quot; target=&quot;_blank&quot;&gt;Feedback for UCL Moodle&lt;/a&gt;<br />
    &lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://ucl.my.salesforce.com/apex/bmcservicedesk__ssredirect?type=sr&amp;id=a3S0J0000026LLoUAM">https://ucl.my.salesforce.com/apex/bmcservicedesk__ssredirect?type=sr&amp;amp;id=a3S0J0000026LLoUAM</a>&quot; target=&quot;_blank&quot;&gt;Online exam notification<br />
        form&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://www.ucl.ac.uk/library" class="uri">https://www.ucl.ac.uk/library</a>&quot; target=&quot;_blank&quot;&gt;UCL Library&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://library-guides.ucl.ac.uk/skills" class="uri">https://library-guides.ucl.ac.uk/skills</a>&quot; target=&quot;_blank&quot;&gt;UCL Library - Library<br />
        skills&lt;/a&gt;&lt;/li&gt;<br />
  &lt;/ul&gt;<br />
&lt;/div&gt;<br />
&lt;div class=&quot;col-lg-4&quot;&gt;<br />
  &lt;h3&gt;Policy&lt;/h3&gt;<br />
  &lt;ul class=&quot;list-unstyled&quot;&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://www.ucl.ac.uk/accessibility/moodle-accessibility-statement" class="uri">https://www.ucl.ac.uk/accessibility/moodle-accessibility-statement</a>&quot; target=&quot;_blank&quot;&gt;Accessibility statement&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://www.ucl.ac.uk/legal-services/disclaimer" class="uri">https://www.ucl.ac.uk/legal-services/disclaimer</a>&quot; target=&quot;_blank&quot;&gt;Disclaimer&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://www.ucl.ac.uk/foi" class="uri">https://www.ucl.ac.uk/foi</a>&quot; target=&quot;_blank&quot;&gt;Freedom of information&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://www.ucl.ac.uk/legal-services/privacy" class="uri">https://www.ucl.ac.uk/legal-services/privacy</a>&quot; target=&quot;_blank&quot;&gt;Privacy and cookies&lt;/a&gt;&lt;/li&gt;<br />
    &lt;li&gt;&lt;a href=&quot;<a href="https://www.ucl.ac.uk/procurement/suppliers/slavery-stmt" class="uri">https://www.ucl.ac.uk/procurement/suppliers/slavery-stmt</a>&quot; target=&quot;_blank&quot;&gt;Slavery statement&lt;/a&gt;&lt;/li&gt;<br />
  &lt;/ul&gt;<br />
&lt;/div&gt;</td>
<td>New Theme footer</td>
</tr>
</tbody>
</table>

4) Enable new theme

[moodle.ucl.ac.uk/theme/index.php](http://moodle.ucl.ac.uk/theme/index.php) → Select UCL

5) Marks transfer assessment types expansion

[moodle.ucl.ac.uk/admin/settings.php?section=local\_sitsgradepush\_settings](http://moodle.ucl.ac.uk/admin/settings.php?section=local_sitsgradepush_settings)

| Setting                                   | Current                                                                                                                                                                | Change to                                                                                                                                                                                      | Reason                                                                                       |
|-------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| local\_sitsgradepush | moodle\_ast\_codes | BC02, CN01, EC03, EC04, ED03, ED04, FN01, GD01, GN01, GN02, GN03, HC01, HD01, HD02, HD03, HD04, HD05, LC01, MD01, ND01, RD01, RN01, RN02, RN03, SD01, TC01, ZD01, ZN01 | BC02, CN01, EC03, EC04, ED03, ED04, FN01, GD01, GN01, GN02, GN03, HC01, HD01, HD02, HD03, HD04, HD05, LC01, MD01, ND01, OD01, OD02, OE01, RD01, RN01, RN02, RN03, SD01, TC01, TD01, ZD01, ZN01 | Add: OD01, OD02, OE01, TD01                                                                  
                                                                                                  
    Enable Orals recorded in Moodle via Moodle Assignments and TD01 which is a valid type to use  |
| local\_sitsgradepush | support\_page\_url | https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=306185189                                                                                                          | <https://ucldata.atlassian.net/wiki/spaces/MoodleResourceCentre/pages/31864493/Miniguide+Marks+Transfer+Wizard+Pilot+Phase+2>                                                                  | avoids redirects                                                                             |

6)

<https://moodle.ucl.ac.uk/my/indexsys.php>

Remove blocks:

-   News
-   Course Search

Add an HTML block

``` java
<div class="position-relative">
  <div class="mb-3" style="background-image: url('https://moodle.ucl.ac.uk/draftfile.php/1096115/user/draft/767589184/similarity-edtech-ecosystem.png');
                            height: 150px;
                            background-size: cover;
                            background-position: top;">
            
                    <div class="text-right pt-3">
                        <div class="inline bg-primary p-3">
                            <i class="fa fa-arrow-right text-white" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            
                <div>
                    <a href="https://moodle.ucl.ac.uk/course/view.php?id=34" class="h5 d-block stretched-link">Turnitin similarity checker</a>
                    <p>Check your own work confidentially using the Turnitin similarity tool on UCL Moodle.</p>
                </div>
  </div>
```

We are enabling qtype\_ordering since it is being added to core anyway - <https://tracker.moodle.org/browse/MDL-79863>

Release Notes:

**Minor fixes**

-   

-   


