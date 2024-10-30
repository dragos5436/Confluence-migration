# CBM project 

Tony Gardner-Medwin (UCL retired lecturer / dev) & Tim Hunt happy to support us in our endeavours (talked to me at Global Moot about this).

1. Putting my code mods ( [http://tmedwin.net/cbm/download](https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Ftmedwin.net%2Fcbm%2Fdownload&data=05%7C01%7Ca.spark%40ucl.ac.uk%7Ccb37754e24004d3e694b08da7ae238b5%7C1faf88fea9984c5b93c9210a11d9a5c2%7C0%7C0%7C637957409271014630%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=qwH3%2BV0MvoJ20NMAehfadH1pvgkR0hitsdMSGGIOxDE%3D&reserved=0) ) and some version of the essential CBM staff report PLUGIN (  [Moodle PLUGIN site](https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fmoodle.org%2Fplugins%2Fview.php%3Fplugin%3Dquiz_cbmgrades&data=05%7C01%7Ca.spark%40ucl.ac.uk%7Ccb37754e24004d3e694b08da7ae238b5%7C1faf88fea9984c5b93c9210a11d9a5c2%7C0%7C0%7C637957409271014630%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=rruYQt3cEMlVsFyH8BURbJi7Usq7SEonmyrMOlSDZ7Y%3D&reserved=0) ) into Git

2. Ensuring CBM is not available for Quiz types where individual questions ask for multiple responses, unless certainty can be expressed independently for each response. \[ You can be quite sure of some responses and quite unsure of others! \]

3. SInce calculation of grades as Accuracy + CB Bonus ('CBM PLUS') has proved very popular (giving 100% max grade and easy comparability with standard non-CBM grades) it would be good to have this always available as an option (perhaps selectable differently for different quizzes). It could become the default or only grade strategy, though students and staff should still be able to look at the full breakdown of performance on each quiz.

4. Regrading or switching CBM on/off after completion of a quiz can I believe cause miscalculation of some grades. This is a longstanding bug, affecting CBM PLUS grades. I advise people not to regrade when using CBM PLUS ( [CBM DOWNLOADS for Moodle (tmedwin.net )](https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Ftmedwin.net%2Fcbm%2Fmoodle%2Fdownload%2F&data=05%7C01%7Ca.spark%40ucl.ac.uk%7Ccb37754e24004d3e694b08da7ae238b5%7C1faf88fea9984c5b93c9210a11d9a5c2%7C0%7C0%7C637957409271014630%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=4XJB38dMufheXkb9nKyw7qn6mjazmN0YxEPnIk8DKxY%3D&reserved=0) . It is due I think to some rather deep shortcuts in regrading code somewhere, which may assume that a 'grade' is always proportional to the sum of CBM marks on every question.

5. It may be necessary to review the cbmgrades PLUGINS in light of any changes in Moodle rules about plugins. I see other plugins have changed quite a lot with MOODLE 4 - but I don't know if these changes were necessary, or simply improvements.

mod/quiz/report/cbmgrades versions released on his website-&gt; <https://github.com/ucl-isd/moodle-quiz_cbmgrades_f/tree/CTP-1728> 

fixes to coding standards - <https://github.com/ucl-isd/moodle-quiz_cbmgrades_f/compare/CTP-1728...CTP-1845>

## **1 - Installation Instructions:**

**If you want Average CBM:**

Cherry-pick this commit: 0d9707ceec29ea9f0a143e53f9d535a837e412f4 from <https://github.com/ucl-isd/moodle/commits/cbm>

and install mod/quiz/report/cbmgrades by cloning this repo &gt; <https://github.com/ucl-isd/moodle-quiz_cbmgrades_f/tree/CTP-1728> 

**If you want Accuracy & Bonus CBM:**

Cherry-pick this commit 0d9707ceec29ea9f0a143e53f9d535a837e412f4 and eef3ad88b5ad34bd30cac928c6d31108439e6e9a from <https://github.com/ucl-isd/moodle/commits/cbm>

and install mod/quiz/report/cbmgrades by cloning this repo &gt; <https://github.com/ucl-isd/moodle-quiz_cbmgrades_f/tree/CTP-1728> 

→ Al to make repos public

## **2 - Ensure only compatible question types are used**

Currently immediate and deferred cbm do not declare any particular restriction on question type compatibility beyond what the core deferredfeedback question behaviour does which is to say only those that are automatically gradable

<https://docs.moodle.org/dev/Question_behaviours#required_question_definition_class.28.29>

Documentation is seriously out date, that was replaced many versions ago to <https://github.com/moodle/moodle/blob/master/question/behaviour/upgrade.txt#L101>

<https://github.com/moodle/moodle/blame/master/question/behaviour/deferredfeedback/behaviour.php#L41>

**AS**: taking a look at a question behaviour which we would like to only make available to question types that only do single part answers - e.g. an MCQ with only one selectable answer would be ok but not an MCQ where 3 out of 4 options could be selected would not be. I've established that can be done using the is\_compatible\_question method which looks at the question definition but the options there are limited <https://github.com/moodle/moodle/blob/master/question/type/questionbase.php#L21-L36> so this wouldn't be feasible without a significant core change

## **3 - Make switching between average CBM and CBM accuracy and bonus a site or activity setting**

<https://github.com/ucl-isd/moodle/commit/eef3ad88b5ad34bd30cac928c6d31108439e6e9a> is the difference between CBM average and CBM plus 

this could be achieved relatively easily by adding a condition in the get\_total\_mark function.

However - what an earth do the core hacks even do when out of the box Moodle already has both average & accuracy and bonus calculations displayed for each question!

Is this already redundant?

## **4 - core Moodle doesn't allow switching between behaviours reliably once attempt started**

<https://tracker.moodle.org/browse/MDL-37949>

<https://moodle.org/mod/forum/discuss.php?d=398996#p1610056>

<https://docs.moodle.org/dev/Overview_of_the_Moodle_question_engine#Detailed_data_about_an_attempt>

→ on/off/on works - tested

but off/on - students cannot retroactively provide confidence scores so c=1

and on/off will keep grades as is so higher grades than allowed by the target behaviour. 

Nothing to CBM can do, this is in the remit of core Moodle

## **5 - Coding Standards & compatibility updates**

Mehala has done fixes to meet coding standards - <https://github.com/ucl-isd/moodle-quiz_cbmgrades_f/compare/CTP-1728...CTP-1845>

This remains to be fixed for 4.2+

``` java
This file is no longer required in Moodle 4.2+. Please do not include/require it.
line 25 of /mod/quiz/report/attemptsreport.php: call to debugging()
line 28 of /mod/quiz/report/cbmgrades/report.php: call to require_once()
line 75 of /mod/quiz/report.php: call to include_once()
This file is no longer required in Moodle 4.2+. Please do not include/require it.
line 25 of /mod/quiz/report/attemptsreport_options.php: call to debugging()
line 28 of /mod/quiz/report/cbmgrades/cbmgrades_options.php: call to require_once()
line 29 of /mod/quiz/report/cbmgrades/report.php: call to require_once()
line 75 of /mod/quiz/report.php: call to include_once()
Class 'mod_quiz_attempts_report_options' has been renamed for the autoloader and is now deprecated. Please use 'mod_quiz\local\reports\attempts_report_options' instead.
line 150 of /lib/classes/component.php: call to debugging()
line 37 of /mod/quiz/report/cbmgrades/cbmgrades_options.php: call to core_component::classloader()
line 29 of /mod/quiz/report/cbmgrades/report.php: call to require_once()
line 75 of /mod/quiz/report.php: call to include_once()
This file is no longer required in Moodle 4.2+. Please do not include/require it.
line 25 of /mod/quiz/report/attemptsreport_form.php: call to debugging()
line 28 of /mod/quiz/report/cbmgrades/cbmgrades_form.php: call to require_once()
line 30 of /mod/quiz/report/cbmgrades/report.php: call to require_once()
line 75 of /mod/quiz/report.php: call to include_once()
Class 'mod_quiz_attempts_report_form' has been renamed for the autoloader and is now deprecated. Please use 'mod_quiz\local\reports\attempts_report_options_form' instead.
line 150 of /lib/classes/component.php: call to debugging()
line 37 of /mod/quiz/report/cbmgrades/cbmgrades_form.php: call to core_component::classloader()
line 30 of /mod/quiz/report/cbmgrades/report.php: call to require_once()
line 75 of /mod/quiz/report.php: call to include_once()
This file is no longer required in Moodle 4.2+. Please do not include/require it.
line 25 of /mod/quiz/report/attemptsreport_table.php: call to debugging()
line 29 of /mod/quiz/report/cbmgrades/cbmgrades_table.php: call to require_once()
line 31 of /mod/quiz/report/cbmgrades/report.php: call to require_once()
line 75 of /mod/quiz/report.php: call to include_once()
Class 'quiz_attempts_report_table' has been renamed for the autoloader and is now deprecated. Please use 'mod_quiz\local\reports\attempts_report_table' instead.
line 150 of /lib/classes/component.php: call to debugging()
line 38 of /mod/quiz/report/cbmgrades/cbmgrades_table.php: call to core_component::classloader()
line 31 of /mod/quiz/report/cbmgrades/report.php: call to require_once()
line 75 of /mod/quiz/report.php: call to include_once()
Class 'quiz_attempts_report' has been renamed for the autoloader and is now deprecated. Please use 'mod_quiz\local\reports\attempts_report' instead.
line 150 of /lib/classes/component.php: call to debugging()
line 48 of /mod/quiz/report/cbmgrades/report.php: call to core_component::classloader()
line 75 of /mod/quiz/report.php: call to include_once()
```

Next Steps:

-   Mehala - update readme.md with updated install instructions
-   Al - make a cbmgrades repos public

-   Mehala - fix errors in 5) in a seperate (new branch for 4.2+ only)
-   Mehala - Look at 3) - example of implementing a site setting as Drogos for theme\_norse in chat

Other resources about Moodle Quiz

Mehala's Miro - <https://miro.com/app/board/uXjVMVm95g4=/>

<https://examulator.com/er/4.1/quiz/relationships.html>

<https://github.com/lucaboesch/moodle-report_datawarehouse/wiki/Moodle-Documentation>


