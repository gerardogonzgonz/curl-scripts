#!/bin/bash

curl --verbose 'http://10.60.21.187:80/api/cloud/virtualdatacenters/64/virtualappliances/110/virtualmachines/61/network/nics' \
	-X "GET" \
	-u admin:xabiquo \
	-H "Content-type:application/xml" \
	-H "Accept:application/xml" | xmlindent -f
