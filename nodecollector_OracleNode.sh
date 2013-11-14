#!/bin/bash
#while(true);
#do
curl --verbose -X GET "http://10.60.11.220:8009/nodecollector/node?managerip=10.60.11.6&hyp=ORACLE_VM&manageruser=admin&managerpassword=Abiqu0203" -H "Accept:application/vnd.abiquo.hypervisorDiscoveryList+xml" | xmlindent -nbe -f
#done
