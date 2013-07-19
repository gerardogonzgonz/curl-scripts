#!/bin/bash

curl --verbose -X GET "http://10.60.11.30/nodecollector/node/virtualsystem_by_name?hyp=HYPERV_301&name=gerardoVM_hyperv&ip=10.60.1.77&user=bcn.abiquo.com\Gerardo&password=gerardo" -H "application/vnd.abiquo.virtualmachinedefinition+xml" | xmlindent -nbe -f
