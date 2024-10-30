# Increase the default forum attachment size

The default is 50k. It has now been increased to 2mb. This has been implemented in moodle 1.93 on pp and dev.

modify /mod/forum/mod\_form.php around line 55

Add $mform-&gt;setDefault('maxbytes', 2097152);

## Comments:

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Looks like this is no longer needed - the admin page for the forums have a drop down for max attachment size</p>
<div class="smallfont" align="left" style="color: #666666; width: 98%; margin-bottom: 10px;">
<img src="images/icons/contenttypes/comment_16.png" width="16" height="16" /> Posted by ccaapcb at Jul 06, 2009 14:35
</div></td>
</tr>
</tbody>
</table>


