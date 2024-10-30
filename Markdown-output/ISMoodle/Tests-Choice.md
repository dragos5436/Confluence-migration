# Tests-Choice

-   [\[CHO001T\] Add a choice](#TestsChoice-%5BCHO001T%5DAddachoice)
-   [\[CHO002T\] View choices](#TestsChoice-%5BCHO002T%5DViewchoices)
-   [\[CHO003T\] Update the choice](#TestsChoice-%5BCHO003T%5DUpdatethechoice)
-   [\[CHO004TS\] Change the display of choice results](#TestsChoice-%5BCHO004TS%5DChangethedisplayofchoiceresults)
-   [\[CHO005T\] Show unanswered column](#TestsChoice-%5BCHO005T%5DShowunansweredcolumn)
-   [\[CHO006T\] Allow choice to be updated](#TestsChoice-%5BCHO006T%5DAllowchoicetobeupdated)
-   [\[CHO007TS\] Hide results from students](#TestsChoice-%5BCHO007TS%5DHideresultsfromstudents)
-   [\[CHO008TS\] Shows results to students](#TestsChoice-%5BCHO008TS%5DShowsresultstostudents)
-   [\[CHO009TS\] Show results to students after they answer](#TestsChoice-%5BCHO009TS%5DShowresultstostudentsaftertheyanswer)
-   [\[CHO010TS\] Restrict the choice](#TestsChoice-%5BCHO010TS%5DRestrictthechoice)
-   [\[CHO011TS\] Hide results from students](#TestsChoice-%5BCHO011TS%5DHideresultsfromstudents)
-   [\[CHO012TS\] Hide from students](#TestsChoice-%5BCHO012TS%5DHidefromstudents)
-   [\[CHO013T\] View a choice with non anonymous results](#TestsChoice-%5BCHO013T%5DViewachoicewithnonanonymousresults)

##### \[CHO001T\] Add a choice

------------------------------------------------------------------------

1.  Login as '''tutor''' (this will be referred to as the *admin browser* from now on)
2.  Add a choice with anonymous results.
3.  Save and display.
4.  You should get a page with a question along with the choice of answers. Choose one of the answer and click Submit
5.  You should be presented with a page that shows the response that you have just put, but you will not see any name who gave the answer.

##### \[CHO002T\] View choices

------------------------------------------------------------------------

1.  You should see the link ‘View 1 responses’ on the top left corner. Click that link.
2.  You should see a table that shows the answers along with users correspond to that answers.

##### \[CHO003T\] Update the choice

------------------------------------------------------------------------

1.  On the same page, there is a drop down.
2.  choose a users &gt; click on the drop down &gt; choose a different option

##### \[CHO004TS\] Change the display of choice results

------------------------------------------------------------------------

1.  Click choice edit settings
2.  Change display mode for the option to 'vertically'
3.  Student options should not appear vertically

##### \[CHO005T\] Show unanswered column 

------------------------------------------------------------------------

1.  Go to the admin browser, click the Update this choice and change the option of Show column for unanswered to Yes.
2.  Click Save Changes.
3.  On the result page, you should get a new extra column that contains a list of participants who have not participated the choice.

##### \[CHO006T\] Allow choice to be updated

------------------------------------------------------------------------

1.  Go to the admin browser, click the Update this choice link and change the option of Allow choice to be updated to Yes.
2.  Click Save Changes.
3.  On the next page, you should get the result page, with the question at the top. The difference is that you could put a new response and the result would be updated once you click Save my choice.

##### \[CHO007TS\] Hide results from students

------------------------------------------------------------------------

1.  Go to the admin browser, click the Update this choice and change the option of Publish results to Do not publish results to students.
2.  Click Save Changes.
3.  On the next page, you should only see a question with the option and you should not see the result column underneath.
4.  You should see the same appearance from the student’s browser view.

##### \[CHO008TS\] Shows results to students

------------------------------------------------------------------------

1.  Click the Update this choice and change the option of Publish results to Always show results to students.
2.  Click Save Changes.
3.  On the next page, you should see the question along with the results.
4.  The difference can only be seen if you look at it from student’s browser. (Assuming you have followed this test plan, the student access that you are using should have not answered any of the choice yet). So when you go to the student’s browser and look at the choice activity, you should see the result column underneath.

##### \[CHO009TS\] Show results to students after they answer

------------------------------------------------------------------------

1.  Go to the admin browser, click the Update this choice and change the option of Publish results to Show results to a student after they answer.
2.  Click Save Changes.
3.  On the next page, you should see the question along with the results.
4.  Now, go to the student’s browser and you when you refresh the page, you should not be able to see the result column. You should only see the question, now choose one of the choice, let’s say you choose ‘Nice’. When you click Save my choice you should see the result (ie. responses) underneath the question.

##### \[CHO010TS\] Restrict the choice

------------------------------------------------------------------------

1.  Go to the admin browser, click the Update this choice and change the option of Publish results to Show results to students only after the choice is closed.
2.  Check the Restrict answering to this time period box, and change the date in the Open to yesterday’s date and Until to tomorrow’s date.
3.  Click Save Changes.
4.  On the next page, you should only see a question with the option and you should not see the result column underneath.
5.  You should see the same appearance from the student’s browser view.
6.  Now, from the admin’s browser, change the Until date to yesterday’s date.
7.  Click Save Changes.
8.  When you get to the next page, you should get the choice question and the responses under the question. You should not be able to answer the question, because the activity has ended.
9.  You should get the same page from the student’s browser view.

##### \[CHO011TS\] Hide results from students

------------------------------------------------------------------------

1.  Go to the admin browser, click the Update this choice and change the option of Publish results to Do not publish results to students.
2.  Click Save Changes.
3.  On the next page, you should only see a question with the option and you should not see the result column underneath.
4.  You should see the same appearance from the student’s browser view.

##### \[CHO012TS\] Hide from students

------------------------------------------------------------------------

1.  Go to the admin browser, click the Update this choice and change the option of Visible to moodlers to Hide.
2.  Click Save Changes.
3.  Go to the student browser, refresh the page and you should get an error message says ‘Sorry, this activity is currently hidden’.

##### \[CHO013T\] View a choice with non anonymous results

------------------------------------------------------------------------

1.  Go back to the main page of Moodle Features Demo course, click the choice activity ‘A Choice with non-anonymous results’. The difference with the choice activity before (‘A Choice with anonymous results’) is the privacy of results in the setting is set as publish anonymous results, do not show student names.
2.  You should get a page with a question along with the choice of answers. Choose one of the answer and click Submit
3.  You should be presented with a page that shows the response that you have just put, along with your name in the column. As what its name says, non-anonymous, every visitor will be able to see the results along with the people who gave the responses.

