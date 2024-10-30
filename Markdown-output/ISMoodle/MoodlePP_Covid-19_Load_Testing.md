# MoodlePP Covid-19 Load Testing

# /\*\*/ Resource and Environment Test Environment App/Database Environment Test Deliverables Test Plan Business Requirements Technical Requirements (will be adjusted an test are performed) Requirements Traceability Matrix Test Cases Pass Results Results Setting Changes Results Work Stream Web Services Results Work Stream Database Results mysql 5.7 vs 8 Direct read+write/read (OLD) Cluster Router (OLD) NEW Direct read+write/read NEW Direct read only NEW Full Router NEW Fail Over PHP 7.3 Moodle Cloud AWS Final Overall Results

# Resource and Environment

### Test Environment

| Hardware    | Spec          | Software   | Testing Tools                     |
|-------------|---------------|------------|-----------------------------------|
| csuczmpca01 
              
 csuczmpca02  
              
 csuczmpca03  
              
 csuczmpca04  
              
 csuczmpca05  | 1 cpu         
                 
  8 GB           
                 
  100GB storage  | Windows 10 
               
   Jmeter      | Requirements Tracking Tool - Jira 
                                       
    Bug Tracking Tool - Jira           
                                       
    Automation Tools - Jmeter          |

### App/Database Environment

| DataCentre       | App                            | Database        |
|------------------|--------------------------------|-----------------|
| TP (10.37..)     | mdl-app02p, 04p, 06p, 08p, 10p | mdl-dbc02p      |
| Slough (10.29..) | mdl-app01p, 03p, 05p, 07p, 09p | mdl-dbc01p, 03p |

# Test Deliverables

### Test Plan

1.  Phase 1 – Analysis
    -   Access to the UCL Google Analytics account
    -   Allocated persons for query response during analysis phase
    -   Access to infrastructure monitoring for busy periods to reconcile against Google analytics

        findings

    -   Review and analyse analytics data

    -   Outline load test scripts/profiles for development

    -   Discuss and agree/approve with UCL to progress

2.  Phase 2 – Script Development – Daily load and increased load
    -   Access to the UCL Moodle pre-production environment

    -   Allocated persons for query response during script development phase

    -   Access to agreed courses/modules and suitable access privilege

    -   Develop testing scripts and test functionality

    -   Develop testing load parameters and discuss with UCL for confirmation

    -   Discuss and agree/approve with UCL to progress to next phase – running tests

3.  Phase 3 – Run Load tests
    -   Access to the UCL Moodle pre-production environment

    -   Allocated persons for query responses and full stack monitoring during load tests

    -   Access to infrastructure monitoring outputs to correlate to the JMeter data in readiness for insight reports

    -   Run J-Meter load test

    -   Collaborate with stakeholders at UCL to monitor results from all monitoring available.

    -   Discuss and agree/improve load tests and re-run if required

    -   Capture data from all sources in readiness for insight reports

    -   Discuss any bottlenecks and visible issues immediately.

4.  Phase 4 - Sign off

### Business Requirements

| Requirements ID | Requirement                                        |
|-----------------|----------------------------------------------------|
| 1               | how much general usage load can Moodle handle      |
| 2               | how many submissions can Moodle handle             |
| 3               | how many quizzes can Moodle handle                 |
| 4               | how many quizzes and submissions can Moodle handle |

### Technical Requirements (will be adjusted an test are performed)

Technical ID
Requirements
Number of users
Errors
NR Apdex
Loading Times (s)
1
2000-2500
&lt; 1%
1
1 - 1.5
2
2500-3000
&lt; 2%
0.9
1.5 - 2
3
3000-3500
&lt; 3%
0.8
2 - 2.5
4
3500-4000
&lt; 4%
0.7
2.5 - 3
5
4000-4500
&lt; 5%
0.6
3 - 3.5
6
4500-5000
&lt; 6%
0.5
3.5 - 4

###  Requirements Traceability Matrix

| Business ID | Technical ID | Test ID |
|-------------|--------------|---------|
| 1           | 1            | 1-29    |
| 1           | 2            | 30      |

### Test Cases

| Test Script        | Steps                                                                                                                    |
|--------------------|--------------------------------------------------------------------------------------------------------------------------|
| Spider.jmx         | Landing page                                                                                                             
                                                                                                                            
  2. Login – Regex to extract all course identifiers                                                                        
                                                                                                                            
  3. Loop over courses (loop value can be set here)                                                                         
                                                                                                                            
  4. Loop opens course Forum, Quiz and Assignment                                                                           
                                                                                                                            
  5. Returns to Home page                                                                                                   
                                                                                                                            
  6. Loops over course search using search terms (Search1 - Search5) from CoursesSearchTerms.csv defined in config element  
                                                                                                                            
  7. Logout                                                                                                                 |
| AttemptQuiz.jmx    | 1. Landing page                                                                                                          
                                                                                                                            
  2. Login – Regex to extract all course identifiers                                                                        
                                                                                                                            
  3. Selects Course (exgex used to define which course)                                                                     
                                                                                                                            
  4. Select Quiz                                                                                                            
                                                                                                                            
  5. Loop through the questions 1-99                                                                                        
                                                                                                                            
  6. Finish Attempt                                                                                                         
                                                                                                                            
  7. Submit all answers and finish                                                                                          
                                                                                                                            
  8. Home                                                                                                                   
                                                                                                                            
  9. Logout                                                                                                                 |
| ForumUpdate.jmx    | 1. Landing page                                                                                                          
                                                                                                                            
  2. Login – Regex to extract all course identifiers                                                                        
                                                                                                                            
  3. Select Course                                                                                                          
                                                                                                                            
  4. Select Announcement – create random variable (AddDiscussion)between 1-20                                               
                                                                                                                            
  5. Create new discussion if variable (AddDiscussion) = 7, This should create a new discussion 1 in 20                     
                                                                                                                            
  6. Select announcements                                                                                                   
                                                                                                                            
  7. Select discussion                                                                                                      
                                                                                                                            
  8. Submit discussion reply                                                                                                
                                                                                                                            
  9. Save assignment changes                                                                                                
                                                                                                                            
  10. Return to announcements                                                                                               
                                                                                                                            
  11. Return to Home page                                                                                                   
                                                                                                                            
  12. Logout                                                                                                                |
| Turnitin.jmx       | 1. Landing page                                                                                                          
                                                                                                                            
  2. Login – Regex to extract all course identifiers                                                                        
                                                                                                                            
  3. Loop across courses (number set in loop control)                                                                       
                                                                                                                            
  4. Select Assignment, Add Assignment                                                                                      
                                                                                                                            
  5. Upload jmeter-assignment.pdf – stored in C:\\Users\\Public\\apache-jmeter-5.1.1\\bin                                   
                                                                                                                            
  6. Overwrite File if exists                                                                                               
                                                                                                                            
  7. Save assignment changes                                                                                                
                                                                                                                            
  8. Home                                                                                                                   
                                                                                                                            
  9. Logout                                                                                                                 |
| GradeReporting.jmx | add details                                                                                                              |

### Pass Results

<table>
<thead>
<tr class="header">
<th>B ID</th>
<th>T ID</th>
<th><br />
</th>
<th><br />
</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>1</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

# Results

### Setting Changes Results

**Scripts**
Date
Test ID
Spider.jmx

AttemptQuiz.jmx

SubmitAssign.jmx

ForumUpdate.jmx

Turnitin.jmx

Ramp-Up

Soak Duration

Database Changes
Jmeter

Error Rate

JMeter

Apdex

NR

Apdex

NR Error Rate
Pass/Fail

New Relic Screenshots
23 Mar 2020

1

500 Threads

1000s

0

0.557

N/A

PASS

[day1\_results.png](attachments/131390869/131390898.png)
2

1500 Threads

3000s

0

0.600

N/A

PASS

3

2000 Threads

1500s

0

0.5667

N/A

PASS

4

2000 Threads

600s

0.35

0.133

N/A

FAIL

4.1

2000 Threads

600s

0.69

0.128

N/A

PASS

5

1500 Threads

300 Threads

1000s

1.4912.68

0.345/0.039

N/A

FAIL

24 Mar 2020 

7

1500 Threads

500 Threads

1000s/1200s

17.82/9.95

0.042/0.170

0.2

FAIL

[S1500x1000\_Q500x1200.png](attachments/131390869/131390901.png)

8

1500 Threads

300 Threads

1200s

6.45/1.07

0.081/0.518

0.11

FAIL

[Spider1500\_Assign300\_1200RampUp.png](attachments/131390869/131390905.png)

25 Mar 2020 

9

1000 Threads (500 x2)

1200s

0/0

0.708/0.681

0.74

SLOW PASS

[500SubmitAssign\_1200Ramp.png](attachments/131390869/131390895.png)
10

1000 Threads (500 x2)

600s

0/0.47

0.311/0.240

0.68

Pass but slow

[500SubmitAssign\_600RampUp.png](attachments/131390869/131390894.png)
11

2000 Threads

(1000 x2)

600s

17.19/9.81

0.139/0.137

0.4

FAIL

[1000SubmitAssign\_600RampUp.png](attachments/131390869/131390896.png)
12

2000 Threads

(1000 x2)

Single submission

600s

6.51/5.71

0.171/0.167

0.57

FAIL

[1000SubmitAssign\_600RampUp\_1FILE.png](attachments/131390869/131390897.png)
13

1500 Threads

1200s

1800s

7.31

0/073

0.09

FAIL

[Spider1500Threads\_1200RampUp\_1800seconds\_SoakTest.png](attachments/131390869/131390906.png)
27 Mar 2020 

14

1000 Threads (500 x2)

600s

0/0.08

0.394/0.363

0.73

SLOW PASS

[TII1000\_600Sec\_500.png](attachments/131390869/131390913.png)
15

2000 Threads (1000 x2)

600s

11.30/8.87

0.187/0.170

0.65

FAIL

[TII2000\_600\_1000.png](attachments/131390869/131390914.png)
16

1500 Threads

(750 x2)

1200s

3600

change mysql max connections to 2000
0.02/0.04

0.093/0.074

0.12

SLOW PASS

[Spider1500\_1200RampUp\_3600SoakTest.png](attachments/131390869/131390902.png)
17

1500 Threads

(750 x2)

1200s

3600

disabled mysql query cache

0/0

0.092/0.064

0.12

SLOW PASS

[Spider2000Threads\_1200RampUp\_3600s\_SecondRun.png](attachments/131390869/131390911.png)
31 Mar 2020 

18

1500 Threads

(750 x2)

1200s

3600

added 3 cpu’s to mdl-backend01p

0.02/0.04

0.095/0.073

0.11

SLOW PASS

[Spider1500\_1200RampUp\_3600SoakTest\_ThirdRun.png](attachments/131390869/131390902.png)
19

2000 Threads

(1000 x2)

1200s

3600

-   setup 2 additional redis instances
-   change language application cache to store to redis on app servers - reduced cpu usage by 60%

33.06/34.61

0.089/0.075

0.12

FAIL

[Spider2000Threads\_1200RampUp\_3600s.png](attachments/131390869/131390908.png)
02 Apr 2020 

20

1500 Threads

(750 x2)

1200s

3600

1.04/1.05

0.127/0.113

0.18

FAIL

[Spider1500Threads\_1200RampUp\_3600s\_FourthRun.png](attachments/131390869/131390991.png)
21

2000 Threads

(1000 x2)

1200s

3600

0.94/0.86

0.097/0.086

0.14

SLOW PASS

[Spider2000Threads\_1200RampUp\_3600s\_SecondRun.png](attachments/131390869/131390911.png)
22

2000 Threads

(1000 x2)

1200s

3600

-   Disabled index log

<!-- -->

-   Disabled query cache

<!-- -->

-   Added thread pools plugin

1.23/1.23

0.103/0.097

0.15

SLOW PASS

[Spider2000Threads\_1200RampUp\_3600s\_ThirdRun.png](attachments/131390869/131390912.png)
03 Apr 2020 

23

2000 Threads

(1000 x2)

1200s

3600

-   Additional memory added to database

1.92/1.98

0.058/0.060

0.11

SLOW PASS

[Spider2000Threads\_1200RampUp\_3600s\_4thRun.png](attachments/131390869/131390909.png)
24

2000 Threads

(1000 x2)

1200s

3600

0.39/0.42

0.053/0.055

0.11

SLOW PASS

[Spider2000Threads\_1200RampUp\_3600s\_5thRun.png](attachments/131390869/131390910.png)
06 Apr 2020 

** 
**

25
2000 Threads

(1000 x2)

1200s

1800

-   innodb\_buffer\_pool\_size to 68GB

1.97/0.27
0.099/0.110
0.17
SLOW PASS

[Spider2000Threads\_1200RampUp\_1800s\_6thRun.png](attachments/131390869/131391880.png)
26
2000 Threads

(1000 x2)

1200s

1800

-   innodb\_buffer\_pool\_size to 103GB

2.15/0.33
0.102/0.111
0.17
SLOW PASS

[Spider2000Threads\_1200RampUp\_1800s\_7thRun.png](attachments/131390869/131391879.png)
07 Apr 2020 

27
2000 Threads

(1000 x2)

1200s

1800

-   innodb write threads increased to 24

0.32/2.32
0.106/0.100
0.17
SLOW PASS

[Spider2000Threads\_1200RampUp\_1800s\_8thRun.png](attachments/131390869/131391878.png)
28
2000 Threads

(1000 x2)

1200s

1800

-   navigation block disabled

0.34/2.25
0.108/0.104
0.18
SLOW PASS

[Spider2000Threads\_1200RampUp\_1800s\_9thRun.png](attachments/131390869/131391877.png)
08 Apr 2020 

29
2000 Threads

(1000 x2)

1200s

1800

-   disabled course search step in spider.jmx

0.32/2.15
0.099/0.092
0.15
SLOW PASS

[Spider2000Threads\_1200RampUp\_1800s\_10thRun.png](attachments/131390869/131392433.png)
21 Apr 2020 

31
2000 Threads

(1000 x2)

1200s
1800
-   proxy sql caching read queries diverting + couple of queries cached

s - 0.28

tp - 1.74

s - 0.126

tp - 0.140

0.18
SLOW PASS

[Spider2000Threads\_1200RampUp\_1800s\_11th.png](attachments/131390869/135760601.png)
30 Apr 2020 

32
3000 Threads

(750 x 4)

750
1800
-   cherry-pick <https://tracker.moodle.org/browse/MDL-19711> to have read/write routing aware of moodle behaviours -&gt; <https://git.automation.ucl.ac.uk/moodle/moodle-core/-/tree/MOODLE_37_UCL_REL375-DB_SLAVE>
-   as per before Slough goes direct to master
-   TP app servers now configured to send write queries directly to master & reads to proxysql
-   Added a proxysql query rule to send all SELECT queries to slave ([mdl-db02p.ad.ucl.ac.uk](http://mdl-db02p.ad.ucl.ac.uk))

s -

0.14/0.05

tp - 2.05/0.02

s - 0.035/0.040

tp - 0.046/0.057

0.06
0.005
SLOW PASS

[Spider3000threads-750ramp-1800soak-run2.png](attachments/131390869/137135744.png)
33
redis processes change to a higher priority

s -

0.09/0

tp -

2.0/0.11

s -

0.043/0.045

tp -

0.050/0.060

0.06
0.0014
SLOW PASS

[Spider3000threads-750ramp-1800soak-run3.png](attachments/131390869/137135759.png)
01 May 2020 

34
3500 Threads

(875 x 4)

s -

0.082/6.19

tp -

2.49/0.04

s -

0.031/0.040

tp -

0.042/0.059

0.05
0
SLOW PASS

[Spider3500threads-875ramp-1800soak-run1.png](attachments/131390869/137135929.png)
35
4000 Threads

(1000 x 4)

s- 3.80/4.65

tp - 2.80/0.05

s - 0.040/0.040

tp - 0.046/0.066

0.06
0
SLOW PASS

[Spider4000threads-1000ramp-1800soak-run1.png](attachments/131390869/137135930.png)
20 May 2020 

36
1000 Threads

(250 x 4)

net.ipv4.ip\_local\_port\_range=1024 65535

enable /proc/sys/net/ipv4/tcp\_tw\_reuse

jmeter embedded resources enabled

0.63
0
PASS

03 Jul 2020 

37
upgraded to php7.3
09 Jul 2020 

38
Puppet php module updated & PCRE JIT switched off to fix errors (known issue for PHP7.3+)
39
changed mdl-dbc03 to master
40
08p & 10p using dbc01p as the read-only node

41
routing\_strategy=first-available

42
name server caching enabled on app servers
43
hard coded read only mdl-app02p, 04p, 06p, 08p, 10p to **mdl-dbc02p**

hard coded read only mdl-app01p, 03p, 05p, 07p, 09p to **mdl-dbc03p**

44
change read/write from mdl-dbc01p

to mdl-dbc03p to have higher spec for read only.

45
reads using router

46
reads hard coded 

### Work Stream Web Services

### Results

| Load | RHEL          | Results                                                                  |
|------|---------------|--------------------------------------------------------------------------|
| 100  | 7.8           | [RHEL7.8-LoadTimings.csv](attachments/131390869/137148042.csv)           |
| 100  | 8.2           | [RHEL8.2-LoadTimings-02d.csv](attachments/131390869/137148148.csv)       |
| 100  | 8.2 + Varnish | [RHEL8.2-LoadTimings-01d.csv](attachments/131390869/137148149.csv)       |
| 100  | 8.2 + http2   | [RHEL8.2-LoadTimings-02d-http2.csv](attachments/131390869/137148178.csv) |
| 100  | 8.2 + httpS   | [RHEL8.2-LoadTimings-02d-httpS.csv](attachments/131390869/137148223.csv) |

### Work Stream Database Results

#### mysql 5.7 vs 8

[moodle\_metrics.docx](attachments/131390869/137143635.docx)

| Load | Datacentre  | MySql | Results                                                                           |
|------|-------------|-------|-----------------------------------------------------------------------------------|
| 500  | Slough      | 5.7   | [mysql5.7-500threads-slough-only.png](attachments/131390869/137142262.png)        |
| 500  | Slough      | 8     | [mysql8-500threads-slough-only.png](attachments/131390869/137142261.png)          |
| 500  | Slough + TP | 5.7   | [mysql5.7-500threads-slough+torrington.png](attachments/131390869/137142257.png)  |
| 500  | Slough + TP | 8     | [mysql8-500threads-slough+torrington.png](attachments/131390869/137142258.png)    |
| 1000 | Slough      | 5.7   | [mysql5.7-1000threads-slough-only.png](attachments/131390869/137142260.png)       |
| 1000 | Slough      | 8     | [mysql8-1000threads-slough-only.png](attachments/131390869/137142259.png)         |
| 1000 | Slough + TP | 5.7   | [mysql5.7-1000threads-slough+torrington.png](attachments/131390869/137142256.png) |
| 1000 | Slough + TP | 8     | [mysql8-1000threads-slough+torrington.png](attachments/131390869/137142255.png)   |

#### **Direct read+write/read (OLD)
**

| Threads | Ramp | Duration | App Server | Apdex Score | Error Rate (%) | Screenshot                                                      |
|---------|------|----------|------------|-------------|----------------|-----------------------------------------------------------------|
| 500     | 125  | 1800     | 370ms      | 0.84        | 0              | [slavevms-500threads.png](attachments/131390869/137151111.png)  |
| 1000    | 250  | 1800     | 374ms      | 0.84        | 0              | [slavevms-1000threads.png](attachments/131390869/137151124.png) |
| 1500    | 375  | 1800     | 427ms      | 0.82        | 0.0006         | [slavevms-1500threads.png](attachments/131390869/137151137.png) |
| 2000    | 500  | 1800     | 568ms      | 0.79        | 0              | [slavevms-2000threads.png](attachments/131390869/137151140.png) |
| 2500    | 625  | 1800     | 1.9s       | 0.68        | 0.0056         | [slavevms-2500threads.png](attachments/131390869/137151144.png) |
| 3000    | 750  | 1800     | 3.5s       | 0.59        | 0.0004         | [slavevms-3000threads.png](attachments/131390869/137151148.png) |
| 3500    | 875  | 1800     | 4.0s       | 0.61        | 00004          | [slavevms-3500threads.png](attachments/131390869/137151155.png) |
| 4000    | 1000 | 1800     | 5s         | 0.6         | 00010          | [slavevms-4000threads.png](attachments/131390869/137151164.png) |
| 4500    | 1125 | 1800     | 6.75s      | 0.58        | 0.0081         | [slavevms-4500threads.png](attachments/131390869/137151227.png) |

#### **Cluster Router (OLD)**

<table>
<thead>
<tr class="header">
<th>Test ID</th>
<th>Threads</th>
<th>Ramp</th>
<th>Duration</th>
<th>App Server</th>
<th>Apdex Score</th>
<th>Error Rate (%)</th>
<th>Screenshot</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><br />
</p>
<p>40</p></td>
<td><p>500</p>
<p>500</p></td>
<td><p>125</p>
<p>125</p></td>
<td><p>1800</p>
<p>1800</p></td>
<td><p>5.2s</p>
<p>3.8s</p></td>
<td><p>0.61</p>
<p>0.64</p></td>
<td><p>0%</p>
<p>0%</p></td>
<td><p><a href="attachments/131390869/141328714.png">clusterrouter-500threads-run1.png</a></p>
<p><a href="attachments/131390869/137162648.png">clusterrouter-500threads-run2.png</a></p></td>
</tr>
<tr class="even">
<td>41</td>
<td><p>500</p>
<p>500</p></td>
<td><p>125</p>
<p>125</p></td>
<td><p>1800</p>
<p>1800</p></td>
<td><p>2.7s</p>
<p>1.3s</p></td>
<td><p>0.58</p>
<p>0.7</p></td>
<td><p>0.034%</p>
<p>0%</p></td>
<td><p><a href="attachments/131390869/147949158.png">clusterrouter-500threads-run3.png</a></p>
<p><a href="attachments/131390869/147956599.png">clusterrouter-500threads-run4.png</a></p></td>
</tr>
<tr class="odd">
<td>42</td>
<td><p>500</p></td>
<td><p>125</p></td>
<td><p>1800</p></td>
<td>753ms</td>
<td>0.75</td>
<td>0%</td>
<td><a href="attachments/131390869/147956839.png">clusterrouter-500threads-run5.png</a></td>
</tr>
</tbody>
</table>

#### NEW Direct read+write/read

| Test ID | Threads | Ramp | Duration | App Server | Apdex Score | Error Rate (%) | Screenshot                                                                  |
|---------|---------|------|----------|------------|-------------|----------------|-----------------------------------------------------------------------------|
| 43      | 500     
           
  1000     
           
  1500     | 125  
         
   250   
         
   375   | 1800     
              
    1800      
              
    1800      | 1.2s       
                 
     1.2s        
                 
     1.2s        | 0.59        
                   
      0.59         
                   
      0.59         | 0.0019%        
                       
       0.0019%         
                       
       0%              | [directreadwrite-500threads-run1.png](attachments/131390869/147959017.png)  
                                                                                     
        [directreadwrite-1000threads-run2.png](attachments/131390869/147959025.png)  
                                                                                     
        [directreadwrite-1500threads-run3.png](attachments/131390869/147959031.png)  |

#### **NEW Direct read only**

| Test ID | Threads | Ramp | Duration | App Server | Apdex Score | Error Rate (%) | Screenshot                                                                 |
|---------|---------|------|----------|------------|-------------|----------------|----------------------------------------------------------------------------|
| 43      | 500     
           
  1000     
           
  1500     
           
  2000     
           
  2500     
           
  3000     
           
  3500     
           
  4000     | 125  
         
   250   
         
   375   
         
   500   
         
   625   
         
   750   
         
   875   
         
   1000  | 1800     
              
    1800      
              
    1800      
              
    1800      
              
    1800      
              
    1800      
              
    1800      
              
    1800      | 1.2s       
                 
     1.2s        
                 
     1.4s        
                 
     2.1s        
                 
     1.9s        
                 
     2.7s        
                 
     2.5s        
                 
     3.0s        | 0.58        
                   
      0.58         
                   
      0.57         
                   
      0.55         
                   
      0.55         
                   
      0.53         
                   
      0.54         
                   
      0.55         | 0%             
                       
       0%              
                       
       0%              
                       
       0%              
                       
       0%              
                       
       0.0117%         
                       
       0.0020%         
                       
       0.0028%         | [directreadonly-500threads-run1.png](attachments/131390869/147958745.png)  
                                                                                    
        [directreadonly-1000threads-run2.png](attachments/131390869/147958883.png)  
                                                                                    
        [directreadonly-1500threads-run3.png](attachments/131390869/147958884.png)  
                                                                                    
        [directreadonly-2000threads-run4.png](attachments/131390869/151257856.png)  
                                                                                    
        [directreadonly-2500threads-run5.png](attachments/131390869/151257857.png)  
                                                                                    
        [directreadonly-3000threads-run6.png](attachments/131390869/151257858.png)  
                                                                                    
        [directreadonly-3500threads-run7.png](attachments/131390869/151257859.png)  
                                                                                    
        [directreadonly-4000threads-run8.png](attachments/131390869/151257860.png)  |

-   On higher loads read only performs better due to every split of traffic.

#### **NEW Full Router**

| Test ID | Threads | Ramp | Duration | App Server | Apdex Score | Error Rate (%) | Screenshot                                                                 |
|---------|---------|------|----------|------------|-------------|----------------|----------------------------------------------------------------------------|
| 44      | 500     
           
  1000     
           
  1500     
           
  2000     
           
  2500     
           
  3000     
           
  3500     
           
  4000     | 125  
         
   250   
         
   375   
         
   500   
         
   625   
         
   750   
         
   875   
         
   1000  | 1800     
              
    1800      
              
    1800      
              
    1800      
              
    1800      
              
    1800      
              
    1800      
              
    1800      | 776ms      
                 
     1.3s        
                 
     3.2s        
                 
     8.09s       
                 
     8.83s       
                 
     11.1s       
                 
     13.5s       
                 
     12.6s       | 0.76        
                   
      0.71         
                   
      0.71         
                   
      0.62         
                   
      0.60         
                   
      0.55         
                   
      0.56         
                   
      0.56         | 0%             
                       
       0.0108%         
                       
       0%              
                       
       1.57%           
                       
       1.23%           
                       
       1.06%           
                       
       0.92%           
                       
       0.90%           | [clusterrouter-500threads-run6.png](attachments/131390869/147958712.png)   
                                                                                    
        [clusterrouter-1000threads-run7.png](attachments/131390869/147958777.png)   
                                                                                    
        [clusterrouter-1500threads-run8.png](attachments/131390869/147958776.png)   
                                                                                    
        [clusterrouter-2000threads-run9.png](attachments/131390869/151257689.png)   
                                                                                    
        [clusterrouter-2500threads-run10.png](attachments/131390869/151257691.png)  
                                                                                    
        [clusterrouter-3000threads-run11.png](attachments/131390869/151257692.png)  
                                                                                    
        [clusterrouter-3500threads-run12.png](attachments/131390869/151257734.png)  
                                                                                    
        [clusterrouter-4000threads-run13.png](attachments/131390869/151257735.png)  |

-   When comparing full router 500 threads vs direct only 500 threads, results shows that router has better performance.
-   When increasing the number of threads, the router seems to not perform as well as Moodle was directing the traffic to the databases as during the test traffic was very one sided every at 4000 threads.
-   Either this is how the cluster is handling traffic or how Moodle directs is read traffic.

#### NEW Fail Over

| Test ID | Threads | Ramp | Duration | App Server | Apdex Score | Error Rate (%) | Screenshot                                                                        |
|---------|---------|------|----------|------------|-------------|----------------|-----------------------------------------------------------------------------------|
| 45      | 500     | 125  | 1800     | 894ms      | 0.71        | 0.37%          | [clusterrouterfailover-500threads-run1.png](attachments/131390869/151257880.png)  |
| 46      | 500     | 125  | 1800     | 1.0s       | 0.56        | 17.30%         | [directreadonlyfailover-500threads-run2.png](attachments/131390869/151257881.png) |

-   Test ID 46 error rate is actually &lt; 1% but is shown as alot higher as with hard coded when the first server in the config.php is unavailable.  Either Moodle tries to direct traffic to the 1st in the list or it keeps checking until the 1st server is available again.
-   During the test i had set my browser to refreshing [moodle-pp.ucl.ac.uk](http://moodle-pp.ucl.ac.uk) every 10 seconds and did not get any errors.
-   Every time the browser refreshed i was on a different app server.
-   From a users perspective, i did not notice any downtime when the fail over happened with using hard coded or cluster.

#### **PHP 7.3**

| Test ID | Threads | Ramp | Duration | App Server (s) | Apdex Score | Error Rate (%) | Screenshot                                                         |
|---------|---------|------|----------|----------------|-------------|----------------|--------------------------------------------------------------------|
| 37      | 4500    | 1125 | 1800     | 6.6            | 0.57        | 0.0061         | [php7.3-4500threads-run1.png](attachments/131390869/137159520.png) |
| 38      | 4500    | 1125 | 1800     | 4.7            | 0.6         | 0              | [php7.3-4500threads-run2.png](attachments/131390869/137159521.png) |
| 39      | 4500    | 1125 | 1800     | 7.01           | 0.59        | 0.0053         | [php7.3-4500threads-run3.png](attachments/131390869/137159522.png) |
| 40      | 4500    | 1125 | 1800     | 3.2            | 0.63        | 0              | [php7.3-4500threads-run4.png](attachments/131390869/137159523.png) |

### Moodle Cloud AWS

<table>
<thead>
<tr class="header">
<th>Threads</th>
<th>Ramp</th>
<th>Duration</th>
<th>App Server (s)</th>
<th>Apdex Score</th>
<th>Error Rate (%)</th>
<th>Screenshot</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>2000</td>
<td>2000</td>
<td>1800</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>4000</td>
<td>1000</td>
<td>1800</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>6000</td>
<td>1500</td>
<td>1800</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>8000</td>
<td>2000</td>
<td>2700</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>10000</td>
<td>2500</td>
<td>3600</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>12000</td>
<td>3000</td>
<td>3600</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

### Final Overall Results

| NR Throughput Max (k) | Apdex Score | Error Rate | App Server | Threads (ramps x number of server) | Ramp (s) | Duration (s) | Latest Changes (Test ID) | Screenshot                                                                          |
|-----------------------|-------------|------------|------------|------------------------------------|----------|--------------|--------------------------|-------------------------------------------------------------------------------------|
| 5                     | 0.55        | 0          | 665ms      | 500                                | 125      | 1800         | 31                       | [Spider500threads-125ramp-1800soak-run1.png](attachments/131390869/137135738.png)   |
| 8.5                   
                        
 19.3                   | 0.48        
               
  0.63         | 0          
               
   0           | 1.3        
                
    1.5         | 1000                               
                                         
     1000                                | 250      
                
      250       | 1800         
                     
       1800          | 31                       
                                  
        36                        | [Spider1000threads-250ramp-1800soak-run1.png](attachments/131390869/137135739.png)  
                                                                                              
         [Spider1000threads-250ramp-1800soak-run2.png](attachments/131390869/137141241.png)   |
| 9.1                   | 0.13        | 0.0006     | 3.3        | 1500                               | 375      | 1800         | 31                       | [Spider1500threads-375ramp-1800soak-run1.png](attachments/131390869/137135740.png)  |
| 9.5                   | 0.12        | 0.0166     | 4.7        | 2000                               | 500      | 1800         | 31                       | [Spider2000threads-500ramp-1800soak-run1.png](attachments/131390869/137135741.png)  |
| 10.3                  | 0.06        | 1.77       | 8.2        | 2500                               | 625      | 1800         | 31                       | [Spider2500threads-625ramp-1800soak-run1.png](attachments/131390869/137135742.png)  |
| 9.12                  
                        
 7.88                   
                        
 8.28                   | 0.05        
               
  0.06         
               
  0.06         | 5.73       
               
   0.0005      
               
   0.0014      | 10.6       
                
    12.5        
                
    11.5        | 3000                               
                                         
     3000                                
                                         
     3000                                | 750      
                
      750       
                
      750       | 1800         
                     
       1800          
                     
       1800          | 31                       
                                  
        32                        
                                  
        33                        | [Spider3000threads-750ramp-1800soak-run1.png](attachments/131390869/137135743.png)  
                                                                                              
         [Spider3000threads-750ramp-1800soak-run2.png](attachments/131390869/137135744.png)   
                                                                                              
         [Spider3000threads-750ramp-1800soak-run3.png](attachments/131390869/137135759.png)   |
| 8.6                   | 0.05        | 0          | 11.1       | 3500                               | 875      | 1800         | 33                       | [Spider3500threads-875ramp-1800soak-run1.png](attachments/131390869/137135929.png)  |
| 9                     | 0.06        | 0          | 10.5       | 4000                               | 1000     | 1800         | 33                       | [Spider4000threads-1000ramp-1800soak-run1.png](attachments/131390869/137135930.png) |

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [500SubmitAssign\_600RampUp.png](attachments/131390869/131390894.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [500SubmitAssign\_1200Ramp.png](attachments/131390869/131390895.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [1000SubmitAssign\_600RampUp.png](attachments/131390869/131390896.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [1000SubmitAssign\_600RampUp\_1FILE.png](attachments/131390869/131390897.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [day1\_results.png](attachments/131390869/131390898.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [day1\_results(1).png](attachments/131390869/131390899.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [day2\_results.png](attachments/131390869/131390900.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [S1500x1000\_Q500x1200.png](attachments/131390869/131390901.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1500\_1200RampUp\_3600SoakTest\_ThirdRun.png](attachments/131390869/131390902.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1500\_1200RampUp\_3600sSoakTest.png](attachments/131390869/131390903.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1500\_1200RampUp\_3600sSoakTest\_SECONDRUN.png](attachments/131390869/131390904.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1500\_Assign300\_1200RampUp.png](attachments/131390869/131390905.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1500Threads\_1200RampUp\_1800seconds\_SoakTest.png](attachments/131390869/131390906.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1500Threads\_1200RampUp\_3600s\_FifthRun.png](attachments/131390869/131390907.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_3600s.png](attachments/131390869/131390908.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_3600s\_4thRun.png](attachments/131390869/131390909.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_3600s\_5thRun.png](attachments/131390869/131390910.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_3600s\_SecondRun.png](attachments/131390869/131390911.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_3600s\_ThirdRun.png](attachments/131390869/131390912.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [TII1000\_600Sec\_500.png](attachments/131390869/131390913.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [TII2000\_600\_1000.png](attachments/131390869/131390914.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [TII2000\_600\_1000(1).png](attachments/131390869/131390915.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1500Threads\_1200RampUp\_3600s\_FourthRun.png](attachments/131390869/131390991.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_3600s\_7thRun.png](attachments/131390869/131391821.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_3600s\_6thRun.png](attachments/131390869/131391822.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_1800s\_9thRun.png](attachments/131390869/131391877.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_1800s\_8thRun.png](attachments/131390869/131391878.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_1800s\_7thRun.png](attachments/131390869/131391879.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_1800s\_6thRun.png](attachments/131390869/131391880.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_1800s\_11thRun.png](attachments/131390869/131392432.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_1800s\_10thRun.png](attachments/131390869/131392433.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_1800s\_12+13thRun.png](attachments/131390869/135760437.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_1800s\_12+13th\_connRun.png](attachments/131390869/135760438.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_1800s\_11th.png](attachments/131390869/135760584.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000Threads\_1200RampUp\_1800s\_11th.png](attachments/131390869/135760601.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [preprod.png](attachments/131390869/135761512.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [prod.png](attachments/131390869/135761513.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000threads-2000ramp-3600soak.png](attachments/131390869/137134546.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000threads-2000ramp-3600soak-1st.png](attachments/131390869/137134547.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider500threads-500ramp-1800soak.png](attachments/131390869/137135013.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1000threads-1000ramp-1800soak.png](attachments/131390869/137135014.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1500threads-1500ramp-1800soak.png](attachments/131390869/137135015.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000threads-2000ramp-1800soak.png](attachments/131390869/137135016.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider500threads-500ramp-1800soak.png](attachments/131390869/137135026.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1000threads-1000ramp-1800soak.png](attachments/131390869/137135027.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1500threads-1500ramp-1800soak.png](attachments/131390869/137135028.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000threads-2000ramp-1800soak.png](attachments/131390869/137135029.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2500threads-2500ramp-1800soak.png](attachments/131390869/137135030.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Prod10K.png](attachments/131390869/137135044.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider3000threads-3000ramp-1800soak.png](attachments/131390869/137135064.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider500threads-125ramp-1800soak-run1.png](attachments/131390869/137135738.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1000threads-250ramp-1800soak-run1.png](attachments/131390869/137135739.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1500threads-375ramp-1800soak-run1.png](attachments/131390869/137135740.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2000threads-500ramp-1800soak-run1.png](attachments/131390869/137135741.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider2500threads-625ramp-1800soak-run1.png](attachments/131390869/137135742.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider3000threads-750ramp-1800soak-run1.png](attachments/131390869/137135743.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider3000threads-750ramp-1800soak-run2.png](attachments/131390869/137135744.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider3000threads-750ramp-1800soak-run3.png](attachments/131390869/137135750.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider3000threads-750ramp-1800soak-run3.png](attachments/131390869/137135759.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider3500threads-875ramp-1800soak-run1.png](attachments/131390869/137135929.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider4000threads-1000ramp-1800soak-run1.png](attachments/131390869/137135930.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle-Exams-18-05-2020-15:05:17.png](attachments/131390869/137141008.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Screenshot from 2020-05-20 11-18-30.png](attachments/131390869/137141009.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1000threads-250ramp-1800soak-run2.png](attachments/131390869/137141227.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1000threads-250ramp-1800soak-run2.png](attachments/131390869/137141239.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Spider1000threads-250ramp-1800soak-run2.png](attachments/131390869/137141241.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [WSDatabasePreNaemon.png](attachments/131390869/137141284.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [WSDatabasePreMySQLE.png](attachments/131390869/137141285.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [WSDatabasePreNR.png](attachments/131390869/137141286.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql8-1000threads-slough+torrington.png](attachments/131390869/137142255.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql5.7-1000threads-slough+torrington.png](attachments/131390869/137142256.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql5.7-500threads-slough+torrington.png](attachments/131390869/137142257.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql8-500threads-slough+torrington.png](attachments/131390869/137142258.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql8-1000threads-slough-only.png](attachments/131390869/137142259.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql5.7-1000threads-slough-only.png](attachments/131390869/137142260.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql8-500threads-slough-only.png](attachments/131390869/137142261.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql5.7-500threads-slough-only.png](attachments/131390869/137142262.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [moodle\_metrics.docx](attachments/131390869/137143635.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [RHEL8.2-500.csv](attachments/131390869/137147956.csv) (text/csv)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [RHEL8.2-1000.csv](attachments/131390869/137147957.csv) (text/csv)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [RHEL7.8-500.csv](attachments/131390869/137147958.csv) (text/csv)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [RHEL7.8-1000.csv](attachments/131390869/137147959.csv) (text/csv)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [RHEL7.8-LoadTimings.csv](attachments/131390869/137148042.csv) (text/csv)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [RHEL8.2-LoadTimings.csv](attachments/131390869/137148043.csv) (text/csv)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [RHEL8.2-LoadTimings-02d.csv](attachments/131390869/137148148.csv) (text/csv)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [RHEL8.2-LoadTimings-01d.csv](attachments/131390869/137148149.csv) (text/csv)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [RHEL8.2-LoadTimings-02d-http2.csv](attachments/131390869/137148178.csv) (text/csv)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [RHEL8.2-LoadTimings-02d-httpS.csv](attachments/131390869/137148223.csv) (text/csv)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [slavevms-500threads.png](attachments/131390869/137151111.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [slavevms-1000threads.png](attachments/131390869/137151124.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [slavevms-1500threads.png](attachments/131390869/137151137.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [slavevms-2000threads.png](attachments/131390869/137151140.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [slavevms-2500threads.png](attachments/131390869/137151144.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [slavevms-3000threads.png](attachments/131390869/137151148.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [slavevms-3500threads.png](attachments/131390869/137151155.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [slavevms-4000threads.png](attachments/131390869/137151164.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [slavevms-4500threads.png](attachments/131390869/137151227.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [php7.3-4500threads-run1.png](attachments/131390869/137159520.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [php7.3-4500threads-run2.png](attachments/131390869/137159521.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [php7.3-4500threads-run3.png](attachments/131390869/137159522.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [php7.3-4500threads-run4.png](attachments/131390869/137159523.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-500threads.png](attachments/131390869/137162644.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-500threads-run1.png](attachments/131390869/137162648.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-1000threads.png](attachments/131390869/141328696.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-500threads-run2.png](attachments/131390869/141328714.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-500threads-run3.png](attachments/131390869/147949158.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-500threads-run4.png](attachments/131390869/147956599.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-500threads-run5.png](attachments/131390869/147956839.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-500threads-run1.png](attachments/131390869/147957828.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-500threads-run2.png](attachments/131390869/147957829.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-500threads-run1.png](attachments/131390869/147957833.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-500threads-run2.png](attachments/131390869/147957834.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-500threads-run2.png](attachments/131390869/147957870.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-500threads-run3.png](attachments/131390869/147957924.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-500threads-run4.png](attachments/131390869/147957988.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-500threads-run6.png](attachments/131390869/147958712.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-500threads-run7.png](attachments/131390869/147958740.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-500threads-run1.png](attachments/131390869/147958745.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-500threads-run8.png](attachments/131390869/147958775.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-1500threads-run8.png](attachments/131390869/147958776.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-1000threads-run7.png](attachments/131390869/147958777.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-1500threads-run3.png](attachments/131390869/147958865.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-1000threads-run2.png](attachments/131390869/147958883.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-1500threads-run3.png](attachments/131390869/147958884.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadwrite-500threads-run1.png](attachments/131390869/147959017.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadwrite-1000threads-run2.png](attachments/131390869/147959025.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadwrite-1500threads-run3.png](attachments/131390869/147959031.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-2000threads-run9.png](attachments/131390869/151257689.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-2500threads-run10.png](attachments/131390869/151257691.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-3000threads-run11.png](attachments/131390869/151257692.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-3500threads-run12.png](attachments/131390869/151257734.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouter-4000threads-run13.png](attachments/131390869/151257735.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-2000threads-run4.png](attachments/131390869/151257856.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-2500threads-run5.png](attachments/131390869/151257857.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-3000threads-run6.png](attachments/131390869/151257858.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-3500threads-run7.png](attachments/131390869/151257859.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonly-4000threads-run8.png](attachments/131390869/151257860.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [clusterrouterfailover-500threads-run1.png](attachments/131390869/151257880.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [directreadonlyfailover-500threads-run2.png](attachments/131390869/151257881.png) (image/png)

