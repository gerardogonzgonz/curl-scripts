#!/bin/bash

curl --verbose -X GET "http://10.60.11.30/nodecollector/node/virtualsystem_by_name?hyp=ORACLE_VM&name=gerardoVM_oracle&managerip=10.60.11.6&manageruser=admin&managerpassword=Abiqu0203" -H "application/vnd.abiquo.virtualmachinedefinition+xml" | xmlindent -nbe -f
