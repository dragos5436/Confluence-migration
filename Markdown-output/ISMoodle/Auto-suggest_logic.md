# Auto-suggest logic

I\] Module aligned

n.b. i) single/multiple mappings here is primarily discussed in terms of different mod\_code mappings, where there are multiple module delivery mappings for the same mod\_code, the course start/end date should also reflect use earliest start/latest end

ii) where separate courses are actually used for different module deliveries of the same mod\_code, we would encounter name clashes. The second course, if for different deliveries as the existing one, could use the full module delivery key e.g. ECON001-A6U-T1-2022 as course short name & course ID

a) Course with single module mappings

i) Past course

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Must Set Course End date based on the past course's mapping. - This is not currently set & we must set it to ensure long term the dashboard functions.

Move Course to equivalent 2021-22 category

ii) Rolled over course

Use Course Start date, Course End date for the new course mapping. =&gt; editable?

Moodle Course ID → module code - AY (e.g. ECON0001-2022) =&gt; enforced

Course Short Name → module code\_AY-AY (e.g. ECON0001\_22-23) =&gt; enforced

Course Full Name → module code: module name AY/AY (e.g. SESS0035: Post-Soviet Politics and Society 22/23) =&gt; enforced

Destination Category → relevant one for this module =&gt; enforced

b\] Course with multiple module delivery mappings

i) Past course

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Must Set Course End date based on the past course's mappings - **Select the latest Course End date** from the multiple module delivery mappings of the past course. - This is not currently set & we must set it to ensure long term the dashboard functions.

Move Course to equivalent 2021-22 category as selected for rolled over course

ii) Rolled over course

Use the earliest Course Start date from the multiple mappings. =&gt; editable?

Use the latest Course End date for the multiple mapping. =&gt; editable?

Moodle Course ID → module code - AY (e.g. ECON0001-ECON0002-2021) =&gt; enforced?

Course Short Name → module code\_AY-AY (e.g. ECON0001\_ECON0002\_21-22) =&gt; enforced?

Course Full Name → Take past course name, remove 20/21 at the end if present and then add 21/22 at the end. But leave field editable. =&gt; editable? Do we 

Destination Category → provide a dropdown restricted to the categories the various mappings relate to. The default value should be the category with the highest frequency in the mappings. (e.g. 4 maths 2 chemistry, offer both. but maths is default destination)

II\] Programme aligned

a) Past course

Select the latest Course End date from the module delivery different mappings of the past course. If programmes have no end date default to 31st June 2022?

b) Rolled over course

Use the earliest Course Start date from the multiple mappings. If programmes have no start date default to 31st September 2022?

Use the latest Course End date for the multiple mapping. If programmes have no end date default to 31st June 2023?

Moodle Course ID → ?

Course Short Name → ?

Course Full Name → Take past course name, remove 21/22 at the end if present and then add 22/23 at the end. But leave field editable

Destination Category → provide a dropdown restricted to the categories the various mappings relate to. The default value should be the category with the highest frequency in the mappings. (e.g. 4 maths 2 chemistry, offer both. but maths is default destination)

III\] Miscellaneous academic year aligned course

a) Past course

Select the latest Course End date from the module delivery different mappings of the past course. If programmes have no end date default to 31st June 2022?

b) Rolled over course

Use the earliest Course Start date from the multiple mappings. If programmes have no start date default to 31st September 2022?

Use the latest Course End date for the multiple mapping. If programmes have no end date default to 31st June 2023?

Moodle Course ID → ?

Course Short Name → Take past course name, remove 21/22 at the end if present and then add 22/23 at the end. But leave field editable

Course Full Name → Take past course name, remove 21/22 at the end if present and then add 22/23 at the end. But leave field editable

Destination Category → provide a dropdown restricted to the categories the various mappings relate to. The default value should be the category with the highest frequency in the mappings. (e.g. 4 maths 2 chemistry, offer both. but maths is default destination)


