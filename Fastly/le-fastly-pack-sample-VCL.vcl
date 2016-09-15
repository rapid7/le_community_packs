#To send logs from Fastly to Logentries using this custom VCL file 
#the user is required to replace the ACCOUNT_KEY placeholder in the 
#"sub vcl_deliver" section with the account key which can be found in 
#Fastly configuration panel in the form of "7OSG1Ei98aaLq9RZgIATvL"
#For more information visit www.logentries.com



sub vcl_recv {
#FASTLY recv

    if (req.request != "HEAD" && req.request != "GET" && req.request != "FASTLYPURGE") {
      return(pass);
    }
    
if (req.http.User-Agent ~ "iPad") {set req.http.X-Device = "iPad";}
else if (req.http.User-Agent ~ "iPhone" ) {set req.http.X-Device = "iPhone";}
else if (req.http.User-Agent ~ "Android" ) {set req.http.X-Device = "Android";}
else if (req.http.User-Agent ~ "Mobile" ) {set req.http.X-Device = "Mobile";}
else {set req.http.X-Device = "desktop";}

    return(lookup);
}

sub vcl_fetch {
#FASTLY fetch

  if ((beresp.status == 500 || beresp.status == 503) && req.restarts < 1 && (req.request == "GET" || req.request == "HEAD")) {
    restart;
  }

  if(req.restarts > 0 ) {
    set beresp.http.Fastly-Restarts = req.restarts;
  }

  if (beresp.http.Set-Cookie) {
    set req.http.Fastly-Cachetype = "SETCOOKIE";
    return (pass);
  }

  if (beresp.http.Cache-Control ~ "private") {
    set req.http.Fastly-Cachetype = "PRIVATE";
    return (pass);
  }

  if (beresp.status == 500 || beresp.status == 503) {
    set req.http.Fastly-Cachetype = "ERROR";
    set beresp.ttl = 1s;
    set beresp.grace = 5s;
    return (deliver);
  }  

  if (beresp.http.Expires || beresp.http.Surrogate-Control ~ "max-age" || beresp.http.Cache-Control ~"(s-maxage|max-age)") {
    # keep the ttl here
  } else {
    # apply the default ttl
    set beresp.ttl = 3600s;
  }

  return(deliver);
}

sub vcl_hit {
#FASTLY hit

  if (!obj.cacheable) {
    return(pass);
  }
  return(deliver);
}

sub vcl_miss {
#FASTLY miss
  return(fetch);
}

sub vcl_deliver {
#FASTLY deliver
#default response conditions
    #syslog Test
 	#Replace ACCOUNT_KEY place holder with your Factly Account Key
 
log {"syslog ACCOUNT_KEY LE :: client_ip="} req.http.Fastly-Client-IP {" "} {""-""} {" "} {""-""} {" timestamp="} now {" request="} req.request {" url=""} req.url {"" grace="} req.grace {" status="} resp.status {" response="} resp.response {" size="} req.bytes_read {" header_size="} req.header_bytes_read {" body_size="} req.body_bytes_read {" city="} geoip.city {" continent="} geoip.continent_code {" postalcode="} geoip.postal_code {" POP="}server.datacenter {" server_region="} server.region {" region="} geoip.region {" country="} geoip.country_code {" countryName="} geoip.country_name {" referrer="} req.http.referer {" devicetype="} req.http.X-Device {" numberOfHits="} obj.hits {" restarts="} req.restarts;

  return(deliver);
}

sub vcl_error {
#FASTLY error
}

sub vcl_pass {
#FASTLY pass
}