Fastly Monitoring Pack
-------------------------------------

The Fastly Community Pack extracts key information from your Fastly logs. The Pack comes with preconfigured Tags, Alerts, Saved Searches and ready-to-use Visualizations.

Requirements:
This Community Pack is expecting the format of your logs to be in a KVP format, [Screenshot](http://take.ms/CC1eK)

Log formatter: "client_ip" = "%{req.http.Fastly-Client-IP}V", "timestamp" = "%{now}V", "request" = "%{req.request}V", "url" = "%{req.url}V", "grace" = "%{req.grace}V", "status" = "%{resp.status}V", "response" = "%{resp.response}V", "size" = "%{req.bytes_read}V", "header_size" = "%{req.header_bytes_read}V", "body_size" = "%{req.body_bytes_read}V", "city" = "%{geoip.city}V", "continent" = "%{geoip.continent_code}V", "postalcode" = "%{geoip.postal_code}V", "POP" = "%{server.datacenter}V", "server_region" = "%{server.region}V", "region" = "%{geoip.region}V", "country" = "%{geoip.country_code}V", "countryName" = "%{geoip.country_name}V", "referrer" = "%{req.http.referer}V", "devicetype" = "%{req.http.X-Device}V", "numberOfHits" = "%{obj.hits}V", "restarts" = "%{req.restarts}"

Specifically, the Fastly Community Pack contains:

* Saved Queries: Saved Queries that enables you to detect device type, count unique IPs, find total page hits over time, and requests by country, region or datacenter.
* Tags and Alerts: Anomaly alerts highlight instances of large file downloads; Inactivity alerts can be triggered when the application is not used for more than 24h. This pack also includes HTTP status code tags and alerts.
* Dashboards: Out-of-the-box dashboards provide real-time visualizations of valuable data about datacenter distribution, requests by country, unique IP counter and more...
