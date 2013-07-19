#!/bin/bash

curl --verbose 'http://10.60.11.30/api/cloud/virtualdatacenters/1/virtualappliances/4/virtualmachines/49?force=true' \
	-X "PUT" \
        -H 'Accept: application/vnd.abiquo.acceptedrequest+xml;version=2.6' \
	-H 'Content-Type: application/vnd.abiquo.virtualmachine+xml;version=2.6' \
        -u admin:xabiquo \
        -d @vmupdate13 | xmlindent -nbe -f
