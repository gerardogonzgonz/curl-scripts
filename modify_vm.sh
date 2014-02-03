#!/bin/bash

curl --verbose 'http://10.60.11.30/api/cloud/virtualdatacenters/493/virtualappliances/311/virtualmachines/611' \
	-X "PUT" \
        -H 'Accept: application/vnd.abiquo.acceptedrequest+xml' \
	-H 'Content-Type: application/vnd.abiquo.virtualmachine+xml' \
        -u admin:xabiquo \
        -d @vmupdate25 | xmlindent -nbe -f
