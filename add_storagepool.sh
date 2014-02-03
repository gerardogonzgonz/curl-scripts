#!/bin/bash

curl --verbose "http://10.60.11.30/api/admin/datacenters/1/storage/devices/5/pools" \
    -u "admin:xabiquo" \
    -X "POST" \
    -H "Accept: application/vnd.abiquo.storagepools+json" \
    -H "Content-Type: application/vnd.abiquo.storagepools+json" \
    -d @add_storagepool_json
