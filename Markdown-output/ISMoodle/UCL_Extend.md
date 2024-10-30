# UCL Extend

I\] Codebase

UCL Extend and UCL Moodle share a common codebase.

UCL Extend has specific plugins we had to add for the Course Merchant integration and for the verifyed certifications.

Quite a few plugins which are UCL Moodle specific exist in extend but are switched off as they aren't designed for use in UCL Extend at this time.

II\] Infrastructure

a) containers

UCL Extend, in line with the code alignment, uses the same containers as UCL Moodle so a change to one will affect both (e.g. for upgrading PHP versions)

b) the rest

Database, Frontend and caching capacity is dedicated to UCL Extend. However, the design for UCL extend is a bit more basic, doesn't have the multi-AZ, read/write splitting and auto-scaling that UCL Moodle has.

This could be an area for improvement

c) monitoring

UCL Extend can similarly be monitored in New Relic and AWS Cloudwatch as we can for UCL Moodle.

III\] Data Integrations

a) Entra ID (Azure AD)

UCL Extend also uses Entra ID for SSO. Accounts are created on the fly during login. This was setup by George initially but DLE has full access to manage and own this moving forward.

There are separate App registrations for prod & UAT: 

-   Prod - <https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationMenuBlade/~/Authentication/appId/ce15f53e-1648-4da2-84a7-54a2b0895ae8>
-   UAT - <https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationMenuBlade/~/Owners/appId/d32fcddf-df91-4468-a938-d597160b99a0>

(though we use the prod one for new Preview instances)

b) Course Merchant

Online Learning (OL) team is the owner of this integration, they can request plugin updates & log issues with the supplier. Dionysis is the primary contact point for this.

There is currently no UAT environment to test these plugins work before an upgrade & the plugins do not have any automated tests coverage <img src="plugins/servlet/twitterEmojiRedirector" title="disappointed face" alt="disappointed face" class="emoticon emoticon-1f61e" /> 

c) Maytas Integration (for ECF and others)

Maytas is run by the IOE for the DfE funded programs which run in Extend. This is Nick Mulliss' area - Head of Faculty IT for the IOE.

The integration has been built with the oversight of Fernando in Assessment team and implemented by Thomas Millington one of the LaFosse associates / Futureproofers.

The code for this is here - <https://github.com/ucl-isd/maytas-fargate/blob/main/app/routers/auto_ecf_enrolment.py> and there is some automated test coverage here - <https://github.com/ucl-isd/maytas-fargate/blob/main/app/tests/auto_ecf_enrolments.py>

This is not something the DLE team should be involved in. Issues relating to this will be directly escalated by course administrators and the Online Learning team to Thomas/Fernando. If either leaves, it'll be up to them to manage a suitable handover of these integrations.


