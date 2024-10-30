# importing questions with many answers into a quiz

**Problem reported by LTSS:**

A course that we are migrating from WebCT to Moodle has a quiz which contains 54 multiple choice questions. To answer the question a student must choose the correct two answers from ~80 choices. (I know!) When we import the question to Moodle as either WebCT or gift formats I only get 36 choices imported. While I could go into each of the 54 questions and add the extra 44 possible responses (augh!) it would take a very, very, very long time.

**To try this out:**

1.  Go to your test course in Moodle and create a quiz.
2.  Then choose the 'import' tab.
3.  Choose to import a GIFT format questions and upload the attached file (which is question with 78 answer options).
4.  When it first imports the questions it put the answers as a, b, c, ... but as this example has more than 26 options it puts symbols after it reaches z. Edit the question to change it 1, 2, 3 ....

When we first tested this it would not bring in all of the answer options but cut off half way through.

How can we extend how many questions are imported?

<http://moodle.org/mod/forum/discuss.php?d=105415>

To fix this I edited the moodle database as follows:

``` java
ALTER TABLE `mdl_question_multichoice` CHANGE `answers` `answers` LONGTEXT;
```

(*the default field type was varchar(255)*)

At the time of writing (Thurs 11 Sept 08) this has been done on wasdev-a (database *moodle\_wasdev\_a*) for LTSS to test.

Tina has tested this and OK'd it and this change has now been made to the live moodle service. 12/09/08, 10:30am 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [BIOL2014\_quiz\_question\_example.txt](attachments/4654875/5013532.txt) (application/download)

