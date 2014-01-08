#!/bin/bash

curl --verbose -X PUT 'http://10.60.11.30/api/cloud/virtualdatacenters/35/virtualappliances/35/virtualmachines/41' -H 'Accept: application/vnd.abiquo.acceptedrequest+json' -H 'Content-Type: application/vnd.abiquo.virtualmachine+json' -u admin:xabiquo -d @vmupdate22_json
