#!/bin/bash

# change IP to real IP of rsyslog server
# rsyslog server
logger -p 0 -T -P 514 -n 10.0.0.1 -t 'Ubuntu' 'TCP Test message'
logger -p 0 -d -P 514 -n 10.0.0.1 -t 'Ubuntu' 'UDP Test message'
# promtail in rsyslog container
logger -p 0 -T -P 1514 -n 10.0.0.1 -t 'Ubuntu' 'TCP Test message'
logger -p 0 -d -P 1514 -n 10.0.0.1 -t 'Ubuntu' 'UDP Test message'
# native promtail server
logger -p 0 -T -P 5140 -n 10.0.0.1 -t 'Ubuntu' 'TCP Test message'
logger -p 0 -d -P 5140 -n 10.0.0.1 -t 'Ubuntu' 'UDP Test message'
