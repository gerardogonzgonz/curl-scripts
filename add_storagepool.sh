#!/bin/bash

curl --verbose --insecure "https://10.60.11.220/api/admin/datacenters/1/storage/devices/13/pools" \
    -u "admin:xabiquo" \
    -X "POST" \
    -H "Accept: application/vnd.abiquo.storagepools+xml; version=2.6" \
    -H "Content-Type: application/vnd.abiquo.storagepools+xml; version=2.6" \
    -d @add_storagepool.xml | xmlindent -nbe -f
