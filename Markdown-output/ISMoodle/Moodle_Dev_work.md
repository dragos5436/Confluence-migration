# Moodle Dev work

## SRE / Ops - needs to happen

Core SRE

https://tracker.moodle.org/browse/MDL-68806

AAD / auth\_oidc 

<https://github.com/microsoft/o365-moodle/issues/2156> 

<https://github.com/microsoft/o365-moodle/issues/2155>

HQ toolset

<https://github.com/moodlehq/moodle-docker/issues/217>

report\_editdates - implement properly upstream

CTP-1559 - Unpick report\_editdates improvements and submit upstream Done

## Features to be prioritised 

**Dark Mode**

<https://tracker.moodle.org/browse/MDL-68037> /  CTP-1447 - Develop Dark Mode in core Moodle Backlog

**CBM project** 

Tony Gardner-Medwin (UCL retired lecturer / dev) & Tim Hunt happy to support us in our endeavours (talked to me at Global Moot about this).

1. Putting my code mods ( [http://tmedwin.net/cbm/download](https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Ftmedwin.net%2Fcbm%2Fdownload&data=05%7C01%7Ca.spark%40ucl.ac.uk%7Ccb37754e24004d3e694b08da7ae238b5%7C1faf88fea9984c5b93c9210a11d9a5c2%7C0%7C0%7C637957409271014630%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=qwH3%2BV0MvoJ20NMAehfadH1pvgkR0hitsdMSGGIOxDE%3D&reserved=0) ) and some version of the essential CBM staff report PLUGIN (  [Moodle PLUGIN site](https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fmoodle.org%2Fplugins%2Fview.php%3Fplugin%3Dquiz_cbmgrades&data=05%7C01%7Ca.spark%40ucl.ac.uk%7Ccb37754e24004d3e694b08da7ae238b5%7C1faf88fea9984c5b93c9210a11d9a5c2%7C0%7C0%7C637957409271014630%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=rruYQt3cEMlVsFyH8BURbJi7Usq7SEonmyrMOlSDZ7Y%3D&reserved=0) ) into Git

2. Ensuring CBM is not available for Quiz types where individual questions ask for multiple responses, unless certainty can be expressed independently for each response. \[ You can be quite sure of some responses and quite unsure of others! \]

3. SInce calculation of grades as Accuracy + CB Bonus ('CBM PLUS') has proved very popular (giving 100% max grade and easy comparability with standard non-CBM grades) it would be good to have this always available as an option (perhaps selectable differently for different quizzes). It could become the default or only grade strategy, though students and staff should still be able to look at the full breakdown of performance on each quiz.

4. Regrading or switching CBM on/off after completion of a quiz can I believe cause miscalculation of some grades. This is a longstanding bug, affecting CBM PLUS grades. I advise people not to regrade when using CBM PLUS ( [CBM DOWNLOADS for Moodle (tmedwin.net )](https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Ftmedwin.net%2Fcbm%2Fmoodle%2Fdownload%2F&data=05%7C01%7Ca.spark%40ucl.ac.uk%7Ccb37754e24004d3e694b08da7ae238b5%7C1faf88fea9984c5b93c9210a11d9a5c2%7C0%7C0%7C637957409271014630%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=4XJB38dMufheXkb9nKyw7qn6mjazmN0YxEPnIk8DKxY%3D&reserved=0) . It is due I think to some rather deep shortcuts in regrading code somewhere, which may assume that a 'grade' is always proportional to the sum of CBM marks on every question.

5. It may be necessary to review the cbmgrades PLUGINS in light of any changes in Moodle rules about plugins. I see other plugins have changed quite a lot with MOODLE 4 - but I don't know if these changes were necessary, or simply improvements.
