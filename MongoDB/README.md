MongoDB 2.6.7 Database Monitoring Pack
------------------------------------

**This is a Community Pack for MongoDB Database Version 2.6**

The user is now able to take an advantage of MongoDB database logging capabilities and dashboard designed to give you an overview of activity within your entire database.

This Pack contains the following:

* **Saved Queries:** The user is able to graph the distribution of database modules, commands and average query result lengths. 

* **Tags and Alerts:** The user is able to tag all commands in the database such as: insert, delete, updateRole, etc. This functionality allows the user to understand the processes in their database. We included some performance alerting in this pack by including tags such as: Server Slow, Server Restarted, Connection Accepted or Journal flush exceeded 256MB.


![MongoDB3.0.1 Dashboard](https://raw.githubusercontent.com/siniar1990/le_community_packs/master/MongoDB/v2_6_7.png)

**_LOG ENTRY SAMPLE _*

`2015-03-20T22:27:23.371+0000 [TTLMonitor] query admin.system.indexes query: { expireAfterSeconds: { $exists: true } } planSummary: EOF ntoreturn:0 ntoskip:0 nscanned:0 nscannedObjects:0 keyUpdates:0 numYields:0 locks(micros) r:38 nreturned:0 reslen:20 0ms`

MongoDB 3.0.1 Database Monitoring Pack
------------------------------------

**This is a Community Pack for MongoDB Database Version 3.0**

Starting in MongoDB 3.0, MongoDB includes the severity level and component associated with each log message. These are some of the new logging features added in the new release of MongoDB. We take the advantage of every feature to provide you with tools to aid your database activity analytics. 

This Pack contains the following:

* **Saved Queries:** The user is able to graph the distribution of components, database commands, severity levels and average query result lengths.  

* **Tags and Alerts:** The user is able to tag all commands in the database such as: insert, delete, updateRole, etc. This functionality allows the user to understand the processes in their database. We included some performance alerting in this pack by including tags such as: Server Slow, Server Restarted, Connection Accepted or Journal flush exceeded 256MB.

![MongoDB3.0.1 Dashboard](https://github.com/siniar1990/le_community_packs/raw/master/MongoDB/v3_0_1.png)

**_LOG ENTRY SAMPLE_**

`21 Mar 2015 20:25:17.288  2015-03-21T20:25:17.169+0000 I WRITE    [conn1] insert test.users query: { _id: 9.0, user: "vv", status: "P" } ninserted:1 keyUpdates:0 writeConflicts:0 numYields:0 locks:{ Global: { acquireCount: { w: 1 } }, MMAPV1Journal: { acquireCount: { w: 3 } }, Database: { acquireCount: { w: 1 } }, Collection: { acquireCount: { W: 1 } } } 0ms`

TODO: Graph - Command Response Time