# default values for new courses

See also **SCP 3819**

In /data/apache/htdocs/moodle/**course/edit\_form.php**:

On line 109, change:

``` java
$mform->setDefault('format', 'weeks');
```

to:

``` java
$mform->setDefault('format', 'topics');
```

On line 299, change:

``` java
$mform->setDefault('visible', 1);
```

to:

``` java
$mform->setDefault('visible', 0);
```

*Pete  - July 2009 - Note that Moodle-195 has a new Course Default settings page - as yet cannot set default to be none visible but removes need for format hack*

## Comments:

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>I have tested this and can confirm it works perfectly.</p>
<div class="smallfont" align="left" style="color: #666666; width: 98%; margin-bottom: 10px;">
<img src="images/icons/contenttypes/comment_16.png" width="16" height="16" /> Posted by ccaamje at Oct 29, 2008 16:48
</div></td>
</tr>
</tbody>
</table>


