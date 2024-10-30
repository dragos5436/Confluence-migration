# Tests-GroupChoice

-   [\[CHO001T\] Add a choice](#TestsGroupChoice-%5BCHO001T%5DAddachoice)
-   [\[CHO002T\] View choices](#TestsGroupChoice-%5BCHO002T%5DViewchoices)
-   [\[CHO003T\] Update the choice](#TestsGroupChoice-%5BCHO003T%5DUpdatethechoice)
-   [\[CHO004TS\] Change the display of choice results](#TestsGroupChoice-%5BCHO004TS%5DChangethedisplayofchoiceresults)
-   [\[CHO005T\] Show unanswered column](#TestsGroupChoice-%5BCHO005T%5DShowunansweredcolumn)
-   [\[CHO006T\] Allow choice to be updated](#TestsGroupChoice-%5BCHO006T%5DAllowchoicetobeupdated)
-   [\[CHO007TS\] Hide results from students](#TestsGroupChoice-%5BCHO007TS%5DHideresultsfromstudents)
-   [\[CHO008TS\] Shows results to students](#TestsGroupChoice-%5BCHO008TS%5DShowsresultstostudents)
-   [\[CHO009TS\] Show results to students after they answer](#TestsGroupChoice-%5BCHO009TS%5DShowresultstostudentsaftertheyanswer)
-   [\[CHO010TS\] Restrict the choice](#TestsGroupChoice-%5BCHO010TS%5DRestrictthechoice)
-   [\[CHO011TS\] Hide results from students](#TestsGroupChoice-%5BCHO011TS%5DHideresultsfromstudents)
-   [\[CHO012TS\] Hide from students](#TestsGroupChoice-%5BCHO012TS%5DHidefromstudents)
-   [\[CHO013T\] View a choice with non anonymous results](#TestsGroupChoice-%5BCHO013T%5DViewachoicewithnonanonymousresults)

***Note that this page is a copy of the simple choice activity - this may form a good basis, but will need to changes to make it reflect group choice functionality. See Moodle Docs for possible scenarios to follow: https://docs.moodle.org/35/en/Group\_choice\_activity\#How\_do\_I\_use\_it.3F***

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

1.  On the same page you should see a button on the top left corner ‘Update This Choice’.
2.  You should get a page where you can modify the choice. Here are things that you can do:
    1.  Make all the questions in the Choice text box in bold format
    2.  Change the first choice from Awesome! to I’m loving it!
    3.  Choose ‘enable’ the Limit the number of responses. And change the limit for the ‘I’m loving it!’ option to 2 and leave the other options to 0
    4.  Add a seventh choice: I just don’t get it
3.  Click save changes and you should see an updated choice page.
4.  Now, just as what we did with the quiz module, use another type of internet browser and login as student.
5.  Go to the same choice page, ‘A choice with anonymous results’, and you should see the question, but you can only select the I’m loving it option, since we limit the number of responses for the other option to 0. Please do not make any selection yet. The other option should have a word ‘Full’ written under each option.

##### \[CHO004TS\] Change the display of choice results

------------------------------------------------------------------------

1.  Click the Update this choice link and change the option of Display Mode to Display vertically.
2.  Click save changes
3.  In a different web browser login as a "student" (this will be referred to as the *student browser* from now on).
4.  Refresh the page and you should get a vertical list of the answers, instead of horizontal list.

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

