# Microsoft SQL Server

The Microsoft SQL Server Pack contains pre-configured tags, saved queries, and dashboards. These tags and saved queries have been created to help you maintain and troubleshoot your Microsoft SQL Server environment.

One option that is helpful for SQL server job monitoring is to make sure job agents write events to the standard Windows Application event log. Under the Notifications page of a new SQL Server job agent definition, make sure the checkbox labeled "Write to the Windows Application Event Log:" is checked. This will write job agent information to the standard Windows log under event ID 208. This Community Pack is set up to alerty on that event ID, and will either show the status as Succeeded, Failed, or Completed, depending on what setting you choose when setting up the job. This is configured on a per job basis, and can be a useful alert for monitoring custom SQL jobs. (Please see screenshot, [here.](SQL_Event_Log_Config.PNG
))

This Pack contains the following:

*   **Dashboards:** A dashboard giving visibility into failed backups, occurrence of event codes, and host activity.
*   **Saved Queries:** Thirty different searches to help you investigate disk space errors, replication issues, full transaction logs, login errors, file access errors, and possible database corruption.
*   **Tags and Alerts:** Tags highlight instances of important SQL Server events. These tags can quickly be configured as basic alerts, anomaly alerts and inactivity alerts to highlight spikes in important security events, password updates, and policy related events.

**Requirements:**  
- Logentries Account - Don't have a Logentries Account? [Sign up for a free account](https://logentries.com/communityregistration/)

**Contribute:**  
You can contribute to the contents of this pack or submit a new pack by creating a GitHub Pull Request.  
- Please see the GitHub Repository here: [https://github.com/logentries/le_community_packs](https://github.com/logentries/le_community_packs)  
- For instructions on how to create and format packs please see the [documentation.](https://logentries.com/doc/community-packs/#create-communitypacks)
