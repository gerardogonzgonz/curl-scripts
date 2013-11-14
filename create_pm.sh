#!/bin/bash

curl --verbose -X POST "http://10.60.11.30/api/admin/datacenters/13/racks/13/machines/" \
    -H "Content-type: application/vnd.abiquo.machine+xml;version=2.6" \
    -H "Accept: application/vnd.abiquo.machine+xml;version=2.6" \
    -d @machineOracle_xml \
    -u admin:xabiquo | xmlindent -nbe -f
