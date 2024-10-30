# Unoconv / File conversion Issues for Moodle Assignment

# **Update July 2019 - All of these resolved by switching to Onedrive & Librelambda converters, removing unoconv & upgrading to RHEL7 which updates to more recent version of Ghostscript → Go live 26/17 July 2019.**

A visual overview of how the conversion process works <https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=File%20Conversion%20Moodle.xml#R1VrbcqM4EP0aV%2B0%2B2MXFYPwYO5OZ2Z1UpTY1tbNPLhkE1gaQR4jY3q%2FfFoibAJskvtTkJdBIQvTlnO6WR%2BYy2n9maLt5pB4OR4bm7Ufm%2Fcgw9Klhwz8hOeQSx9JyQcCIJwdVgmfyH5bCYlhKPJw0BnJKQ062TaFL4xi7vCFDjNFdc5hPw%2BZbtyjALcGzi8K29G%2Fi8Y38CmNWyb9gEmyKN%2Bv2PH8SoWKw%2FJJkgzy6q4nMTyNzySjl%2BVW0X%2BJQKK%2FQSz7voedpuTGGYz5kwk8W7f58TReb8Xw3%2B%2BP7%2BMsX9nUsN%2FuKwlR%2BMEmE5jwPe5mq5d75oVAI9kA%2F8pYyvqEBjVH4qZIuGE1jMd281%2BBuw6MQLnW4%2FBdzfpAmRimsbS6qFb5RupXj8J7wH%2BJ6ommOvP9HLDexTVPeP2FGIswxk68BJbDDj%2FpNPsOC2%2FwbxMZ7VSdFCU2Zi4%2Foq3BBxALMj4xzSgNDZGAKO2UHmMdwiDh5be4DSRcNynHl1CdKYIeGVoSTI31JBpOpW80l8v3LWZUvwEVtG5Uo85A3eIve8pZHSj0wuqHdJQkJ4gjLF9c9pvIHYdzdhnD8vEWZmncAGk0fkW%2FAjOP9cWu1tSsnWE0lGYXSdlX86kVQbmqxa2v99mho8q1qM1pqe%2Bapl6nKDuHlizWDq4Bnn9%2BWKOoEHNmKyzQK71xOIQAWQl0EMOsbWuPwiSaEExrDkDXlnEYwIBQPFsh9CTJjLGko5sFqpp%2F91da4C8GO8IxTxTI05SGJ8bIEWu0y5mpby7ymscy2sdJ1RHgGizUnH2wnP8T7O8FEGTB58vLeDcVqbpf3D0GqkwjUo%2FSaWq0OtRayDwKVglNluJ3AqTbgaQrgqWbP1XA5wGuH7gPJ8C6jySTzBEgqWJ6BQBwkIvJOO8cVWPSMrOcM9TnzIrRnzqyGF0yn1%2FUCp%2BUEhYWTLYoLG0deuMoBwsfYWwPYrrBH%2BNbzVz9TDDMNG0UCU%2BN1sq1BPWypvswR%2BtSuQp8ltB7hz05Inl0KknW9pZQPxE%2BVKU4s22pmi5oxLwRqgnmDsCtqoItnmx%2BzjtZmTHeDvTTMSwiUvMC%2F3zgjQQD4KJQD%2Fin2J7JXLSJx8vvIvOsLj3psPDEs9Ch0Jzg5EWCblACM4phyxHsAuCfY6i8pvtP%2BmYqibHFIycpc6bOVsdJXujW1nZk9NRxnbq%2FmdjWsXMxadsc%2FPMi0YC1zjuCrxvbfCgPXyaKNaRMGpl15WQcK6PrFYMBuOdqyxrngE66Lk8RPw1%2BcbnVzKN9aNw38dqosONCHBGlVT4ZuzWdKMjrVO%2BrBeYcnOxerB%2B2z8pnslmiNTol1I9e1hrru9Kaua7Vc9%2FOGJjxxyfZYA%2BM2HmvNbu2xubVOd360R8ReSBxM4DLHZp4lAbJo%2Bgsj71DVTaK7qEUwA5KsW%2BvcbJYYtnbrppE%2Ba6m8jRon2gklNGRwUICDkgTPHHNwEnwLpOhJbq%2FTyFCSoNl7GxlTUymqBpawYF50qA3bigFJ%2F37VUtl2tKP7cpQGy1vHF9%2FR%2B93To%2BPhIv%2FC83Zt2gX7I30VAJTliRns8I24j%2FE%2Ba%2BDInk5cPpAVuxJvXAxvRFjCGX3BRT81prGgalguVERIdlVdiBNcb9kW7daIeF7G811Q1wTDM6DdVK3xO7qu5RFcPaxU%2Fz8f3LVPohrJvY%2BIqCezOlGp7cZrDAVgb38FiU9g2B%2FVS7sN5%2BIA8U5s2njgDKo1zCZRxmkTygIQrsXhIaz68Hj%2FbWybzlyvl3xqrfiCD2PYe7sqrM8uCj1Uqz8be86NlLtggiJc%2BSYKUOaeBBzBJzH4SHiYdOgC%2BcK%2FYFy0DbEgZVkQL4UsI11GsKiZZSkKZF2%2BUb7KFAKA%2FaRPo9XrUCzYPYLgSrLoykNreHyd7pMOZjgHsuoax000%2B%2BRRYUmEMmWelYJL8t7Q4q6H92QEA01rc6cRxOOOEv2K1KhmQkOp0VKwaGh3963UqGKepZ6XK%2BNt7WPjTeMI1VWzi%2B1T30%2FwRdrXBWbX6VAm3b%2F68ePZiVEpA8yOyuuqp5FF0n%2BsChh80JhAJPF3FAznRsCe0v86sKUk4o75XthSUEs9%2FbjwmZTRbr599SuqjWmGLSGTFbdbFePLdpADJ2cNVJzRefs4862kXBDsWBSTCstODevjLPvuk8jr%2BJiuOIc1f6eTKY2gmdpbPxM1tvarf6hKg9vqZ2358OrHgean%2FwE%3D>

## **I\] unoconv filling up /tmp on the app servers (clamav issue mitigated as now when unable to scan the file accepted instead of being declined & users being told it has a virus)**

**Solution**:  Setup Unoconv on dedicated VM & setup listeners to forward the queries onto that dedicated box

Requires: New VMs to run unoconv with access to /moodlefs

Related RF - IN03284760

## **II\] unoconv not converting some documents which used to be converted in older versions of Moodle/unoconv/libreoffice (i.e works on legacy)**

**Possible solution**: Do we need multiple VMs with different versions of libreoffice? If so, we would also need a second forked unoconv converter plugin to fallback to that older version. A lot of testing required here.

Related RF - IN03309739, IN03329944

## **III\] the entire “mdl\_assignfeedback\_editpdf\_queue” queue is being held up when a document fails**

Solution =&gt; <https://tracker.moodle.org/browse/MDL-63891>

## **IV\] non-UTF-8 documents not being converted properly**

||=&gt; investigation of available character sets installed/required (need more details from digi-ed & an RF ticket though)

Is this unoconv or Ghostscript? - <https://ghostscript.com/doc/9.21/Use.htm#Font_lookup>

Related RF - IN03324741

## **V\] Ghostscript version 8.70 - update required (2007 version, security vulnerabilities, may provide speed/success improvements)**

Solution: request that PI upgrade ghostscript to 9.25 

=&gt; RHEL version is patched for security issues but do we need new version for functionality reasons?

## **VI\] documents stuck in the mdl\_file\_conversion queue.**

On 05/11/2018 there was 853 rows in the queue, 567 were successful (66.47%) – status code 2,  270 failed (31.65%) – status code -1 and 16 pending. This doesn’t seem to evolve much during the day. However the queue was 100 rows shorter on the morning of 06/11/2018 and we still seem in the same position of 764 rows at the end of the day. It’s unclear what we should do about these and the difference between this queue and the other. The total drop in rows came equally from the complete as it did from the failed. This could simply be as a result of the aforementioned task not completing & therefore not picking up on the fact that numerous conversions are complete.

Regardless there is a lot of failures, we need to improve the success rate of conversions. May be related to II\] but maybe unconv/Libreoffice cannot handle this regardless of versions. Need to know file types / files affected =&gt; MS Office files likely to be converted better by the Onedrive for Busines document conversion solution.

## **VII\] Document fidelity is poor **

Line endings are not respected, characters are bold when they shouldn't, etc Documents look a mess but that is the conversion process causing this

Related RF - IN03459038

# **How to move forward:**

Unoconv has been unreliable since it's initial implementation in UCL's Moodle. This is not a UCL specific problem but generally all big universities who have enabled it with their Moodle have encountered many of these issues.

One option would be to re-setup Unoconv once again on a seperate VM with a version which has the best success rate, however this may address the issues we are currently aware of and more are likely to crop up over time. This is a significant piece of work to undertake and will likely have additional costs attached for the additional VMs without a guaranteed positive outcome.

The more reliable option to consider is to switch to using the [Onedrive](https://moodle.org/plugins/fileconverter_onedrive) converter, which should be able to deal with MS Office documents much better than Libreoffice/Unoconv and therefore reduce the conversion failures and reduce the server load risk. This was recently released by the University of Nottingham and integrates with Onedrive for Business so we should already be covered to use this under the Office365 contracts between UCL & Microsoft, including for data protection/privacy/security, but also for cost (no additional cost as inclusive of Office365 licence?).

Let's do both in MIP Phase 2:

-   Setup Onedrive converter and set it to be the preferred converter for file formats it supports (Review [MDSA](https://docs.microsoft.com/en-us/legal/mdsa)& [Graph ToS](https://developer.microsoft.com/en-us/graph/terms-of-use) ) - UPDATE =&gt; Plugin tested, service account received, T&Cs approved =&gt; Testing on PP
-   Setup Unoconv on a new dedicated VM for file formats that onedrive cannot convert, removing Unoconv from the app servers and setup forwarding to the new VM =&gt; Chris Cooper de & re commisioning / Project resources

And also:

-   Address the queue processing by pushing for <https://tracker.moodle.org/browse/MDL-63891> and upgrading to Moodle 3.4.6 (To be discussed at [LTA Service Meeting 204](https://wiki.ucl.ac.uk/display/ISAppsDev/Meeting+204%3A+Learning+Apps+Service+Meeting+13+November+2018)) - UPDATE =&gt; backported in 3.5 by Moodle HQ. Backport for Moodle 3.4 part of [MIP Phase 2 logged in JIRA](https://ucldata.atlassian.net/browse/ISD-454)
-   updating Ghostscript on all servers (Ticket raised with PI IN03339521 / IN03464655)


