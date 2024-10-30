# Upgrade Blockers

-   CTP-2292 - Fix Password Autofill with Lastpass Done
-   !! <https://tracker.moodle.org/browse/MDL-78370> → Catalyst - <https://wrms.catalyst.net.nz/wr.php?request_id=410385>
-   STACK update to 4.3.11→ AS / Catalyst - <https://wrms.catalyst.net.nz/wr.php?request_id=409048>
-   STACK update to 4.4.4 → AS / Catalyst <https://wrms.catalyst.net.nz/wr.php?request_id=410376>
-   Code Performance load testing → Catalyst - <https://wrms.catalyst.net.nz/wr.php?request_id=407219>
-   Check on Zoom - NB
-   Quickmail - <https://github.com/lsuonline/lsuce-block_quickmail/issues/63> 
-   finish off filter\_jmol maintenance - we just need to complete CTP-2321 - filter\_jmol library update Done . Some of the improvements from the code review can be done beyond the upgrade <https://ucldata.atlassian.net/browse/CTP-2323?focusedCommentId=141020>
-   Deploy MIM cakePHP 4.4.4 update -&gt; AS in progress - not a blocker. will be done after the upgrade
-   Update MIM for MySQL 8 → Alex developing fixes → pass to AS to deploy
-     CTP-1624 - Test & Sign off on WR348446 Done → fix whatever is needed to get this working ourselves rather than go back to Catalyst. Re-tested, follow up stories logged
-   CTP-2340 - Fix test account automation Done
-   CTP-2341 - enrol\_dbuserrel maintenance - resolve remaining errors Done
-    Echo360 plugin updates? Keep asking and admin access to Echo Dev keeps being removed
-   local\_aws guzzle fix → <https://github.com/aspark21/moodle-local_aws/tree/patch-1>
-   hsuforum rebase → CTP-2309 - rebase hsuforum fork Done
-   data integration testing - CTP-2361 - Update MIM Schema to utf8mb4 and resolve mysql8 compatibility Done
-   clc testing - CTP-2296 - Test CLC and data integration plugins Done
-   Accessibility tool / user preferences -&gt; theme includes - <https://github.com/ucl-isd/moodle-theme_norse/pull/21>
-   CTP-2310 - AAD UPN bug refactor Done
-   <https://tracker.moodle.org/browse/MDL-73626> / <https://wrms.catalyst.net.nz/wr.php?request_id=409128>
-   Merge Norse 1.3.1 - <https://github.com/ucl-isd/moodle-theme_norse/pull/20>

Other things that need reviewing (from creating the MOODLE\_402\_STABLE branch) but not necessarily blockers:

-   git submodule add --branch CTP-2113 <git@github.com>:opitz/moodle-mod\_turnitintooltwo.git mod/turnitintooltwo/ → added to UCL\_2023032701
-   git submodule add --branch behatfix <https://github.com/ccaemmi/moodle-mod_scheduler.git> mod/scheduler/
-   Turnitin mod update needs testing - CTP-2386 - Test mod\_turnitintooltwo update Done
-   Turnitin plagiarism update needs testing - CTP-2385 - Test plagiarism\_turnitin update Done
-   <https://github.com/catalyst/moodle-tool_dataflows/issues/796>
-   <https://github.com/ucl-isd/moodle-build/blob/MOODLE_402_STABLE/push.sh#L15-L16> merge conflict
-   Create turnitin plagiarism UCL\_2023033001 branch
-   CTP-2362 - qtype\_jme library update Done
-   Release new version of qtype\_algebra in plugins directory https://github.com/jmvedrine/moodle-qtype\_algebra/compare/master...ucl-isd:moodle-qtype\_algebra:main
-   Release new version of qtype\_jme in plugins directory
-   Is this the right fix https://github.com/moodleou/moodle-qtype\_varnumunit/pull/10/files (no)
-   Is this the right fix https://github.com/catalyst/moodle-tool\_heartbeat/pull/132 (needs more work)
-   UCL customisations have been submitted upstream in MRs 48, 54, 55 and 56 - <https://github.com/moodleou/moodle-report_editdates/pulls> -&gt; create a branch with all 4 of these → <https://github.com/ucl-isd/moodle-report_editdates/commits/upstreamed>
-   Create catalyst gitlab repos for moodle-block\_tituscategorylist and theme\_norse
-   do we have a feature on the backlog to look at tool\_crawler ?
-   can we make use of tool\_abconfig ?
-   retire report\_filetrash ?
-   retire report\_apocalypse ?
-   <https://github.com/ucl-isd/moodle-quiz_cbmgrades>

Take commit history of https://github.com/ucl-isd/moodle-quiz\_cbmgrades\_f/commits/CTP-1728

What do we do with these:

<https://github.com/ucl-isd/moodle-quiz_cbmgrades_f/commits/CTP-1845>

<https://github.com/ucl-isd/moodle-quiz_cbmgrades/tree/CTP-1589> 

-   \#\#git submodule add --branch master <https://github.com/dualcube/Drag-and-Drop-Matching.git> question/type/ddmatch/

\#\#Pending Merge requests \#8 and \#10 and \#14 being accepted

git submodule add --branch fixes <https://github.com/ehsan42/Drag-and-Drop-Matching.git> question/type/ddmatch/


