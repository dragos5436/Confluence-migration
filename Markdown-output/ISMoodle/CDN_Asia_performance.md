# CDN / Asia performance

Moodle usage from Asia currently represents 12.8% of our traffic, which is the only continent we are getting significant load from outside of Europe - [Breakdown of usage in Asia / China](Breakdown_of_usage_in_Asia_China).

China and Hong Kong represent just over half of the traffic from Asia.

# I\] Current Performance

Load time of the Moodle Frontpage around the world - <https://www.dotcom-tools.com/website-speed-test.aspx#32B52DF751224BF2907273FB8394E34E>

The first load of the frontpage is particularly bad in Asia - <https://www.dotcom-tools.com/DetailView.aspx?id=32B52DF751224BF2907273FB8394E34E:72&visit=first&Tab=TimeWaterChart>

Second loads are not as bad (optimal performance once things are cached by browsers):

-   London - <https://www.dotcom-tools.com/DetailView.aspx?id=32B52DF751224BF2907273FB8394E34E:3&visit=second&Tab=TimeWaterChart>
-   Shanghai - <https://www.dotcom-tools.com/DetailView.aspx?id=32B52DF751224BF2907273FB8394E34E:72&visit=second&Tab=TimeWaterChart>

But it's worth noting that there is an **extra 1s for each page load** which we won't be able to compress without having a separate instance of Moodle running in Asia.

Note that this is just a test of the Moodle Frontpage, not any of the logged in parts of Moodle which may or may not differ.

Digging further, with a different tool we can establish that the [first paint occurs after 8 seconds](https://www.webpagetest.org/result/200325_4E_083dd7cdce97194b749e632251999eda/1/details/#waterfall_view_step1) and a significant portion of that is due to loading the Moodle JS/CSS which could be cached in a CDN.

While these free tools give us some helpful directions to move forward, this is not real-world data and does not capture all of the frustrations the students are encountering. To be able to capture that we need a fully fledged APM tool, in the interest of time I would recommend we upgrade to New Relic Pro in order to get this data ASAP - <https://docs.newrelic.com/docs/browser/new-relic-browser/browser-pro-features/filterable-geography-webpage-metrics-location>. A 3 month licence is the same as  price as a one year licence if paid annually.

# II\] Public assets

The UCL website uses MaxCDN (<https://www.stackpath.com/maxcdn/>) and available at cdn.ucl.ac.uk - this caches assets from static.ucl.ac.uk - assets are added into there via git.

The maxcdn servers also support HTTP/2 which speeds up the parallel loading of files considerably, unlike UCL's servers

Some space on this can be provided to us and would be useful for:

-   Public Images (e.g. UCL logo, frontpage image)
-   Javascript libraries (e.g. MathJax)
-   FontAwesome

In addition, some Moodle resources could also benefit from this but will need to be managed very carefully when we deploy updates of Moodle:  

-   Moodle's Javascript 
-   Moodle's css

For the later to be possible we would need to:

-   generate the new JS/CSS on Moodle PP and load it up into the CDN ahead of / during the deployment of minor updates 
-   Override Moodle's link to these assets - <https://ucldata.atlassian.net/browse/LNA-281>

This might mean creating a Moodle tool plugin / theme feature which overrides the includes for the css/js/theme and produces a downloadable set of all the compiled assets for us to load up into the CDN (or just take the files from the localcache folders on the app servers?). (script it if possible - see LNA-281)

# III\] Private content

Most of the files served by Moodle however are private, and should not been made public in a CDN. A private CDN (i.e. signed URLs) would however work, assuming we are careful about the GDPR implications of having these files around the world (will need to complete an [Information Risk Assessment](https://www.ucl.ac.uk/information-security/risk-management)).

One way forward which we've had on the radar/back-burner is looking at moving Moodle data (filedir) into object storage (interest was in the [deduplication of data use case](https://github.com/catalyst/moodle-tool_objectfs#sharing-files-across-environments-to-save-time)), there is a plugin for this which [supports a variety of Cloud providers](https://github.com/catalyst/moodle-tool_objectfs#currently-supported-object-stores) - <https://moodle.org/plugins/tool_objectfs>

Using AWS as an example, we could setup Moodle files to be stored  in AWS S3 and then setup the Cloudfront CDN seamlessly - <https://aws.amazon.com/cloudfront/features/?nc=sn&loc=2>

There is a work in progress in the object storage plugin to enabled support for Cloudfront - <https://github.com/catalyst/moodle-tool_objectfs/pull/206>

This is likely to have a significant impact on load times for files but is quite involved. We would probably need to have the HAC public cloud supplier selected before we go down one of these routes. However, the Moodle team already has first hand experience using AWS S3 and Lambda functions with the [Librelambda file converter](https://wiki.ucl.ac.uk/display/ISMoodle/Libre+lambda+file+converter+for+Moodle+Assignment).

# IV\] Miscellaneous

Look into:

-   HTTP/2 on UCL App servers (& F5s?) - <https://ucldata.atlassian.net/browse/LNA-277>
-   Pagespeed Apache module - <https://ucldata.atlassian.net/browse/LNA-278>
-   X-sendfile Apache module - <https://tn123.org/mod_xsendfile/>
-   Convert images into .webp format / compress images better

# V\] Alternative to II & III - Cloudflare

Digging into the Moodle forums and tracker, there is really no one bringing up the Moodle core code related aspects to using a public CDN for Moodle CSS and JS, which indicates it would be quite a bit of work code-wise to achieve.

However, it came apparent that **Moodle.org** which is built around Moodle, **uses Cloudflare for this purpose **- <https://www.cloudflare.com/performance/accelerate-internet-applications/>

This would be much simpler to implement as it would cache files with public cache-control headers into it's global CDN (i.e. all the Moodle JS/CSS/public images which are significant factors for the slow first paint) and be available at the exact same URL as it normally would.

Implementing Cloudflare comes with a couple of benefits, both for this and the wider scale up:

-   Global CDN & China specific Network
-   Uses HTTP/2 to speed up all traffic
-   Web content optimisation (i.e. compressing images on the fly)
-   DDoS protection
-   Rate limiting → can put users into a queue if traffic reaches beyond what Moodle can handle so that performance is not degraded to those allowed in 
-   ...


