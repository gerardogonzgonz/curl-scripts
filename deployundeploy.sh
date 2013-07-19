#!/bin/bash
while(true);
do
curl --verbose -X POST 'http://10.60.11.20/api/cloud/virtualdatacenters/151/virtualappliances/114/virtualmachines/236/action/undeploy' \
     -u admin:xabiquo \
      -H 'Content-type:application/vnd.abiquo.virtualmachinetask+xml; version=2.6;' \
       -H 'Accept:application/vnd.abiquo.acceptedrequest+xml; version=2.6;' \
        -d '<virtualmachinetask><forceEnterpriseSoftLimits>OFF</forceEnterpriseSoftLimits></virtualmachinetask>' | xmlindent -nbe -f

curl --verbose -X POST 'http://10.60.11.20/api/cloud/virtualdatacenters/151/virtualappliances/114/virtualmachines/236/action/deploy' \
         -u admin:xabiquo \
               -H 'Content-type:application/vnd.abiquo.virtualmachinetask+xml; version=2.6;' \
                      -H 'Accept:application/vnd.abiquo.acceptedrequest+xml; version=2.6;' \
                              -d '<virtualmachinetask><forceEnterpriseSoftLimits>OFF</forceEnterpriseSoftLimits></virtualmachinetask>' | xmlindent -nbe -f
done
