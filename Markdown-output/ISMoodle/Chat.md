# Chat

We have had users report problems with using the Moodle chat. The chat in question is here: http://moodle.ucl.ac.uk/mod/chat/report.php?id=28764

This issue is being tracked in Remedy (**ISH0104183**). 

See the current chat settings in Moodle: [moodle-chat1.gif](/download/attachments/5607675/moodle-chat1.gif?version=1&modificationDate=1226493474000&api=v2) (as on 12/11/2008)

# Overview of Problems

This morning Peter Delves ran a large group (~50 student) online tutorial via Moodle and experienced problems with response times. They found the following issues:

1. large delays between typing and text appearing on screen

2. The text typed by the students keeps 'jumping' upwards off the page as other students subsequently type questions. You scroll back to the question you are trying to look at, but then it jumps back upwards off the page again. Every time the page refreshes (the refresh rate is user definable) the page scrolls to the last message. This would be better if the page was only refreshed if a new message was posted.

3. The box into which one types the response (answer) to the students is very small (only space for 5 or 6 words), therefore you have to scroll back to check what you have typed before you can press Return to send the message.

# Recommendations

-   **Make the chat box bigger** - at least 3 lines to allow users to see entire message before sending without having to scroll.This can be achieved by using a &lt;textarea&gt; field instead of an &lt;input&gt; field. However because pressing return inserts a new line in a textarea,
    the message can't be submitted using the return. This is why I have added a submit button. It's a pain for users to click submit so it might be possible to add a listener
    to the textarea and change the behavious of the return key. I've not investigated this yet.

    ***If you're not using the chat daemon the following files need to be modified:***
    Modify line 71 in mod/chat/gui\_header.js/index.php: &lt;frameset rows="0,0,\*,100" border="0" framespacing="no" frameborder="no" marginwidth="2" marginheight="1"&gt;

    Modify  line 55 in mod/chat/gui\_header.js/chatinput.php to add a textarea instead of an &lt;input type=text&gt;:

    &lt;textarea id="input\_chat\_message" name="chat\_message" value="" rows="2" cols="30"&gt;&lt;/textarea&gt;

    Add a submit button to  mod/chat/gui\_header.js/chatinput.php after the help icon in the same form as textarea:&lt;input type="submit" name="name" value="Submit"/&gt;

    ***If you are using the chat daemon the following files need changing:***

     Modify line 66 in mod/chat/gui\_sockets/index.php: &lt;frameset rows="0,0,\*,60" border="0" framespacing="no" frameborder="no" marginwidth="2" marginheight="1"&gt;

    Modify  line 66 in mod/chat/gui\_sockets/chatinput.php to add a textarea instead of an &lt;input type=text&gt;:

    &lt;textarea id="input\_chat\_message" name="chat\_message" value="" rows="2" cols="30"&gt;&lt;/textarea&gt;

    Add a submit button to  mod/chat/gui\_sockets/chatinput.php after the help icon in the same form as textarea:&lt;input type="submit" name="name" value="Submit"/&gt;

-   **Prevent the messages from scrolling to the last message**

 In Moodle 1.93 when you are using chat in normal mode and not daemon mode, there is a checkbox that when unchecked, prevents the messages from autoscrolling. This does not seem to work in daemon mode. To implement this in 1.9 the following files need to be modified:

/moodle/lang/en\_utf8/chat.php insert the following at about line 4  $string\['autoscroll'\] = 'Auto Scroll';

\[/moodle/mod/chat/gui\_header\_js/chatinput.php\]; insert at about line 58 &lt;input type="checkbox" id="auto" size="50" value="" checked /&gt;&lt;?php echo get\_string('autoscroll', 'chat');?&gt;
\[/moodle/mod/chat/gui\_header\_js/jsupdate.php\] replace parent.msg.scroll(1,5000000); at about line 139 with

if(parent.msg && parent.input.document.getElementById('auto').checked)

Unknown macro: {         parent.msg.scroll(1,5000000);         }

-   **Investigate the** **use of the 'stream' setting** as opposed to 'keep alive' in the Moodle module admin (if our server supports it) It is supposed to be better for server load (see [moodle-chat1.gif](/download/attachments/5607675/moodle-chat1.gif?version=1&modificationDate=1226493474000&api=v2)) Doesn't seem to work very well. When you use this setting the sometimes the posted messages don't display immediately and then a batch of them get displayed all at once. However it does fix     the problem of the message area scrolling to the last message all the time.\* Investigate **alternative Moodle chat modules** (Arsc Chat, Skype etc.) as the Moodle chat is renowned for being not very user friendly - especially with many users.The installation of these moodle modules still require that Skype be installed on the user's pc. Not feasable in wts.
-   Investigate **alternative technologies outside of Moodle** (Messenger / Skype etc.)This is possible by adding a link to the messenger as a resource in the course
-   **Using a daemon** is definitely worth a try. see http://docs.moodle.org/en/Chat\_settings
    Sockets need to be enabled. Looking at phpinfo() it doesn't look like they are at the moment but should just be a case of removing ';' from ;extension=php\_sockets.dll in php.ini. Easy to set up.

    I installed this locally. The response time was a lot faster but as the page is being refreshed continuously you can't scroll up to see the first message.

-   *Rachel:* At the moment the chat window is set to refresh every 5 seconds so we could think about decreasing this to help the server cope. Is it worth changing this (to maybe 10 second refresh?) now as the user said it was slow when they did the last session. Or is 10 second refresh too slow?
    *Austin:* I don't think it will make much of a difference. The daemon is proportionally a light load on the server, and the hit in performance for the user is not worth it. Best to stick with 5 sec.

<!-- -->

-   Inform Peter Delves when changes have been made to the system.

> ----- Original Message -----
> Subject:     Moodle chat problems
> Date:     Fri, 14 Nov 2008 09:57:48 +0000
> From:     Jessica Gramp &lt;j.gramp@ucl.ac.uk&gt;
> Reply-To:     ltss@ucl.ac.uk
> To:     p.delves@ucl.ac.uk
> CC:     'is-ltso' &lt;is-ltso@ucl.ac.uk&gt;, is-appsdev-section@ucl.ac.uk
>
> Dear Peter,
>
> Thank you for letting us know about the problems you experienced with the Moodle chat.
>
> LTSS have investigated these issues along with the Applications Development team who administer Moodle:
>
> 1. The text typed by the students keeps 'jumping' upwards off the page as other students subsequently type questions. You scroll back to the question you are trying to look at, but then it jumps back upwards off the page again.
>
> 2. The box into which one types the response (answer) to the students is very small (only space for 5 or 6 words), therefore you have to scroll back to check what you have typed before you can press Return to send the message.
>
> 3. Large delays between typing and text appearing on screen.
>
> Unfortunately we have not discovered a quick fix for these problems and will need to conduct thorough testing of any changes we make to the system before they can be released. Therefore, these fixes are unlikely to be in place in time for your upcoming chat sessions. We will let you know when the changes have been applied.
>
> If you would like us to test any other Moodle functionality before you use it in your lectures we are happy to do so, with at least six weeks notice. This will give us time to make changes if necessary.
>
> Kind regards,
> Jess
> LTSS

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [moodle-chat1.gif](attachments/5607675/5865627.gif) (image/gif)

## Comments:

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>should we look into a server daemon?</p>
<div class="smallfont" align="left" style="color: #666666; width: 98%; margin-bottom: 10px;">
<img src="images/icons/contenttypes/comment_16.png" width="16" height="16" /> Posted by ccaamje at Nov 12, 2008 13:16
</div></td>
</tr>
</tbody>
</table>


