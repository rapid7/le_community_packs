Docker Containers Monitoring Pack
----------------------------

The Docker Community Pack provides out-of-the-box Tags, Alerts, Saved queries and Visualizations for stats and log data collected from your Docker containers. The pack is designed to be used with the Docker Logentries container which uses the Docker Stats API (available with Docker 1.5) to stream container level metrics (e.g. CPU, Memory, Network) as well as your container log data into Logentries.

Specifically, the Docker Community Pack contains:

* Saved Queries: This pack includes memory usage related Tags e.g. memory usage exceeding 4GB. Additionally, Anomaly alerts notify you to instances of maximum CPU usage.
* Tags and Alerts: Saved Searches enable you to plot the current CPU or Memory usage and group it by container ID. This feature gives you a nice overview of all the containers running on your Docker host and how resources are being consumed at a container level.
* Dashboards: Pre-installed timeline graphs and bar charts provide a detailed overview of network activity across all containers e.g. average number of packets received or total bytes sent. You are able to view the average CPU usage for all containers or modify the search to find the current CPU usage for individual container providing the ID assigned by Docker.

Requirements:
- Logentries Account - Don't have a Logentries Account? Sign up for a free account
- Docker-Logentries Container installed.
