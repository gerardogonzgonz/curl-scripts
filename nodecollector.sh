#!/bin/bash
#while(true);
#do
curl --verbose -X GET "http://10.60.11.20/nodecollector/node?ip=10.60.1.74&hyp=VMX_04&user=root&password=temporal" -H "Accept:application/vnd.abiquo.hypervisorDiscoveryList+xml" | xmlindent -nbe -f
#done
