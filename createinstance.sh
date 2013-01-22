#!/bin/bash

curl --verbose -X POST 'http://mothership.bcn.abiquo.com/api/cloud/virtualdatacenters/5/virtualappliances/989/virtualmachines/2299/action/instance' \
      -H "Accept: application/vnd.abiquo.acceptedrequest+xml; version=2.0;" \
      -H "Content-Type: application/vnd.abiquo.virtualmachineinstance+xml; version=2.0;" \
      -u ggonzalez:ggonzalez \
      -d '<virtualmachineinstance> 
<instanceName>Gerardo Environment</instanceName>
</virtualmachineinstance>' | xmlindent -nbe -f
