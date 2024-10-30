# quiz clock size

Users complained the clock size in a timed quiz is too large and obscures quiz text.

See SCP 3623: <http://www.ucl.ac.uk/~ccaascp/paper.cgi?authors=ccaarfg&category=SCP&number=3623&change=adjust%20clock%20size%20in%20quiz%20on%20moodle%2Da%20%20&do=viewpaper>

Edit files

-   jstimer.php,
-   timer.js,
-   styles.php

in the /data/apache/htdocs/moodle/mod/quiz folder

This worked for Moodle 1.8, but in Moodle 1.9 some of these files don't exist to be edited. This needs further investigation.

At present it works OK in Firefox, but displays as too large a clock in IE. Needs further testing. 

Moodle 1.9x

JM - All you need to do for 1.9x is modify 1 file.

Edit the style rule for \#timer (around line 3779) in /theme/standard/styles\_layout.css as follows:

\#mod-quiz-attempt \#timer {
  position:absolute;
  right:10px
}

 

Update; Amanda Cain from Biosciences raises this issue:

>  hello
>
> Been having issues with the clock which is displayed within a timed quiz.
> It is in a stupid position and obscures some of the questions. You can
> sort of get around this by scrolling up and down. yesterday we ran a quiz
> where I had 4 questions per page and used a secure window. In this set up
> the students could not scroll at all and I had to remove the secure window
> otherwise they would not have been able to read 25% of the questions. It
> seems silly to have th clock over the left hand side of the screen when
> the right hand side is often completely blank.
>
> I know we raised this question last year and someone managed to shrink the
> clock for us but the problem seems worth this year. Can you have another
> look at this and see if the clock can be moved at all?
>
> many thanks
>
> Amanda

The code to move it is to add a right float div around the clock in **moodle\\mod\\quiz\\jstimer.php**

``` java
<div style="float: right;"><table class="generalbox" border="0" cellpadding="0" cellspacing="0" style="width:150px">
<tr>
    <td class="generalboxcontent" bgcolor="#ffffff" width="100%">
    <table class="generaltable" border="0" width="150" cellspacing="0" cellpadding="0">
    <tr>
        <th class="generaltableheader" width="100%" scope="col"><?php print_string("timeleft","quiz");?></th>
    </tr>
    <tr>
        <td id="QuizTimer" class="generaltablecell" align="center" width="100%">
        <form id="clock"><div><input onfocus="blur()" type="text" id="time"
        style="background-color: transparent; border: none; width: 70%; font-family: sans-serif; font-size: 14pt; font-weight: bold; text-align: center;" />
        </div>
        </form>
        </td>
    </tr>
    </table>
    </td>
</tr>
</table></div>
```


