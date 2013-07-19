#!/bin/bash

curl -X POST "http://10.60.11.20:80/api/admin/datacenters/55/network" \
    -H 'Accept: application/vnd.abiquo.vlan+xml' \
    -H 'Content-Type: application/vnd.abiquo.vlan+xml' \
    -d @external.xml \
    -u admin:xabiquo --verbose | xmlindent -nbe -f
