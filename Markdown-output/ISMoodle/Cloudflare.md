# Cloudflare

# General Information

Cloudflare settings can be changed via its web portal or via its API. Some settings e.g. proxy\_read\_timeout can only be changed via API.

Useful Cloudflare portal link - <https://dash.cloudflare.com/8eb5e64668262260abccf9e3d8030271/moodle.ucl.ac.uk>

Useful Cloudflare portal link to monitor traffic and errors <https://dash.cloudflare.com/8eb5e64668262260abccf9e3d8030271/moodle.ucl.ac.uk/analytics/traffic>

# API Setup

Use tool like Postman to talk to the Cloudflare API.

The stable base URL for all Version 4 HTTPS endpoints is: <https://api.cloudflare.com/client/v4/>

Cloudflare API documentation <https://api.cloudflare.com/>

How to setup:

1 .Create API token in <https://dash.cloudflare.com/profile/api-tokens>

2. Add the newly created token to Postman authorisation tab

3. Test the endpoint e.g. GET https://api.cloudflare.com/client/v4/zones/

# Errors experienced by Moodle users due to Cloudflare

## Error 524: a timeout occurred

Error 524 indicates that Cloudflare successfully connected to the origin web server, but the origin did not provide an HTTP response before the default 100 second connection timed out. This can happen if the origin server is simply taking too long because it has too much work to do - e.g. a large data query, or because the server is struggling for resources and cannot return any data in time.

**Setting changed to resolve:** proxy\_read\_timeout (https://api.cloudflare.com/\#zone-settings-change-proxy-read-timeout-setting)

Only changeable via API.

-   Find [www.moodle.ucl.ac.uk](http://www.moodle.ac.uk/ "http://www.moodle.ac.uk") id with GET [https://api.cloudflare.com/client/v4/zones/](https://api.cloudflare.com/client/v4/zones/54ac3d28cb14ecc2e847408cc2941fce/settings/proxy_read_timeout "https://api.cloudflare.com/client/v4/zones/54ac3d28cb14ecc2e847408cc2941fce/settings/proxy_read_timeout")

-   Find current setting for proxy\_read\_timeout with GET <https://api.cloudflare.com/client/v4/zones/54ac3d28cb14ecc2e847408cc2941fce/settings/proxy_read_timeout>

-   Update proxy\_read\_timeout setting with PATCH <https://api.cloudflare.com/client/v4/zones/54ac3d28cb14ecc2e847408cc2941fce/settings/proxy_read_timeout> 

raw

**raw**

``` text
{
  "value":"1800"
}
```

Confirmation:

`proxy_read_timeout` set to 1800sec (old value 100sec)

**proxy\_read\_timeout**

``` text
{
    "result": {
        "id": "proxy_read_timeout",
        "value": "1800",
        "modified_on": "2022-02-03T14:27:48.380216Z",
        "editable": true
    },
    "success": true,
    "errors": [],
    "messages": []
}
```

## Upload errors of larger files e.g. course backups

**Setting changed to resolve:** Maximum upload size set to 500MB (old value 100MB) https://dash.cloudflare.com/8eb5e64668262260abccf9e3d8030271/moodle.ucl.ac.uk/network


