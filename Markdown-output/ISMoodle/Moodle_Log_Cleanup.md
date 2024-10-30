# Moodle Log Cleanup

### Current Logs

Currently Moodle has logs dating back to July 2015.  This timeframe will be kept in the Moodle snapshot and the live Moodle will be pruned so it only holds one year’s worth of logs.

### **Tables to prune**

'mdl\_logstore\_standard\_log'

'mdl\_message\_read'

### Queries to run

*Show tables sizes:*

SELECT table\_name "Table Name", table\_rows "Rows Count", round(((data\_length + index\_length)/1024/1024/1024),2)

"Table Size (GB)" FROM information\_schema.TABLES WHERE table\_schema = "moodle\_dev\_04Oct2016"

ORDER BY (data\_length + index\_length) DESC;

 

*Delete logs older than 1 year: (delete 6 months at a time otherwise the query will timeout.  Each delete query takes around 6 hours to complete)
*

***(1st query to run)***

delete FROM mdl\_logstore\_standard\_log

WHERE timecreated &lt; UNIX\_TIMESTAMP(20160121);

***(2nd query to run)***

delete FROM mdl\_logstore\_standard\_log

WHERE timecreated &lt; UNIX\_TIMESTAMP(20160721);

*
*
