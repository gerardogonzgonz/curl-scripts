#!/bin/bash

curl --verbose -X POST "http://10.60.11.44:8009/api/admin/datacenters/1/racks/1/machines/" \
    -H "Content-type: application/vnd.abiquo.machine+xml" \
    -H "Accept: application/vnd.abiquo.machine+xml" \
    -d @machine.xml \
    -u admin:xabiquo | xmlindent -nbe -f
