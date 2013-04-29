#!/bin/bash

curl --verbose -X POST 'http://10.60.11.187/api/cloud/virtualdatacenters/127/virtualappliances' \
      -H "Content-Type: application/vnd.abiquo.virtualappliance+xml;version=2.4" \
      -H "Accept: application/vnd.abiquo.virtualappliance+xml;version=2.4" \
      -u usertest:1234 \
      -d '<virtualAppliance>
  <error>0</error>
  <highDisponibility>0</highDisponibility>
  <name>vapp3069</name>
  <publicApp>0</publicApp>
</virtualAppliance>' | xmlindent -nbe -f
