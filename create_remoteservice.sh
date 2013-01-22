#!/bin/bash

curl --verbose -X POST "http://10.60.20.245/api/admin/datacenters/1/remoteservices" \
       -H "Accept: application/vnd.abiquo.remoteservice+xml;version=2.2" \
      -H "Content-Type: application/vnd.abiquo.remoteservice+xml;version=2.2" \
      -u admin:xabiquo \
      -d '<remoteService><type>BPM_SERVICE</type></remoteService>' | xmlindent -nbe -f
