#!/bin/bash

curl --verbose 'http://10.60.21.187/api/cloud/virtualdatacenters/2/virtualappliances/4/virtualmachines/9/storage/volumes/510' \
      -X "DELETE" \
      -H "Accept:application/vnd.abiquo.acceptedrequest+xml;version=2.0;" \
      -u admin:xabiquo | xmlindent -nbe -f
