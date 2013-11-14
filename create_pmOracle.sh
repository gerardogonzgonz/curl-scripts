#!/bin/bash

curl --verbose -X POST "http://10.60.1.61/api/admin/datacenters/13/racks/13/machines/" \
    -H "Content-type: application/vnd.abiquo.machine+json;version=2.6" \
    -H "Accept: application/vnd.abiquo.machine+json;version=2.6" \
    -d @machineOracle \
    -u admin:xabiquo | jsonprint
