#!/bin/bash

curl --verbose -X POST 'http://10.60.21.187/api/admin/datacenters/14/remoteservices' \
      -H "Accept: application/vnd.abiquo.remoteservice+xml;version=2.0" \
      -H "Content-Type: application/vnd.abiquo.remoteservice+xml;version=2.0" \
      -u admin:xabiquo \
      -d @RScreation.xml | xmlindent -nbe -f 
