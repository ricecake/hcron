# hcron
Hardened Cron Daemon

* Implemented with riak core
* Needs cron and at functionality
* Need to handle telling if a cron for a timestamp has run. Record last run execution?
* Need to configure at least once or at most once, with levels of consistency for each. 
* Needs to have exact target time system, as well as dumb interval scheduling. 
