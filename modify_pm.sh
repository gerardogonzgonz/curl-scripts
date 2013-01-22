#!/bin/bash

curl --verbose 'http://10.60.21.187/api/admin/datacenters/149/racks/103/machines/86' \
        -X PUT \
	-H "Content-type: application/vnd.abiquo.machine+xml; version=2.0;" \
        -H "Accept: application/vnd.abiquo.machine+xml; version=2.0;" \
        -d @modifymachine.xml \
        -u admin:xabiquo | xmlindent -nbe -f
