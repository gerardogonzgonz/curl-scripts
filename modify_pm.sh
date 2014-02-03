#!/bin/bash

curl --verbose 'http://10.60.11.30/api/admin/datacenters/5/racks/5/machines/6' \
        -X PUT \
	-H "Content-type: application/vnd.abiquo.machine+xml" \
        -H "Accept: application/vnd.abiquo.machine+xml" \
        -d @updatemachine2.9.xml \
        -u admin:xabiquo | xmlindent -nbe -f
