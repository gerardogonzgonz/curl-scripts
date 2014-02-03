#!/bin/bash

curl --verbose -X PUT http://10.60.11.30:80/api/admin/enterprises/199/limits/313/externalnetworks/955/ips/212219 -u admin:xabiquo -H Accept:application/vnd.abiquo.externalip+json -H Content-type:application/vnd.abiquo.externalip+json -d @externalIP_json
