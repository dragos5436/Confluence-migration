# The Many Caches of Moodle

-   [Overview](#TheManyCachesofMoodle-Overview)
-   [Current Config](#TheManyCachesofMoodle-CurrentConfig)
    -   [Viewing Cache Config](#TheManyCachesofMoodle-ViewingCacheConfig)
    -   [Available Cache Store Instances:](#TheManyCachesofMoodle-AvailableCacheStoreInstances:)
    -   [Store Instances used for caches of given type when no explicit mappings are present](#TheManyCachesofMoodle-StoreInstancesusedforcachesofgiventypewhennoexplicitmappingsarepresent)
    -   [Explicit Mappings](#TheManyCachesofMoodle-ExplicitMappings)
-   [Cache Quick Guide](#TheManyCachesofMoodle-CacheQuickGuide)
    -   [Types of Cache](#TheManyCachesofMoodle-TypesofCache)
    -   [How Caches Are Used](#TheManyCachesofMoodle-HowCachesAreUsed)

Overview

Moodle has native caching capability, temporarily storing the results of time-consuming processes so that they can be quickly reused in subsequent requests rather than having to generate that content for every request. The upshot is less load on the database and filesystem, and faster overall performance.

The caching Moodle does is all for content generated internally in Moodle. It is distinct from the concept of HTTP response caching (such as can be provided by Apache or Varnish). UCL Moodle currently does **not** have any form of HTTP caching in place.

# Current Config

Current config is listed in this section, see below sections for explanation.

## Viewing Cache Config

Cache config can be viewed at: <https://moodle.ucl.ac.uk/cache/admin.php>

Redis App Cache can be monitored at <https://moodle.ucl.ac.uk/ucl_tools/redis-stats.php?s=2>

## Available Cache Store Instances:

These correspond to the "Configured store instances" section of the cache admin page

| Instance Name                                                                                                                                                                                                                                           | Type       | Location      | In use?                                                                                      |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|---------------|----------------------------------------------------------------------------------------------|
| redis\_cache\_mdl\_backend\_01                                                                                                                                                                                                                          | Redis      | mdl-backend01 | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />   |
| redis\_cache\_mdl\_backend\_02 <img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" />                                                                                                                  | Redis      | mdl-backend02 | <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> |
| Default File Store for application caches                                                                                                                                                                                                               | Filesystem | /moodlefs     | <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> |
| Default Static store for request caches                                                                                                                                                                                                                 | Filesystem | local ( ? )   | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />   |
| Default Session store for session caches <img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /><img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> | Redis      | mdl-nfs01     | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />   |

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> This is a spare instance that can be quickly switched to if there are problems on mdl-backend01

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /><img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> This would normally be a file-based cache (moodle data dir), however it has been configured for Redis on NFS via settings in config.php

## Store Instances used for caches of given type when no explicit mappings are present

These are the default caching instances to use if nothing else is mapped for the cache of that type for a particular plugin or component (as can be set in the "Known cache definitions" section of the cache admin page)

Corresponds to "Stores used when no mappings are present" section at bottom of cache admin page.

| Cache type  | Cache instance used                                                                                                                    |
|-------------|----------------------------------------------------------------------------------------------------------------------------------------|
| Application | redis\_cache\_mdl\_backend\_01 <img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> |
| Session     | Default Session store (Redis on mdl-nfs01)                                                                                             |
| Request     | Default Request store                                                                                                                  |

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> This was the setting changed in CR5447, switching from the default file store (/moodlefs)

Hence all plugin and component caches of type Application will use Redis on mdl-backend01. All Session type caches will use the Default Session store (which is Redis on mdl-nfs01 as configured in config.php)

## Explicit Mappings

There is currently no explicit mapping of a cache to a store instance, as set in the "Known cache definitions" section of the cache admin page:

| Definition | Component | Cache Store Instance |
|------------|-----------|----------------------|

Further improvement on our setup would look at having redis directly on each VM instance and mapping some of those definitions to local instance.

All other cache definitions use the default cache instance for their type (as described above).

# Cache Quick Guide

## Types of Cache

Moodle supports caching of three types of internally generated data:

-   Application
-   Session
-   Request

There are descriptions of these in the Moodle caching docs here: **<https://docs.moodle.org/37/en/Caching>**

However, for brevity:

-   The **Application** type caches data that can be reused across the whole of Moodle, such as compiled CSS or JavaScript
-   The **Session** type caches data associated with a single user session
-   The **Request** type caches data for a single request

## How Caches Are Used

Each plugin and component in Moodle can define one or more caches for that plugin or component to use, and each of these caches is assigned one of the types above.

You can see in the 'Known Cache Definitions' section of the Moodle cache config page all the caches defined by all plugins and components.

Physical backend cache instances themselves are defined by the cache backend technology type and a defined instance of that backend type. Some types can have multiple instances configured and available. For example you can configure Moodle to be aware of multiple different Redis instances on different servers, although it doesn't necessarily have to use them all to store cache data in. Moodle's terminology for a cache backend technology type is a "Cache Store", and a particular instance of a backend type is a "Cache Store Instance".

Once Moodle has some cache store instances configured they can be mapped to the caches defined by the plugins and components. The plugin or component will then use the mapped backend for its cache. The mappings can be done on a plugin/component basis, or a default store instance can be set for each type of cache (Application, Session, Request) and all defined plugin / component caches will default to using the store instance for their corresponding type.
