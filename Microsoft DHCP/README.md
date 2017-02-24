# Microsoft DHCP

The Microsoft DHCP Server Pack contains pre-configured tags, saved queries, and dashboards. These tools have been created to help you maintain and troubleshoot your Microsoft DHCP Server environment. Make sure to add the Windows DHCP event log to your Logentries agent on the target server located at C:\Windows\System32\winevt\Logs\Microsoft-Windows-Dhcp-Server/Operational.evtx; be sure to check your system for the proper path.

This Pack contains the following:

*   **Dashboard:** The dashboard included with this pack provides example bar and line graphs monitoring scope configuration, modification, and reservation deletion. It also includes a count of reservations configured.
*   **Saved Queries:** Searches to help you monitor various DHCP scope and reservation events, including configurations, additions, deletions, and modifications.
*   **Tags and Alerts:** Tags highlight instances of important SQL Server events. These tags can quickly be configured as basic alerts, anomaly alerts, and inactivity alerts to highlight spikes in important events.

**Requirements:**  
- Logentries Account - Don't have a Logentries Account? [Sign up for a free account](https://logentries.com/communityregistration/)

**Contribute:**  
You can contribute to the contents of this pack or submit a new pack by creating a GitHub Pull Request.  
- Please see the GitHub Repository here: [https://github.com/logentries/le_community_packs](https://github.com/logentries/le_community_packs)  
- For instructions on how to create and format packs please see the [documentation.](https://logentries.com/doc/community-packs/#create-communitypacks)