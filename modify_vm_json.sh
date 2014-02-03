#!/bin/bash

curl --verbose -X PUT 'http://10.60.11.44:8009/api/cloud/virtualdatacenters/1/virtualappliances/1/virtualmachines/1' -H 'Accept: application/vnd.abiquo.acceptedrequest+json' -H 'Content-Type: application/vnd.abiquo.virtualmachine+json' -u admin:xabiquo -d @update_vm_publicNic
