#!/bin/bash

curl --verbose -X PUT "http://10.60.21.33/api/admin/datacenters/710/storage/devices/245/pools/9eb74b78-68a2-4271-a429-0d9f395a0adc" \
       -H "Content-type:application/xml" \
       -H "Accept:application/xml" \
       -d @storage_pool_update.xml \
       -u admin:xabiquo | xmlindent -f



