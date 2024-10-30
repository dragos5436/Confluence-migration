# Summary of changes made for March/April 2020 scale up

-   [Hardware](#SummaryofchangesmadeforMarch/April2020scaleup-Hardware)
-   [Redis](#SummaryofchangesmadeforMarch/April2020scaleup-Redis)
-   [Database](#SummaryofchangesmadeforMarch/April2020scaleup-Database)
    -   [MySQL](#SummaryofchangesmadeforMarch/April2020scaleup-MySQL)
    -   [Moodle](#SummaryofchangesmadeforMarch/April2020scaleup-Moodle)
    -   [ProxySQL](#SummaryofchangesmadeforMarch/April2020scaleup-ProxySQL)
-   [Monitoring](#SummaryofchangesmadeforMarch/April2020scaleup-Monitoring)

# Hardware

-   added 4 app servers
-   increased CPUs to 5 (from 2)on mdl-backend servers (Redis)
-   increased CPU to 5 (from 4) and RAM to 12GB (from 6GB) on mdl-nfs
-   increased CPU to 24 (from 12/6) and RAM to 128GB (from 48GB) on database master
-   Added 2 Proxysql (4CPU 16GB RAM each) servers, one in each datacenter

# Redis

-   move all shared Redis instances on mdl-backend (from mdl-nfs)
-   implement password protection on Redis instances
-   add Redis instances on each of the mdl-app servers covering caches which are safe not to have shared (e.g. language strings) - [Redis Tuning Moodle performance April 2020](Redis_Tuning_Moodle_performance_April_2020)
-   setup Redis for Session Cache (which is different than Session Store)
-   spread the shared Application cache Store mappings over 3 instances - [Redis Mappings](Redis_Mappings)
-   increase Redis process priority on mdl-app servers

# Database

## MySQL

-   [Moodle Database Performance tuning April 2020](Moodle_Database_Performance_tuning_April_2020)

## Moodle

-   Reduce amount of slow (800ms+) filter queries (<https://tracker.moodle.org/browse/MDL-67428>)
-   implement read/write splitting in Moodle code (<https://tracker.moodle.org/browse/MDL-19711>)
-   writes still go directly to database master (mdl-db01)
-   reads go to proxysql in relevant datacenter

## ProxySQL

-   caches 10 of the most time consuming / frequently used queries
-   TP instance sends all SELECT queries to mdl-db02
-   Slough instance just caches those 10 queries and directs all queries to master (until we add database slaves in Slough) 

# Monitoring

-   move to EU hosted New Relic, with upgraded new-relic agent in order to get Geographical insights at a discounted price - <https://newrelic.org/relief>

