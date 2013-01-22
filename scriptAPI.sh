#!/bin/bash 

curl --verbose 'http://10.60.21.206/api/admin/datacenters' \
        -X POST \
        -H "Content-type:application/xml" \
        -H "Accept:application/xml" \
	-u Jose:Jose | xmlindent -f \ 
	#-d "<datacenter><name>datacenter_7</name><location>Redwood</location></datacenter>" \
	-d "<datacenter><name>ivan datacenter</name><location>Redwood</location></datacenter>" \



