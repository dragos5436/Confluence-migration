# The grand caching discussion

The wrap up

<https://docs.moodle.org/dev/Cache_API#Localized_stores_for_distributed_high_performance_caching>

Docs/Tracker References:

<https://docs.moodle.org/38/en/APC_user_cache_(APCu)>

<https://github.com/moodle/moodle/commit/4350192a8de9eddc840af4664742aba50ccf9783>

<https://tracker.moodle.org/browse/MDL-41492>

<https://github.com/moodle/moodle/tree/master/cache/locks/file>

<https://tracker.moodle.org/browse/MDL-67025>

<https://tracker.moodle.org/browse/MDL-61305>

<https://tracker.moodle.org/browse/MDL-58018>

<https://tracker.moodle.org/browse/MDL-67020>

<https://en.wikipedia.org/wiki/Cache_stampede#Locking>

<https://tracker.moodle.org/browse/MDL-65676>

<https://tracker.moodle.org/browse/MDL-66151>

Alexander Bias, \[14 Apr 2020 at 12:48:24\]:

Hey all,

I am currently trying to understand caching backends with the goal to move away from our current file cache to something more sophisticated.

This is mainly a performance question, but also a developer question.

Reading about APCu on https://docs.moodle.org/38/en/APC\_user\_cache\_(APCu), I read "\[...\] it is recommended that you regularly purge or restart APC". And I think "really??"

On the other hand, I read on https://www.php.net/manual/de/apcu.configuration.php\#ini.apcu.ttl that the cache is expunged as soon as it runs full.

So my question is: If I setup up APCu and assign a bunch of memory to it, will APCu be a fire-and-forget cache or do I have to do something else for really regularly purging APC or not...?

Brendan Heywood, \[14 Apr 2020 at 14:07:21\]:

we never purge apc, we make it big enough to hold what it needs to hold, and we only put things into it which see a lot of actions, ie string cache. When we deploy containers get thrown away and we get fresh apc

for everything else we use redis, except for a couple very big things like course modinfo which we leave in file cache

very soon MDL-41492 will be ready and we'll be managing cache config in code

MoodleBot, \[14 Apr 2020 at 14:16:04\]:

MDL-41492 - Allow alternate muc cache config class (eg allow setup in pure $CFG / config.php)

**Status:** Development in progress

**Assignee:** Peter Burnett

**Reporter:** Jai Gupta

**Votes:** 10

<https://tracker.moodle.org/browse/MDL-41492>

Andrew Nicols, \[14 Apr 2020 at 15:09:21\]:

Purging is bad

Generally speaking

As Brendan says it’s best to make it other enough to fit the entire core base that it handles. So Moodle, plus anything else the site hosts.

M

But really Redis is where you’ll find biggest improvements

Consider purging APCu on upgrades etc.

Alexander Bias, \[14 Apr 2020 at 19:04:44\]:

Thanks @brendanheywood and @dobedobedoh for your feedback. I will deploy Redis besides APCu soon, so this should then align with your proposals.

Brendan Heywood, \[15 Apr 2020 at 03:21:37\]:

Another thing depending on your stack, if you scale frontends up and down wildly on demand then it's better to have local / primary and shared / final caches for any cache items which support it, ie apcu for strings, but backed by shared redis. That way when you scale up during load events your front ends warm up much quicker instead of total cache misses and hit the db more at a time when you least want it to. Especially important for course mod info, read this horror story: https://tracker.moodle.org/browse/MDL-67020

Tim Hunt, \[15 Apr 2020 at 08:48:14\]:

You know that MUC application caches can't be put in local storage, right?

That but you linked to is bogus.

Brendan Heywood, \[15 Apr 2020 at 08:49:13\]:

if they are localizable then you can, whether they are application or request or session isn't a factor

and depending on how you do upgrades, you can safely be more aggresive, ie there are caches we store locally even though they are technically not localizable because we know they never change in the lifetime of the docker container

Tim Hunt, \[15 Apr 2020 at 08:50:41\]:

coursemodinfo is not localisable.

If you are dong non-supported things like this, then you will have to hack core code to support it,.

Brendan Heywood, \[15 Apr 2020 at 08:51:54\]:

yes it is

Tim Hunt, \[15 Apr 2020 at 08:51:56\]:

The global lock on that cache was added to massively improve scalability.

Merdeka Belajar, \[15 Apr 2020 at 07:48:34\]:

im success to running redis for handle moodle session

Tim Hunt, \[15 Apr 2020 at 08:48:14\]:

You know that MUC application caches can't be put in logal storage, right?

That but you linked to is bogus.

Brendan Heywood, \[15 Apr 2020 at 08:49:13\]:

if they are localizable then you can, whether they are application or request or session isn't a factor

and depending on how you do upgrades, you can safely be more aggressive, ie there are caches we store locally even though they are technically not localizable because we know they never change in the lifetime of the docker container

Tim Hunt, \[15 Apr 2020 at 08:50:41\]:

coursemodinfo is not localisable.

If you are dong non-supported things like this, then you will have to hack core code to support it,.

Brendan Heywood, \[15 Apr 2020 at 08:51:54\]:

yes it is

Tim Hunt, \[15 Apr 2020 at 08:51:56\]:

The global lock on that cache was added to massively improve scalability.

Tim Hunt, \[15 Apr 2020 at 08:52:43\]:

I was looking at the code.

Brendan Heywood, \[15 Apr 2020 at 08:53:00\]:

the global lock is logically right is you use a shared cache, or if you have a stacked cache, it's wrong if you only have local caches

Tim Hunt, \[15 Apr 2020 at 08:53:20\]:

How do you expect it to work when one use edit the course page?

<https://github.com/moodle/moodle/blob/master/lib/db/caches.php#L217> - does not say local is OK, so it is not.

Brendan Heywood, \[15 Apr 2020 at 08:53:39\]:

the scope of the lock should be the same as the scope of the cache, it should use the 'cache lock api' and not the 'lock api'

Tim Hunt, \[15 Apr 2020 at 08:53:57\]:

There is a cache lock API?

Brendan Heywood, \[15 Apr 2020 at 08:54:45\]:

yes, but it gets almost no use, but either way in this case its better to use a stacked cache

Tim Hunt, \[15 Apr 2020 at 08:55:16\]:

I repeat "How do you expect it to work when one use edits the course page?"

Brendan Heywood, \[15 Apr 2020 at 08:55:52\]:

in the link you sent, read line 222:        'canuselocalstore' =&gt; true,

Tim Hunt, \[15 Apr 2020 at 08:56:11\]:

OK, that is a bug

Brendan Heywood, \[15 Apr 2020 at 08:56:59\]:

from memory it was localizing modinfo which drove the entire concept of localizable caches

Brendan Heywood, \[15 Apr 2020 at 08:56:59\]:

Tim Hunt, \[15 Apr 2020 at 08:57:03\]:

Added here

Well, where were any of tge peopleinvolved with that hiding, when sam implemented the global lock?

And, where is this alleged cache lock API defined?

Or documented?

Brendan Heywood, \[15 Apr 2020 at 08:59:15\]:

<https://github.com/moodle/moodle/tree/master/cache/locks/file>

I've seen 3rd party cache lock classes for redis

Tim Hunt, \[15 Apr 2020 at 09:05:12\]:

OK, so to answer the question: "The version of coursemodinfo is tracked in the database so if the data changes, it won't find the version cache key in the localstore and will generate it."

Brendan Heywood, \[15 Apr 2020 at 09:06:02\]:

yes, all localizable caches need a rev number, or a content hash or similar

Tim Hunt, \[15 Apr 2020 at 09:06:37\]:

OK, So I was wrong. Sorry.

However, this corner of Moodle is really badly understood.

I mean, you have a place where serveral integrators, and two people from the OU who have been contributing to Moodle core for 15+ years, can develop and integrate incorrect code.

Brendan Heywood, \[15 Apr 2020 at 09:07:31\]:

it took me ages, and generally pain during scale, to get my head around it all

Tim Hunt, \[15 Apr 2020 at 09:08:06\]:

I thought I had. We hve got deep into cache system while fixing perf issues at the OU, and we still implemented the wrong sort of lock.

Prt of the message of that is, when you learn something, make sure it is documented where poeple will see it.

Probably we need a warning on the lock API page, saying "Don't use this if you should be using cache lock API instead."

The PHPdocs added in https://github.com/moodle/moodle/commit/4350192a8de9eddc840af4664742aba50ccf9783 are good, but you will only find them if you know you should be using this.

Also, doesn't theme CSS rebuild also wrongly use a global lock.

Andrew Nicols, \[15 Apr 2020 at 09:10:01\]:

I think so

Tim Hunt, \[15 Apr 2020 at 09:10:03\]:

I am sure we copied modinfo caching from somewhere else

Andrew Nicols, \[15 Apr 2020 at 09:10:08\]:

Ididn't know about the cache locking

Brendan Heywood, \[15 Apr 2020 at 09:10:09\]:

it isn't helped because non of the built in cache stores have a paired lock class to go with it

Tim Hunt, \[15 Apr 2020 at 09:10:19\]:

Right.

Brendan Heywood, \[15 Apr 2020 at 09:10:21\]:

the only cache lock class in core in files, and files are just the worst

Tim Hunt, \[15 Apr 2020 at 09:10:29\]:

CAche lock API looks seriously unloved.

Andrew Nicols, \[15 Apr 2020 at 09:10:34\]:

postgres is in core

Tim Hunt, \[15 Apr 2020 at 09:10:45\]:

Onlyu for lock API, not chache lock

Brendan Heywood, \[15 Apr 2020 at 09:10:48\]:

no, postgres is lock api, not cache lock api

Andrew Nicols, \[15 Apr 2020 at 09:10:53\]:

Ah blast

Tim Hunt, \[15 Apr 2020 at 09:11:12\]:

Yes.

Brendan Heywood, \[15 Apr 2020 at 09:11:53\]:

you could easily make a bridge between the cache lock api and the lock api, so it locks to say the scope hostname of the front end

here is one I prepared earlier

<https://tracker.moodle.org/browse/MDL-67025>

MoodleBot, \[15 Apr 2020 at 09:12:27\]:

MDL-67025 - Implement a Cache lock type using the Lock API

**Status:** Open

**Reporter:** Brendan Heywood

Tim Hunt, \[15 Apr 2020 at 09:12:45\]:

That looks sensible.

Do we really need a cache lock API if we have that?

Brendan Heywood, \[15 Apr 2020 at 09:13:15\]:

yes because they are tightly coupled to the cache api

Tim Hunt, \[15 Apr 2020 at 09:14:52\]:

Yes, that is what I meant! So, the cache API should help you. Something like

$lock = $cache-&gt;obtain\_lock\_to\_rebuild($key);

try {

    // Do rebuild.

    $cache-&gt;set($key, $value);

} finally {

    $lock-&gt;release();

}

With special case $key == cache\_lock::ALL or something if needed.

Brendan Heywood, \[15 Apr 2020 at 09:18:40\]:

yeah, I think you declare a writelock and it locks it for you on set, but you really want to lock earlier when you start to generate it like your code

Tim Hunt, \[15 Apr 2020 at 09:19:32\]:

Yes.

I just linked your new issue to MDL-61305 where the lock was added.

MoodleBot, \[15 Apr 2020 at 09:26:08\]:

MDL-61305 - Performance: Modinfo cache can get built in parallel

**Status:** Closed - Fixed

**Assignee:** Sam Marshall

**Reporter:** Sam Marshall

**Integrator:** Andrew Nicols

**Fix Versions:** 3.3.5, 3.4.2

**Votes:** 3

<https://tracker.moodle.org/browse/MDL-61305>

Alexander Bias, \[15 Apr 2020 at 11:31:12\]:

I would have one more question about caching @brendanheywood or anyone else:

Looking at /cache/admin.php, I can add a Redis backend and map caches with "Session" mode to this Redis backend.

On the other hand, in config.php, I can set a Redis session handler:

$CFG-&gt;session\_handler\_class = '\\core\\session\\redis'

Now my question is: If I use this Redis session handler in config.php, will the "Default session store for session caches" from /cache/admin.php also be located in Redis automatically? Or are these two different things?

If they are different, is there anything to observe if I put both things into the same Redis backend?

Tim Hunt, \[15 Apr 2020 at 11:31:53\]:

Session storage is different from session caches

Sessions are sessions. Session caches are caches with semantics tied to the life-time of the user's session.

Alexander Bias, \[15 Apr 2020 at 11:36:00\]:

So, basically in sessions the things which are available in $\_SESSION are stored. And in session caches, other things specific to this user session can be stored. Right?

Tim Hunt, \[15 Apr 2020 at 11:36:21\]:

Right, and large $\_SESSION is a performance issue

Brendan Heywood, \[15 Apr 2020 at 11:40:14\]:

And splitting 'cached' stuff in session cache from 'stored' stuff in the session will become way more important once the readonly sessions tracker lands https://tracker.moodle.org/browse/MDL-58018 . ie if you open a request in readonly mode, you can't save to the session, but you can still generate and store expensive things into a session store

MoodleBot, \[15 Apr 2020 at 11:40:15\]:

MDL-58018 - Reduce session lock contention with opt-in READ\_ONLY\_SESSION

**Status:** Integration review in progress

**Assignee:** Mark Nelson

**Reporter:** Adam Eijdenberg

**Integrator:** Eloy Lafuente (stronk7)

**Votes:** 24

Alexander Bias, \[15 Apr 2020 at 11:41:57\]:

Thanks, Brendan.

Do you also have some insights if there if anything to observe if I put Sessions and Session caches into the same Redis backend?

Brendan Heywood, \[15 Apr 2020 at 11:44:19\]:

if they have different prefixes should be ok, I'd have to double check code to make sure if things are purged they don't leak and purge the other stuff, ie a cache purge logs people out. memcache had issues like that. We split them into different redis either way for multiple reasons, its safer

Jan Dageförde, \[15 Apr 2020 at 11:47:50\]:

This made me wonder whether there actually is a difference. I was thinking, ultimately, session-scoped caches would be stored in $\_SESSION. But, well, 1) I was wrong, because 2) $\_SESSION is not the same as $SESSION. oops.

(anyway, session caches do seem to be stored in $SESSION, but that is a Moodle-specific global variable, not to be confused with the PHP superglobal $\_SESSION. That's good to know, I guess :) )

Andrew Nicols, \[15 Apr 2020 at 11:50:28\]:

Session caches are only named “session” because they cache things for the length of no it session

David Mudrák, \[15 Apr 2020 at 12:19:10\]:

And afaik, the PHP's superglobal $\_SESSION should not be used and Moodle code (especially plugins) should preferably use session MUC caches, or Moodle's $SESSION wrapper.

as a rule of thumb, in 99.99% yo do not need to use superglobals directly in Moodle, unless you work on a low level core thing

Eloy Lafuente, \[15 Apr 2020 at 12:25:15\]:

+1

David Mudrák, \[15 Apr 2020 at 12:26:59\]:

I think I am missing this point. So what is the essential difference between two two APIs/implementations and where is each of them to be used?

Brendan Heywood, \[15 Apr 2020 at 12:28:23\]:

the 'lock api' is a general purpose api for any locking, and it is global in nature but can be made to lock at a finer grain through the use of the key, ie you could use the host name in the key to do per host level locking if you wanted

David Mudrák, \[15 Apr 2020 at 12:28:48\]:

right

Brendan Heywood, \[15 Apr 2020 at 12:29:02\]:

the 'cache lock api' is a specific api for locking a cache store for writes, it predates the 'lock api', conceptually similar

David Mudrák, \[15 Apr 2020 at 12:29:23\]:

But not every cache store has it, right?

Brendan Heywood, \[15 Apr 2020 at 12:29:30\]:

the subtly comes into play when you have a localized cache store which is only local and isn't backed by a shared cache

Jan Dageförde, \[15 Apr 2020 at 12:29:52\]:

Sure, +1. But those two variables are just a small typo apart ;)

Brendan Heywood, \[15 Apr 2020 at 12:30:11\]:

no, cache stores and cache locks are different, but some services could do both like redis could

core only ships with cache locks for files, which is horrible, it doesn't have any high performance locks like say a redis one or a ps advisory lock one

so what happens in cminfo is a cache hit, you grab a \*global\* lock, generate the data and save it to a \*local\* cache, then release the lock. In some other process it was blocked waiting for the lock, it releases and now we should expect the cache to b filled but its still empty on that other boxes local cache

David Mudrák, \[15 Apr 2020 at 12:33:40\]:

"now we should expect the cache to be filled" - how that?

Just because it was locked, does not imply it would become freshly available

Brendan Heywood, \[15 Apr 2020 at 12:34:13\]:

so strategy 1 is we rewrite those bits to use the cache lock api instead of the lock api, and we implement some proper cache locks in core. OR we simply document that all localizable caches should be backed by a shared cache, which how we are working around it, and is better for other reasons

Tim Hunt, \[15 Apr 2020 at 12:35:02\]:

This locking was implemented by people who did not reaslise that this cache might be non-global

Oh! backing by a shared cache. Nice!

Brendan Heywood, \[15 Apr 2020 at 12:35:41\]:

and look its a very subtle bug that only happens at mega scale, its easy to miss there is no judgement on anyone

Tim Hunt, \[15 Apr 2020 at 12:36:22\]:

Don't worry. I did not feel judged.

It probalby is a valid judgement on how bloddy complicated Moodle development has got.

David Mudrák, \[15 Apr 2020 at 12:37:01\]:

I still don't get the point where one node is waiting for the global lock to be released, and then makes assumption on whether or not its local cache is fresh

Tim Hunt, \[15 Apr 2020 at 12:37:28\]:

Did you read the tracker issue?

David Mudrák, \[15 Apr 2020 at 12:37:35\]:

No

Tim Hunt, \[15 Apr 2020 at 12:37:37\]:

And look at the code.

Brendan Heywood, \[15 Apr 2020 at 12:37:37\]:

<https://tracker.moodle.org/browse/MDL-67020>

MoodleBot, \[15 Apr 2020 at 12:37:38\]:

MDL-67020 - The coursemodinfo cache item doesn't scale when localized due to global locking

**Status:** Open

**Reporter:** Brendan Heywood

**Votes:** 2

David Mudrák, \[15 Apr 2020 at 12:38:24\]:

If it disqualifies me, I beg your pardon

Tim Hunt, \[15 Apr 2020 at 12:38:47\]:

No, it is just that Brendan already wrote a good description of the problem.

So, you could read that, rather whatn getitng us to say it again

David Mudrák, \[15 Apr 2020 at 12:39:11\]:

Sure. Sorry.

Andrew Nicols, \[15 Apr 2020 at 12:40:46\]:

I have read it... is it basically that after waiting for the lock we don’t check to see if it now exists?

Tim Hunt, \[15 Apr 2020 at 12:40:55\]:

No.

No exactly.

Brendan Heywood, \[15 Apr 2020 at 12:43:03\]:

in any caching system, if you are blocked on a read or write then there is a normal expectation someone else is writing to the cache and when it unblocks you should then have that data, but after waiting you still don't have it

David Mudrák, \[15 Apr 2020 at 12:46:34\]:

hmmm

Brendan Heywood, \[15 Apr 2020 at 12:50:28\]:

<https://en.wikipedia.org/wiki/Cache_stampede#Locking>

David Mudrák, \[15 Apr 2020 at 12:54:49\]:

...he example in the issue of the 20 parallel requests each waiting for a single global lock, makes it clear. Thanks for that good description.

Brendan Heywood, \[15 Apr 2020 at 12:55:32\]:

while we are on the topic of hairy complex MUC bugs, this on has some similarities

<https://tracker.moodle.org/browse/MDL-65676>

MoodleBot, \[15 Apr 2020 at 12:55:34\]:

MDL-65676 - More performance improvement for sites with a lot of role / capability overrides which keep changing so MUC is purged

**Status:** Open

**Reporter:** Brendan Heywood

**Votes:** 2

Brendan Heywood, \[15 Apr 2020 at 12:57:08\]:

the pattern I'd like to see for stuff like this is essentially never purging a cache item, you change some state, then build the new cache data and insert it under the new revision number ready to go, and then you bump the revision so everything jumps from the old warm cache to the new warm cache

no opportunity for a stampede

Tim Hunt, \[15 Apr 2020 at 12:58:30\]:

Except, that requries duplicate code everywhere the cache is changed. Whereas the current logic of build on read if missing is simpler

And simpler =&gt; less buggy.

But I can see why from your POV you prefer the other.

We added the lock to modinfo precisely becasue we were seeing a cache stampede there.

Brendan Heywood, \[15 Apr 2020 at 12:59:42\]:

sure there are always trade offs between simplicity and scalability, we just keep hitting new bottlenecks

Tim Hunt, \[15 Apr 2020 at 13:00:24\]:

Yes.

Brendan Heywood, \[15 Apr 2020 at 13:01:41\]:

conceptually I really like the datasource as it has the power to solve them at the same time, but they've seen almost no use

Tim Hunt, \[15 Apr 2020 at 13:01:59\]:

I use it for question definitions.

Brendan Heywood, \[15 Apr 2020 at 13:02:43\]:

datasource are not easily compatible with localizable caches either

Tim Hunt, \[15 Apr 2020 at 13:03:20\]:

Well, we have no way to clear an entry from all local caches.

Brendan Heywood, \[15 Apr 2020 at 13:04:28\]:

exactly, the design of the api isn't right, you should be able to declare a version / hash

you should not need to clear entries

Alistair Spark, \[15 Apr 2020 at 20:35:07\]:

@brendanheywood Out of interest why APC rather than a local redis instance?

Less overheads?

Alistair Spark, \[15 Apr 2020 at 21:11:39\]:

@timhunt And it’s hard to explain how the session store is a store when the session key is stored in the database regardless

Brendan Heywood, \[15 Apr 2020 at 23:05:01\]:

Alistair  re APC vs redis, apcu is lightning fast so speed isn't a discriminating factor, redis is another service on the front ends to support / monitor etc, and we use aws elasticache redis for the shared redis cache. For largish cache items local file cache on ssd is very fast, its only shared / remove files with the extra latency and write locks which is not optimal

Brendan Heywood, \[15 Apr 2020 at 23:08:22\]:

I'd also like to see the session manager refined so that the session store can fully manage the session metadata so it never touches the db at all https://tracker.moodle.org/browse/MDL-66151

MoodleBot, \[15 Apr 2020 at 23:08:22\]:

MDL-66151 - Allow session stores to fully manage the session (eg never touch mdl\_sessions)

**Status:** Open

**Reporter:** Brendan Heywood

Alistair Spark, \[15 Apr 2020 at 23:12:56\]:

makes sense, we're load testing with local instances of redis and the need to open the ports up to be able to monitor them is on my to-do list.  and using elasticache would explain why you wouldn't hit the bottleneck of Redis being single threaded


