#!/bin/bash

curl --verbose -X PUT http://10.60.11.30:80/api/cloud/virtualdatacenters/512/virtualappliances/330/virtualmachines/630 -u admin:xabiquo -H "Accept: application/vnd.abiquo.acceptedrequest+xml" -H "Content-Type: application/vnd.abiquo.virtualmachinewithnodeextended+xml" -d @attachNic | xmlindent -nbe -f
