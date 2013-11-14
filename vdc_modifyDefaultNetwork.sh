#!/bin/bash

curl --verbose -X PUT "http://10.60.11.50:80/api/cloud/virtualdatacenters/42/action/defaultvlan" \
    -H "Accept:application/vnd.abiquo.links+xml; version=2.6" \
    -H "Content-type:application/vnd.abiquo.links+xml; version=2.6" \
    -u admin:xabiquo \
    -d '<links><link rel="publicnetwork" href="http://10.60.11.50:80/api/admin/datacenters/1/network/53"/></links>' | xmlindent -nbe -f
