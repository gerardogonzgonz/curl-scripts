#!/bin/bash

curl --verbose -X POST 'http://10.60.21.187/api/cloud/virtualdatacenters/237/virtualappliances' \
      -H "Content-Type: application/vnd.abiquo.virtualappliance+xml;version=2.0" \
      -H "Accept: application/vnd.abiquo.virtualappliance+xml;version=2.0" \
      -u pep:1234 \
      -d '<virtualAppliance>
  <error>0</error>
  <highDisponibility>0</highDisponibility>
  <name>JC-Virtual AppAloha</name>
  <publicApp>0</publicApp>
</virtualAppliance>' | xmlindent -nbe -f
