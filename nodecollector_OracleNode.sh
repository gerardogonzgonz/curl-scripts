#!/bin/bash
#while(true);
#do
curl --verbose -X GET "http://10.60.11.30/nodecollector/node?managerip=10.60.11.16&hyp=ORACLE_VM&manageruser=admin&managerpassword=Abiqu0203" -H "Accept:application/vnd.abiquo.hypervisorDiscoveryList+xml" | xmlindent -nbe -f
#done
