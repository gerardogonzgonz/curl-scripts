#!/bin/bash

curl --verbose 'http://10.60.11.44:8009/api/admin/datacenters/1/racks/1/machines/2' \
        -X PUT \
	-H "Content-type: application/vnd.abiquo.machine+json" \
        -H "Accept: application/vnd.abiquo.machine+json" \
        -d @updatemachineKVM \
        -u admin:xabiquo
