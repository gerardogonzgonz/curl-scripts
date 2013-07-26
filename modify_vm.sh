#!/bin/bash

curl --verbose 'http://10.60.11.18/api/cloud/virtualdatacenters/19/virtualappliances/19/virtualmachines/34?force=true' \
	-X "PUT" \
        -H 'Accept: application/vnd.abiquo.acceptedrequest+xml;version=2.4' \
	-H 'Content-Type: application/vnd.abiquo.virtualmachine+xml;version=2.4' \
        -u admin:xabiquo \
        -d @vmupdate14 | xmlindent -nbe -f
