#!/bin/bash

curl --verbose -X PUT "http://10.60.21.187/api/admin/datacenters/3/storage/devices/4" \
       -H "Content-type:application/xml" \
       -H "Accept:application/xml" \
       -d @storage_device_creation.xml \
       -u admin:xabiquo | xmlindent -f
