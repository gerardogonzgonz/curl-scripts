#!/bin/bash

curl --verbose 'http://10.60.11.25/api/admin/datacenters/2/racks/2/machines/4' \
        -X PUT \
	-H "Content-type: application/vnd.abiquo.machine+xml; version=2.6;" \
        -H "Accept: application/vnd.abiquo.machine+xml; version=2.6;" \
        -d @updatemachine2.6.xml \
        -u admin:xabiquo | xmlindent -nbe -f
