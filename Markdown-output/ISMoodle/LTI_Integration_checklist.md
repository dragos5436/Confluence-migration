# LTI Integration checklist

These are points to consider while reviewing LTI integrations for Moodle. Further explanation of each criteria below.

``` java
[] Data Protection
[] Moodle Data Privacy Policy
[] DPIA
[] Site-level
[] Actively Maintained 
[] LTI version
[] Moodle Plugin
[] Product Ownership
[] Accessibility
[] Mobile Friendly
[] Known Issues
[] Testing instructions
[] Automated tests
[] Load
[] Icon
[] Documentation
[] Sanity check
[] Web Services
```

Acceptable check-marks are Y (for yes), N (for no) or - (for not applicable). All N check-marks should be accompanied by an explanation of the problem that still needs to be addressed.

-   [1) Data Protection](#LTIIntegrationchecklist-1)DataProtection)
-   [2) Moodle Privacy Policy](#LTIIntegrationchecklist-2)MoodlePrivacyPolicy)
-   [3) DPIA](#LTIIntegrationchecklist-3)DPIA)
-   [4) Site-level or course-level](#LTIIntegrationchecklist-4)Site-levelorcourse-level)
-   [5) Actively Maintained](#LTIIntegrationchecklist-5)ActivelyMaintained)
-   [6) LTI version](#LTIIntegrationchecklist-6)LTIversion)
-   [7) Moodle Plugin](#LTIIntegrationchecklist-7)MoodlePlugin)
-   [8) Product Ownership](#LTIIntegrationchecklist-8)ProductOwnership)
-   [9) Accessibility](#LTIIntegrationchecklist-9)Accessibility)
-   [10) Mobile Friendly](#LTIIntegrationchecklist-10)MobileFriendly)
-   [11) Known Issues](#LTIIntegrationchecklist-11)KnownIssues)
-   [12) Use cases / Testing Instructions](#LTIIntegrationchecklist-12)Usecases/TestingInstructions)
-   [13) Automated selenium tests](#LTIIntegrationchecklist-13)Automatedseleniumtests)
-   [14) Load & Load testing](#LTIIntegrationchecklist-14)Load&Loadtesting)
-   [15) Icon](#LTIIntegrationchecklist-15)Icon)
-   [16) Documentation](#LTIIntegrationchecklist-16)Documentation)
-   [17) Sanity Check](#LTIIntegrationchecklist-17)SanityCheck)
-   [18) Web Services](#LTIIntegrationchecklist-18)WebServices)

### 1) Data Protection

Do we have a contract in place with this provider?

Has the provider agreed to UCL contracting terms?

Is the company non-EEA? If so, do we have model clauses in the contract?

Privacy Shield or other make believe schemes are insufficient.

**This must be in place before proceeding any further with a review** - any testing/piloting with real UCL data cannot proceed if this criteria is not met.

If suppliers aren't clear what to do instead of Privacy Shield -&gt;[ https://noyb.eu/en/next-steps-eu-companies-faqs](https://noyb.eu/en/next-steps-eu-companies-faqs) 

( [https://techcrunch.com/2020/08/18/eu-websites-use-of-google-analytics-and-facebook-connect-targeted-by-post-schrems-ii-privacy-complaints/](https://techcrunch.com/2020/08/18/eu-websites-use-of-google-analytics-and-facebook-connect-targeted-by-post-schrems-ii-privacy-complaints/?guccounter=1) )

### 2) Moodle Privacy Policy

The "**Who we share your data with**" section of Moodle Data Privacy Policy needs to be updated to include that of the service we are introducing - [ https://moodle.ucl.ac.uk/admin/tool/policy/viewall.php?returnurl=https%3A%2F%2Fmoodle.ucl.ac.uk%2Fcourse%2Findex.php%3Fcategoryid%3D484\#policy-3](https://moodle.ucl.ac.uk/admin/tool/policy/viewall.php?returnurl=https%3A%2F%2Fmoodle.ucl.ac.uk%2Fcourse%2Findex.php%3Fcategoryid%3D484#policy-3)

A link to the supplier's Privacy Policy needs to be added as a minor revision (which will ensure there is no need for everyone to agree the policies all over again). For now discuss with Jason Norton.

Take note of the link we need to add.

### 3) DPIA

Does this plugin introduce a new kind of processing to the VLE service which would require a DPIA to be completed?

<https://www.ucl.ac.uk/legal-services/ucl-general-data-protection-regulation-gdpr/guidance-notices-ucl-staff/data-protection-impact>

### 4) Site-level or course-level

Will the integration be made available at site level?

Have we licensed the product for the whole institution? Or only for a set number of users? If so, which course / categories would this be restricted to?

### 5) Actively Maintained

Is the integration actively maintained?

Is the service we are connecting to a commercial product? Does it require a license? Has a license been purchase already? If site level then see ISD procurement

Is this a free / freemium service? →  Is there a clear sustainable business model?

### 6) LTI version

Does this integration support LTI 1.3?

User Sync?
Membership sync?

Returns grades?

Caliper Analytics?

Does it still run on the outdated LTI 1.0 model?

### 7) Moodle Plugin

Do we already have or is there a Moodle plugin to support this integration?

Have we the compared functionality between the plugin and the LTI option? What functionality do we lose?

### 8) Product Ownership

Who will own this Product?

Which Product Team will implement, promote, etc?

Is the team implementing this the Product Team?

### 9) Accessibility

Is the LTI [WCAG 2.2 AA](https://www.w3.org/TR/WCAG22/) compliant? Check the supplier's website for an Accessibility Statement for the product and if out of date, request a new one or an interim VPAT conformance report.

Contact Ben Watson in the Digital Accessibility Team to undertake a review of the LTI accessibility report(s) and to make a recommendation on its usage. Where accessibility issues arise, it will be necessary to liaise with suppliers and ask for a prioritised roadmap/action plan or encourage them to take remedial action before implementing and promoting the LTI to users at UCL.   

### 10) Mobile Friendly

Do they support mobile devices at all?

Does it work well with our responsive theme?

Does it work via the Moodle Mobile App?

### 11) Known Issues

Compile a list of known issues about the plugin from the relevant issue tracker, Moodle Mailing lists, forums, etc

Any major blockers? Are there are any major issues which would need to be mitigated? Can these be mitigated by documentation / User Tours?

Work **together** with Digi-Ed on this.

### 12) Use cases / Testing Instructions

Is the use case clear? Or are there many ways this tool could be used?

Do we need some manual testing plans beyond what is covered by the automated tests?

### 13) Automated selenium tests

Do we need a set of selenium (LambdaTest) automated tests which cover the key features of the tool?

### 14)  Load & Load testing

Can we cope with the load this plugin will cause?

Is it offloading where possible load to cron for the admin servers to deal with?

Is it doing database intensive tasks at the same time as peak usage or asynchronously?

Do we need to load test certain parts of the application before ?

Do we need to write some load tests to be run moving forward as part of the automated pipeline?

### 15) Icon

Does our current theme include a custom icon for this? 

Are we happy with the stock icon?

Up to digi-ed on this whether to get a new one made or just an existing copied (e.g Lecturecast)

### 16) Documentation

Does the plugin have good documentation available?

If yes, good sign and helpful for going live. If not, Digi-Ed will have to write it.

### 17) Sanity Check

Anything else which you are concerned when reviewing this plugin?

We naturally want to prevent another unoconv situation, so raise any concerns about impact on support load here.

### 18) Web Services

Does the LTI requires the use of web services i.e. syncing of course groups and groupings as by default this functionality is not accessible.

Is the Web Services setup correctly [How to setup a web service](How_to_setup_a_web_service)

Are we only allowing the functions and capabilities that are required.  We want to minimize and only expose whats is required <https://moodle.ucl.ac.uk/admin/webservice/documentation.php>

Didn't look at these but we may want to add steps from them in future:

<https://docs.moodle.org/36/en/Plugin_Review_Criteria>

<https://www.tituslearning.com/evaluating-moodle-plugins/>

<https://docs.moodle.org/dev/Plugin_contribution_checklist>


