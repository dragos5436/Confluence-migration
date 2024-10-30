# Tests-DBuserrel

Prerequisites

1.  Create an empty table

CREATE TABLE \`AM\_sits\_v\_personaltutorrole\` (

  \`student\_code\` varchar(12) COLLATE utf8mb4\_unicode\_ci DEFAULT '',

  \`student\_upi\` varchar(50) COLLATE utf8mb4\_unicode\_ci NOT NULL DEFAULT '',

  \`student\_username\` varchar(50) COLLATE utf8mb4\_unicode\_ci NOT NULL DEFAULT '',

  \`student\_firstname\` varchar(30) COLLATE utf8mb4\_unicode\_ci DEFAULT NULL,

  \`student\_surname\` varchar(40) COLLATE utf8mb4\_unicode\_ci NOT NULL DEFAULT '',

  \`student\_programme\` varchar(12) COLLATE utf8mb4\_unicode\_ci NOT NULL DEFAULT '',

  \`student\_id\` bigint(20) NOT NULL,

  \`sits\_tutor\_upi\` varchar(12) COLLATE utf8mb4\_unicode\_ci DEFAULT NULL,

  \`tutor\_upi\` varchar(255) COLLATE utf8mb4\_unicode\_ci DEFAULT NULL,

  \`tutor\_firstname\` varchar(100) COLLATE utf8mb4\_unicode\_ci DEFAULT NULL,

  \`tutor\_surname\` varchar(100) COLLATE utf8mb4\_unicode\_ci DEFAULT NULL,

  \`tutor\_id\` bigint(20) DEFAULT NULL,

  \`role\` varchar(14) CHARACTER SET utf8 NOT NULL DEFAULT '',

  \`source\` varchar(14) CHARACTER SET utf8 NOT NULL DEFAULT ''

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_unicode\_ci;

2. Insert fake data

3.Update connections details [/admin/settings.php?section=enrolsettingsdbuserrel](https://39.preview-moodle.ucl.ac.uk/admin/settings.php?section=enrolsettingsdbuserrel)

### Staff Tests Scripts

\[ DBR001T\] - Run task to import student/tutor relation

1.  Navigate to <https://39.preview-moodle.ucl.ac.uk/admin/tool/task/scheduledtasks.php?lastchanged=enrol_dbuserrel%5Ctask%5Cdbuserrel_sync>
2.  Click 'run now' &gt; tasks completed successfully
3.  Login as a tutor that has student tutees
4.  Navigate to course &gt; reports &gt; myfeedback
5.  Click 'my student tab' &gt; tutees are visible


