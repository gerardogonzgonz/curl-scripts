#!/bin/bash

curl --verbose -X PUT http://10.60.11.11/api/admin/datacenters/1/racks/1\
	 -H 'Accept: application/vnd.abiquo.rack+xml;version=2.2'	\
	 -H 'Content-Type: application/vnd.abiquo.rack+xml;version=2.2' \
	 -u admin:xabiquo \
	 -d @rack_modified.xml | xmlindent -nbe -f
