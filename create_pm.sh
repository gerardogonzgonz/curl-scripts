#!/bin/bash

curl --verbose -X POST "http://10.60.20.245/api/admin/datacenters/1/racks/2/machines/" \
    -H "Content-type: application/vnd.abiquo.machine+xml;version=2.2" \
    -H "Accept: application/vnd.abiquo.machine+xml;version=2.2" \
    -d @createmachine5.xml \
    -u admin:xabiquo | xmlindent -nbe -f
