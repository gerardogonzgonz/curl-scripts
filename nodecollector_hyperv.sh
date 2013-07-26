#!/bin/bash

curl --verbose -X GET "http://10.60.11.9/nodecollector/node/virtualsystem_by_name?hyp=VMX_04&name=vm5385&ip=10.60.1.74&user=root&password=temporal" -H "application/vnd.abiquo.virtualmachinedefinition+xml" | xmlindent -nbe -f
