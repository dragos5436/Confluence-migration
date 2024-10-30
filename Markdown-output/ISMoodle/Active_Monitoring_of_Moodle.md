# Active Monitoring of Moodle

For key dates where major load is expected (e.g. Start of Academic Year, Exam Period, etc) we take a pro-active approach to monitoring the Moodle service.

This is a sub-set of available [Monitoring](Monitoring), the bits which are critical to look at.

I\] Concurrent users

From Google Analytics live stats - <https://analytics.google.com/analytics/web/#/realtime/rt-overview/a4551567w178622850p177076510/> - we can gather the number of concurrent users in Moodle (users/1 minute period)

II\] Service performance

New Relic's web transaction time, Apdex and throughput are key performance metrics - <https://rpm.eu.newrelic.com/accounts/2674281/applications/36215898>

III\] Error monitoring

New Relic's Error Analytics page is good at breaking down by error class. <https://rpm.eu.newrelic.com/accounts/2674281/applications/36215898/filterable_errors#/table?top_facet=transactionUiName&barchart=barchart>

These shouldn't be a concern:

-   require\_login\_exception (user needs to login)
-   dml\_missing\_record\_exception (broken link to a file or activity which has since been deleted)

These are really bad:

-   dml\_read\_exception (Unable to read from the database in some way)
-   dml\_write\_exception (Unable to write to the database for some reason)

Generally good to monitor that page and investigate potential causes to bring error rate down.

IV\] Server CPU/RAM usage

On the servers run htop to see CPU/memory usage

Good to keep an eye on the bottlenecks:

-   mdl-db01 (DB master)
-   mdl-db-02 (DB slave used by TP app servers for read-only queries)
-   mdl-backend01 (Redis) - can enhance monitoring with Redis Insights but hasn't usually been needed
-   mdl-nfs01 (data store)
-   mdl-app0{1..8} (Apache) - this should naturally provide a bottleneck/rate-limit traffic so as not to overload Database.

V\] Database monitoring

Monitor the concurrent connections and is nowhere near max\_connections.

``` java
SELECT * FROM INFORMATION_SCHEMA.PROCESSLIST;
SHOW global variables like 'max_connections';
```

The moment active connections reach max\_connections, new connections will be dropped and result in dml\_read\_exception/dml\_write\_exception and generally Moodle throwing errors to users.


