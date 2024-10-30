# Redis Tuning Moodle performance April 2020

1) Remove 3 CPUs from mdl-nfs01.ad.ucl.ac.uk

2) Add 3CPUs to mdl-backend01.ad.ucl.ac.uk and mdl-backend02.ad.ucl.ac.uk

3) Setup 3 additional Redis Instances on mdl-backend prod (Puppet)

4) Go to <https://moodle.ucl.ac.uk/cache/admin.php> and add 75 instances of Redis:

-   One called "localhost" with server localhost:6379
-   One called "backend01-6381" with server mdl-backend01.ad.ucl.ac.uk:6381 and prod Redis password
-   One called "backend01-6382" with server mdl-backend01.ad.ucl.ac.uk:6382 and prod Redis password
-   One called "backend01-6383" with server mdl-backend02.ad.ucl.ac.uk:6383 and prod Redis password
-   One called "backend02-6381" with server mdl-backend02.ad.ucl.ac.uk:6381 and prod Redis password
-   One called "backend02-6382" with server mdl-backend02.ad.ucl.ac.uk:6382 and prod Redis password
-   One called "backend02-6383" with server mdl-backend02.ad.ucl.ac.uk:6383 and prod Redis password

5) Rename existing stores:

-   "mdl-backend01" to "backend01-6379"
-   "mdl-backend02" to "backend02-6379"

6) Assign to localhost Redis instances (the ones running locally on each of the app servers) the following store mappings:

| Definition                                                         | Mode        | Component              | Area          | Store mappings |
|--------------------------------------------------------------------|-------------|------------------------|---------------|----------------|
| Accumulated information about modules and sections for each course | Application | core                   | coursemodinfo | localhost      |
| HTML Purifier - cleaned content                                    | Application | core                   | htmlpurifier  | localhost      |
| Language string cache                                              | Application | core                   | string        | localhost      |
| List of available languages                                        | Application | core                   | langmenu      | localhost      |
| Google file IDs for folders in the system account                  | Application | repository\_googledocs | folder        | localhost      |
| OneDrive file IDs for folders in the system account                | Application | repository\_onedrive   | folder        | localhost      |

These are the store mappings Moodle says are safe to run inconsistently "This cache can be safely mapped to a store that is local to each webserver"

7) Spread evenly the remaining store mappings between the following 3 store instances:

-   backend01-6379
-   backend01-6381
-   backend01-6382

See [Redis Mappings](Redis_Mappings) as an example

8) Setup Session Caching on Redis, by going to "Stores used when no mapping is present" and editing the mapping for Session to "backend01-6383"


