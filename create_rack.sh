#!/bin/bash

curl -X POST --verbose 'http://10.60.21.33/api/admin/datacenters/1/racks' \
       -H "Content-type:application/xml" \
       -H "Accept:application/xml" \
       -d @rack.xml \
       -u admin:xabiquo | xmlindent -nbe -f
