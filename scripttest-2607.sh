#!/bin/bash

curl --verbose -X GET 'http://10.60.21.206/api/admin/datacenters/4/remoteservices/bpmservice' \
       -H "Accept:application/xml" \
       -u admin:xabiquo | xmlindent -f

