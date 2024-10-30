# Monitoring

-   [Moodle Exam Period - May/June 2020](#Monitoring-MoodleExamPeriod-May/June2020)
-   [New Relic](#Monitoring-NewRelic)
-   [Thruk](#Monitoring-Thruk)
    -   [Grafana](#Monitoring-Grafana)
-   [HTOP](#Monitoring-HTOP)
-   [vrOps](#Monitoring-vrOps)
-   [Cache](#Monitoring-Cache)
-   [Analytics](#Monitoring-Analytics)
-   [MySQL](#Monitoring-MySQL)
-   [SIEM](#Monitoring-SIEM)
-   [Monitoring Improvements Epic](#Monitoring-MonitoringImprovementsEpic)
-   [TMUX](#Monitoring-TMUX)
    -   [GhostScript](#Monitoring-GhostScript)

## [Moodle Exam Period - May/June 2020](Moodle_Exam_Period_-_May_June_2020)

## New Relic

<https://rpm.newrelic.com/accounts/1659514>

<https://learn.newrelic.com/get-started-with-apm>

## Thruk

<https://network-alerting.ucl.ac.uk/thruk/>

[Naemon alerts - ACKnowledging Services are meant to be down](Naemon_alerts_-_ACKnowledging_Services_are_meant_to_be_down)

### Grafana

<https://network-monitoring-master1.nwg.ucl.ac.uk:3000/>

## HTOP

SSH onto the servers and run: htop

Shows which individual processes are running

## vrOps

<https://isdvi-tpc-vc02.ad.ucl.ac.uk/>for VMs in TP.

<https://isdvi-sdc-vc02.ad.ucl.ac.uk/> for VMs in Slough.

Login with AD\\username and password.

## Cache

See [Redis](Redis) (and all the child pages)

## Analytics

Log in at[  https://analytics.google.com](https://analytics.google.com)   use LTA account

Choose Wiki and Moodle → moodle 18/19 → all website data

**Behaviour -&gt; Overview** gives sessions

## MySQL

`https://mysqlmonitoring.ucl.ac.uk:18443/`

`ps -u ccspsql    for processes running as ccspsql`

## SIEM

Access Pending to SIEM pending Ian Carter granting the team access. 

Apache logs are all sent there 

## 
Monitoring Improvements Epic

<https://ucldata.atlassian.net/browse/LNA-26>

## TMUX

ssh into the desired server (for example mdl-admin02.ad.ucl.ac.uk) and create a session:

    tmux new

You'll be inside a new tmux session.

From that session, you'll have to create panes and, in each pane, type the command you want to execute.

On [mdl-admin02.ad.ucl.ac.uk](http://mdl-admin02.ad.ucl.ac.uk), create separate panes for the following commands:

1.** **

**Cron log**

``` bash
tail -f /var/log/moodlecron/moodle-main.log
```

2.

**Cron completion**

``` bash
watch -t -n 30 -d "echo '## Cron completion status'; grep -C1 'Cron completed' /var/log/moodlecron/moodle-main.log | tail -n 4"
```

3.

**Load averages**

``` bash
watch -n5 -t "echo '## $(hostname -s): Loadavg'; echo; cat /proc/loadavg"
```

**Processes (unoconv, gs, clamscan, soffice)**

``` bash
watch -t -n5 -d "echo '## $(hostname -s): clamscan/gs/ procs'; ps aux | egrep '(clamscan|gs|VSZ)' | egrep -v '(grep|watch)'"
```

Create additional panes to ssh into all the moodle app servers.

On each app server, run the comands...

**Load averages**

``` bash
watch -n5 -t "echo '## $(hostname -s): Loadavg'; echo; cat /proc/loadavg"
```

**Processes (unoconv, gs, clamscan, soffice)**

``` bash
watch -t -n5 -d "echo '## $(hostname -s): clamscan/gs/ procs'; ps aux | egrep '(clamscan|gs|VSZ)' | egrep -v '(grep|watch)'"
```

### **GhostScript**

This is also seen in the same tmux session which can be identified as usr/bin/gs -q -sDevice=png16m -dSafer ..... e.c.t as the ghost script is single core threading, you'll see that the CPU usage is at 100%.  Naemon will also show the applications servers thread load above 1.  To kill email Web Technologies**.**


