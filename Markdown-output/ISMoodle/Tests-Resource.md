# Tests-Resource

-   [\[RES001T\]: Testing Plain Text Resource](#TestsResource-%5BRES001T%5D:TestingPlainTextResource)
-   [\[RES002T\]: Testing Markdown Format Text Resource](#TestsResource-%5BRES002T%5D:TestingMarkdownFormatTextResource)
-   [\[RES003T\]: Testing Web Page Resource](#TestsResource-%5BRES003T%5D:TestingWebPageResource)
-   [\[RES004T\]: Testing File Resource](#TestsResource-%5BRES004T%5D:TestingFileResource)

##### \[RES001T\]: Testing Plain Text Resource

------------------------------------------------------------------------

1.  Open ‘**A Text Page**’ Resource page and you should see the text box just like the following:
2.  Click the **Update this Resource** button on the top right corner page.
3.  You should get a setting page where you can modify the text resource. Play around with it, add some text (or smilies) in the **Full Text** box.
4.  Click **Save Changes** and you should get the updated page, with the last modified date has been changed to today’s date.

##### \[RES002T\]: Testing Markdown Format Text Resource

------------------------------------------------------------------------

1.  Open **A Text Page (markdown formatting)** Resource page and you should see the text box below
2.  Click the Update this Resource button on the top right corner page.
3.  You should get a setting page where you can modify the text resource. The difference with the previous resource is formatting of the text. The formatting of this resource is Markdown Format. Markdown format tries to make it easy as possible to type well-formatted XHTML pages using nothing but text written more or less like you would write an email. You can click the help button <http://docs.moodle.org/dev/File:Help.gif> to get more information about Markdown Format.
4.  Add the following text into the text box:

<!-- -->

1.  Emphasizing Text
    **italic** -&gt; italic
    \***bold**\* -&gt; bold
    \*\***bold italic**\*\* -&gt; bold italic

Emphasis can be added to single words, a sequence of words, or even parts of words:

a **single** word -&gt; a single word
\*\***a sequence of words**\*\* -&gt; a sequence of words
in\***distinguish**\*able -&gt; indistinguishable

1.  Headings

<!-- -->

1.  section heading
    1.  sub-section heading
        1.  sub-sub-section heading

section heading
===============

subsection heading
------------------

1.  Lists

<!-- -->

1.  1.  bullet point lists

-   first point
-   second point
-   third point

1.  1.  numbered lists

-   top level bullet one
-   sub-bullet
-   sub-bullet 2
-   top level bullet two
    1. numbered point one
    1. nested numbered point
    2. numbered point two

1.  quoted paragraphs

&gt; This is a quoted paragraph
&gt; spread over two lines

1.  web links
    An example link(<http://example.com/> "Optional Title") in a sentence.

<!-- -->

1.  images
     !Google logo(<http://www.google.com/images/logo.gif> "The Google logo"

5. Click **Save Changes** and you should get the updated page, with the last modified date has been changed to today’s date with an added text as follows:

6. Now, as the last test, click the **Update this Resource** button again. In the **Window** setting, choose the **New Window Display** this resource in a new popup window. **Un-tick** the allow window to be resized (only works in Internet Explorer)

7. Click **Save Changes**.

8. You should be directed to the resource page, and you should see a link **A Text Page (markdown formatting)** that will pop-up a new window when you click it, in case the pop-up did not appear automatically.

##### \[RES003T\]: Testing Web Page Resource

------------------------------------------------------------------------

1.  Open the ‘A Web Page’ Resource page and you should see the text box below:
2.  Now, click the button Update this Resource. You should see a similar configuration-setting page.
3.  Add the following HTML and simple Javascript to the text box:

**Heading of your paragraph.**

This is where you enter the text of your document. This is how to write a link:
Moodle.org Home Page

If you can see the text below saying 'Hello world!' then the javascript works.

4. Click the **Save Changes** button 5. You should see the page gets updated as below:

6. Now, as the last test, click the **Update this Resource** button again. In the **Window** setting, choose the **New Window Display** this resource in a new popup window. **Un-tick** the allow window to be resized (only works in Internet Explorer) 7. **Click Save Changes**. 8. You should be directed to the resource page, and you should see a link **A Web Page** that will pop-up a new window when you click it, in case the pop-up did not appear automatically.

##### \[RES004T\]: Testing File Resource

------------------------------------------------------------------------

1.  Click the **Turn editing on** button on the top right corner window.
2.  And go to the **Resources** topic, click the **Add a resource…** dropdown box and choose **Link to a file or a website**.
3.  A form to add new resource should appear, in the **name** text-box, type **An Office file** and in the **summary** text-box, type ‘**This is an office document file**’.
4.  On the **Location:** click the **Choose or upload a file**. A new window listing **file list** should appear, click the **Media\_examples** folder. You should get couple of files with different format, such as Powerpoint, pdf, and mp3 file.
5.  Choose the powerpoint file by clicking the **choose** hyperlink.
6.  Leave the other options as they were. And click **Save changes**.
7.  Your browser should be re-directed to download the file directly. When you go to the **Moodle Features main course page**, you should see the resource that you have just added, with an icon that looks like this [File:Powerpoint.gif](http://docs.moodle.org/dev/index.php?title=Special:Upload&wpDestFile=Powerpoint.gif)
8.  Every resources are assigned to different icons. Repeat all the steps in RES004TA to add different type of resources. Below are types of resources with their icons: \* An image file  : File:Image.gif

-   A MP3 file  : File:Audio.gif
-   A flash file  : File:Flash.gif
-   A windows media file : File:Avi.gif
-   A PDF file  : File:Pdf.gif

