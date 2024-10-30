# alter index on {question\_numerical\_units} table to be non-unique

CR CR00003325

## Description

\#\# Background
There is a long-standing issue (introduced in Moodle 2.1 - released Jul 2011 (summer 2012 at UCL)) with the way that quiz questions which require a numerical unit as part of the answer are handled within the Moodle MySQL database.
The problem arises as a result of the way in which MySQL handles collations case-insensitively in the recommended configuration.
From Moodle 2.1, the \`{question\_numerical\_units}\` table includes a unique index, \`mdl\_quesnumeunit\_queuni\_uix\`, on \`question\` and \`unit\` fields, to ensure that only one unit with a particular 'name' is created for each question. In many cases, an answer which includes a numerical unit should be considered correct if the unit is specified in either upper or lower case, for example both 'mL' and 'ml' may be considered to be correct for 'millilitres' (although 'ML' and 'Ml' should be considered to be incorrect). Therefore, 'mL' and 'ml' would be specified as correct numerical units for the question answer within Moodle. Due to the way in which MySQL handles the collation case-insensitively, specifying both of these values would constitute a violation of the unique index, as they are considered to be equal, and thus INSERT of the second record fails.
Tim Hunt, the creator of the Moodle quiz engine, proposed a solution to the problem in October 2012, which involves...
  1. Storing all data in tables that use a case-sentistive collation, such as utf8mb4\_bin.
  2. Changing all \`ORDER BY\` clauses in each SQL query that sorts text to specify the correct sort collation, based on the selected language. This would require additional helper functions.
Unfortunately, these changes have not bheen implemented to date, and it will be impractical for us to do so in the short-to-medium term, as it will require significant changes to Moodle code and significant testing effort.
As a workaraound, it was decided to change the \`mdl\_quesnumeunit\_queuni\_uix\` index to be non-unique as part of UCL's upgrade to Moodle 2.1 in 2012, because the possibility of problems caused by duplicate, same-case numerical units was considered very small next to the significant consequences of incorrect behaviour of quiz questions. It should be noted that such questions are likely to be used for summative as well as formative assessment.
For reference, further details of the issue are available at:-
- \[Units in numerical questions are acting case sensitive, but not functioning that way.\](<https://tracker.moodle.org/browse/MDL-22117>)
- \[Case-insensitive collations in the database cause problems and should be changed to case-sensitive\](<https://tracker.moodle.org/browse/MDL-36208>)
- \[Database collation issue\](<https://docs.moodle.org/dev/Database_collation_issue>)
- \[Databases: Issue with Database collations\](<https://moodle.org/mod/forum/discuss.php?d=214564>)
- \[Databases: Can we find a way to convince MySQL that 'x' &lt;&gt; 'X'\](<https://moodle.org/mod/forum/discuss.php?d=185695>)
\#\# Proposed change
For this CR, we propose to implement the same change within the schema of the New Moodle database, i.e. set the current unique index on the \`question\` and \`unit\` fields on the \`mdl\_question\_numerical\_units\` table to be non-unique.
N.B.: RDE Team to document this change as appropriate.

## Rollout Plan Details

- Put Moodle (New) into maintenance mode.- Take a backup of the \`moodle\_live\` database on moodle-db-01.ucl.ac.uk.- Change the unique index to be non-unique, as follows...    + Log in to MySQL on \`moodle-db-01.ucl.ac.uk\` as \`root\`.    + Execute the following...\`\`\`USE moodle\_live;ALTER TABLE mdl\_question\_numerical\_unitsADD INDEX mdl\_quesnumeunit\_queuni\_ix (question, unit);ALTER TABLE mdl\_question\_numerical\_unitsDROP INDEX mdl\_quesnumeunit\_queuni\_uix;\`\`\`- Take Moodle (New) out of maintenance mode.

## Back-out Plan Details

Re-instate the unique index as follows...- Log in to MySQL on \`moodle-db-01.ucl.ac.uk\` as \`root\`.- Execute the following...\`\`\`USE moodle\_live;ALTER TABLE mdl\_question\_numerical\_unitsADD UNIQUE INDEX mdl\_quesnumeunit\_queuni\_uix (question, unit);ALTER TABLE mdl\_question\_numerical\_unitsDROP INDEX mdl\_quesnumeunit\_queuni\_ix;\`\`\`

## Pre-Change Testing

The change has been tested in the Pre-production environment.

- Login to Moodle as an admin or tutor.

- On a test course, create a new quiz.

- Add a numerical question and add an answer.

- Under 'Unit handling', specify 'The unit must be given, and will be graded'.

- Under 'Units', specify 'mL' as 'Unit 1'.

- Click the 'Blanks for 2 more units' button, and specify 'ml' as 'Unit 2'

- Click 'Save changes and continue editing'

The following error message should be displayed: 'Error writing to database'.

## Post-Change Testing

- Login to Moodle as an admin or tutor.

- On a test course, create a new quiz.

- Add a numerical question and add an answer.

- Under 'Unit handling', specify 'The unit must be given, and will be graded'.

- Under 'Units', specify 'mL' as 'Unit 1'.

- Click the 'Blanks for 2 more units' button, and specify 'ml' as 'Unit 2'

- Click 'Save changes and continue editing'

The question should be saved correctly, and both 'mL' and 'ml' should be displayed under 'Units'.


