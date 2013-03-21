#!/bin/bash

curl --verbose -X POST 'http://10.60.1.224/api/cloud/virtualdatacenters/4/virtualappliances/3/action/deploy' -u admin:xabiquo -H 'Content-type:application/vnd.abiquo.virtualmachinetask+xml; version=2.0;' -d '<virtualmachinetask><forceEnterpriseSoftLimits>OFF</forceEnterpriseSoftLimits></virtualmachinetask>' | xmlindent -nbe -f


#curl --verbose -X PUT -u admin:xabiquo -H 'Accept:application/vnd.abiquo.iscsivolumes+xml; version=2.0;' -d '<virtualmachinestate><state>OFF</state></virtualmachinestate>' 'http://10.60.21.187/api/cloud/virtualdatacenters/15/virtualappliances/62/virtualmachines/12/state' | xmlindent -nbe -f
