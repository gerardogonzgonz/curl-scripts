#!/bin/bash

curl --verbose 'http://10.60.11.30/api/admin/datacenters/1/network/3' \
	-X "PUT" \
        -H 'Accept: application/vnd.abiquo.vlan+json;version=2.6' \
	-H 'Content-Type: application/vnd.abiquo.vlan+json;version=2.6' \
        -u admin:xabiquo \
        -d @network | xmlindent -nbe -f
