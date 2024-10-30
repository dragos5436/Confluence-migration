# Quiz Test Plan

# QIZ001TS Testing Quiz

1.  Login in as a "tutor" in one browser (this will be referred to as the *admin browser*)
2.  Login as a "student" in another browser (this will be referred to as the *student browser*).
3.  Click the **Turn editing on button** on the top right corner window.
4.  And go to the **Quiz topic**, click the **Add an activity… dropdown box** and choose **Quiz**
5.  Type **Test Quiz** as the name of the quiz and type anything in the **Introduction text-box**. Leave the other options as their default values. Click Save and display and Edit Quiz.
6.  If you have installed **Moodle Test Course**, then you should have couple of questions ready to be chosen. Otherwise, get the course backup files here (http://docs.moodle.org/Tests)\#\# Choose these three following questions from the list by clicking the &lt;&lt; sign, right on the left of the question:\#\#\# What’s in a name?\#\#\# Phone Home\#\#\# Life, the universe and everything\#\# You can see each question added in the quiz (from the left column) each time you click the &lt;&lt; button. Play around with the question ordering as well. Note: These quesitons should be ones that can be automatically marked (i.e. not essay questions) in order for some of the following tests  (dealing with grading) to be run properly.
7.  Click the **preview button** in the Settings tab on the left, you should see the preview of the quiz. The question order should be exactly as what you have just set.

# QIZ002TS Testing Quiz Timer

1.  From the admin’s browser, click **Edit Settings button** in the Settings tab on the left. You should be presented with the quiz setting page.
2.  Set **Time limit to 1 Minutes** and click **Save and display.**
3.  Click the **Preview quiz now button**, you will be asked to confirm you wish to begin the attempt, click Start Attempt. You can see there is timer counting down on the left in the Quiz navigation block which shows how much time left to finish the quiz.
4.  When it reaches 00:00 you should be redirected to the result page.

# QIZ003S Testing Quiz

1.  From the admin’s browser click on the quiz link, click **Edit Settings button** in the Settings tab on the left. You should be presented with the quiz setting page.
2.  Change the following settings:
    1.  **Attempts allowed:** 2. Click Save Changes.
    2.  **New page**: Every question. There will be only one question per page
    3.  **Shuffle within questions**: Yes. Multiple choice answers will be shuffled.
3.  Click **Save and display** then the **preview button.** 
4.  Click Edit **Quiz Questions **and tick the **shuffle **checkbox
5.  You should notice a couple of differences with the previous quiz. (if you click **Start a new preview** from the left Quiz navigation block you should see the questions shuffle and the answer order shuffle too.)
    1.  You should only see one question per page
    2.  The order of questions will be randomized
    3.  Multiple choice answers will be randomized
6.  Now, switch to the student’s browser view and attempt the quiz. We would test the number of maximum attempt.
7.  Attempt the quiz and **submit** the page. When you see the result page, you should get a message saying **“No more attempts are allowed”**

# QIZ004S Testing Quiz (Each attempt builds on the last)

1.  From the admin’s browser, click **Edit Settings button** in the Settings tab on the left. You should be presented with the quiz setting page.
2.  Under **Question behaviour** change the **Each attempt builds on the last**: from No to Yes. And also change Attempts allowed back to **Unlimited.** Save these changes.
3.  Now switch to student’s browser and re-attempt the test.
4.  Click **Submit all and finish**. You should then be redirected to review your answers. Click **Finish review** in the left Quiz navigation block, this will re-direct you the the grade page. 
5.  On the grade page, click the **Re-attempt quiz** button to take the test again.
6.  You should be able to see all the same three questions along with the answers that you gave from the attempt before.

# QIZ005S Testing Quiz (Grading Method)

1.  From the admin’s browser, click **Edit Settings button** in the Settings tab on the left. You should be presented with the quiz setting page.
2.  Change the **Grading method** from **Highest grade** to **Average grade**. Save these changes.
3.  Now, switch to student’s browser and view the result page (you may need to refresh the page). You should see that the the final grade is now changed to the average grading method. Depend on the grade that you had from the quizzes before, calculate the average and the number should be the same as what appear on the screen.
4.  Repeat step 2 and 3 twice, by changing the grading method to first attempt as well as last attempt.

# QIZ006S Testing Quiz (Adapting Mode and Apply Penalties

1.  From the admin’s browser, click **Edit Settings button** in the Settings tab on the left. You should be presented with the quiz setting page.
2.  Change **How questions behave** to Adaptive mode. Change **Each attempt builds on the last** option back to No. Save these changes.
3.  Now switch back to student’s browser and re-attempt the quiz.
    1.  Use an incorrect answer as part of the first question.
    2.  Answer the other two questions with the correct answer. And click **Submit all and finish**.
4.  You should get a raw final score of **17.00**, since the wrong answer attracted a penalty. The final grade should be **89.47 out of 100**.

# QIZ007TS Test Quiz (Decimal points)

1.  This should be a quick one, from the admin’s browser, click **Edit Settings button** in the Settings tab on the left. You should be presented with the quiz setting page.
2.  Change the **Decimal Places in grades** to 0. Save this change.
3.  Switch to student’s browser and view the result page (quiz page, you may need to refresh the browser). You should see that the Final Mark (whatever type you set either Average, or Final, or Last Attempt) comes with no decimal point.

# QIZ008TS Test Quiz (Student's review - Immediately during the attempt)

1.  From the admin’s browser, click **Edit Settings button** in the Settings tab on the left. You should be presented with the quiz setting page.
2.  Now we are testing one of the main feature of quiz, the student’s review.
3.  We want students to be able to review the quiz Responses, Scores, Feedback and Answers during the attempt. So under **Question behaviou**r make sure **Immediate feedback** is selected.
4.  Make sure all the checkboxes on **During attempt** are ticked.
5.  Now go to student’s browser and attempt the quiz. Take the multiple choice questions again. Pick a wrong answer. 
    1.  You can see the feedback and score immediately after you answer the questions and click **check**. Now click Submit All and Finish.
    2.  A message box should appear saying, You are about to close this attempt you will no longer be able to change your answers. Click **Submit all and finish**.
    3.  Since you have ticked the Response, then you should be able to review the attempt, which will show a marked up version of each question. 
    4.  If you hoover your mouse over the mark (either a tick or cross) it should tell you what the correct answer is an what mark you got/ lost for it.

# QIZ009TS Test Quiz (Student's review - Later, white the quiz is still open

1.  From the admin’s browser, click **Edit Settings button** in the Settings tab on the left. You should be presented with the quiz setting page.
2.  We want students to be able to review the quiz Responses, Scores, Feedback and Answers, Later while the quiz is still open. So make sure all the checkboxes on Later while the quiz is still open are ticked.
3.  Now, switch to student’s browser and re-attempt the quiz. Give wrong answers to all the questions. 
4.  After answering all the questions, **Submit All and Finish**. A message box should appear saying, You are about to close this attempt you will no longer be able to change your answers. Click OK.
5.  You will be redirected to the review page where you can see the correct Answers, Feedbacks and score for each page.

# QIZ010TS Testing Quiz (Student's review - After the quiz is closed)

1.  From the admin’s browser, click **Edit Settings button** in the Settings tab on the left. You should be presented with the quiz setting page.
2.  We want students to be able to review the quiz Responses, Scores, Feedback and Answers only After the quiz is closed. So make sure all the checkboxes on **After the quiz is closed** are ticked.
3.  Switch to student’s browser and attempt the test. Give wrong answers to all the questions (you should know all the right answers by now :-) ), so then we could see the feedback and answers at the end.
4.  After answering all the questions, **Submit All and Finish**. A message box should appear saying, You are about to close this attempt you will no longer be able to change your answers. Click OK. You will be redirected directly to the review page, click **Finish review** to go to the grade page.
5.  Switch back to the admin’s browser, and update the quiz setting. Now change the closing date to a date that has passed. When I did this test, the date was 15 March 2006, I changed it to 9 March 2006.
6.  Now, go back to the student’s browser and refresh the page. You should not be able to see the **Re-attempt the quiz** button again. Instead, you will see links on each of number of quiz attempt.
7.  Click on the last quiz attempt that you have made and you will be redirected to the review page that shows your answers, the correct answers, feedbacks and also the scores for each question.

# QIZ011TS Testing Quiz (Require password)

1.  From the admin’s browser, click **Edit Settings button** in the Settings tab on the left. You should be presented with the quiz setting page.
2.  You should see the require password textbox, put the word password as the password.
3.  Now switch to student’s browser again, and re-attempt the quiz. You should be prompted to enter the password.
4.  Type password as the password :-) and click Continue.
5.  You should get the quiz questions presented on the screen.

