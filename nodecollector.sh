#!/bin/bash
#while(true);
#do
curl --verbose -X GET "http://10.60.11.30/nodecollector/node?ip=10.60.1.81&hyp=KVM&user=root&password=temporal" -H "Accept:application/vnd.abiquo.hypervisorDiscoveryList+xml" | xmlindent -nbe -f
#done
