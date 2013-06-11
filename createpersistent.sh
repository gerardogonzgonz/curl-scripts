#!/bin/bash

curl --verbose -X POST 'http://10.60.11.20/api/cloud/virtualdatacenters/51/virtualappliances/56/virtualmachines/95/action/persistent' \
      -H "Accept: application/vnd.abiquo.acceptedrequest+xml; version=2.6;" \
      -H "Content-Type: application/vnd.abiquo.virtualmachinepersistent+xml; version=2.6;" \
      -u admin:xabiquo \
      -d '<virtualmachinepersistent>
<link rel="tier" type="application/vnd.abiquo.tier+xml" href="http://10.60.11.20:80/api/cloud/virtualdatacenters/51/tiers/193"/>
  <persistentName>monowall_new_persistent_inE2</persistentName>
</virtualmachinepersistent>' | xmlindent -nbe -f
