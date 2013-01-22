#!/bin/bash

#curl --verbose -X PUT -u admin:xabiquo -H 'Content-type: application/xml' -d '<virtualMachineState><state>OFF</state></virtualMachineState>' 'http://10.60.21.185/api/cloud/virtualdatacenters/1/virtualappliances/1/virtualmachines/1/state' | xmlindent -nbe -f

#curl --verbose -X PUT -u admin:xabiquo -H 'Content-type: application/xml' -d '<virtualMachineState><power>ON</power></virtualMachineState>' 'http://10.60.11.186/api/cloud/virtualdatacenters/6/virtualappliances/8/virtualmachines/16/state' | xmlindent -nbe -f

#curl --verbose -X POST -u admin:xabiquo -H 'Content-type: application/xml' -d '<virtualMachineTask><forceUndeploy>false</forceUndeploy></virtualMachineTask>' 'http://10.60.11.186/api/cloud/virtualdatacenters/2/virtualappliances/6/action/undeploy' | xmlindent -nbe -f

#curl --verbose -X "POST" -u admin:xabiquo -H "Content-type: application/xml" -d "<virtualMachineTask><forceEnterpriseSoftLimits>ON</forceEnterpriseSoftLimits></virtualMachineTask>" 'http://10.60.11.186/api/cloud/virtualdatacenters/5/virtualappliances/4/virtualmachines/3/action/deploy' | xmlindent -nbe -f

#curl --verbose -X POST -u geraradmin:1234 -H 'Content-type: application/xml' -d '<virtualmachinetask><forceEnterpriseSoftLimits>OFF</forceEnterpriseSoftLimits></virtualmachinetask>' 'http://10.60.11.186/api/cloud/virtualdatacenters/13/virtualappliances/18/action/undeploy' | xmlindent -nbe -f

curl --verbose -X POST -u geraradmin:1234 -H 'Content-type: application/xml' -d '<virtualmachinetask><forceEnterpriseSoftLimits>OFF</forceEnterpriseSoftLimits></virtualmachinetask>' -H "Accept:application/xml" 'http://10.60.11.186/api/cloud/virtualdatacenters/13/virtualappliances/18/virtualmachines/64/action/deploy' | xmlindent -nbe -f
