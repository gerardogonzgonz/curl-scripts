#!/bin/bash

curl --verbose -X POST "http://10.60.11.20/api/admin/datacenters/34/racks/34/machines/" \
    -H "Content-type: application/vnd.abiquo.machine+xml;version=2.6" \
    -H "Accept: application/vnd.abiquo.machine+xml;version=2.6" \
    -d @machineESXI.xml \
    -u admin:xabiquo | xmlindent -nbe -f
