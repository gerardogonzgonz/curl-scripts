#!/bin/bash

curl --verbose -X POST 'http://10.60.21.187/api/cloud/virtualdatacenters/5/virtualappliances/5/virtualmachines/6/action/persistent' \
      -H "Accept: application/vnd.abiquo.acceptedrequest+xml; version=2.0;" \
      -H "Content-Type: application/vnd.abiquo.virtualmachinepersistent+xml; version=2.0;" \
      -u admin:xabiquo \
      -d '<virtualmachinepersistent>
<link rel="tier" type="application/vnd.abiquo.tier+xml" href="http://10.60.21.187:80/api/cloud/virtualdatacenters/5/tiers/41"/>
  <persistentName>monowall_new_persistent</persistentName>
</virtualmachinepersistent>' | xmlindent -nbe -f
