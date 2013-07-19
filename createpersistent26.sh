#!/bin/bash

curl --verbose -X POST 'http://10.60.11.30:80/api/admin/enterprises/2/datacenterrepositories/1/virtualmachinetemplates' \
      -H "Accept: application/vnd.abiquo.acceptedrequest+xml; version=2.6;" \
      -H "Content-Type: application/vnd.abiquo.virtualmachinetemplatepersistent+xml; version=2.6;" \
      -u aa:aa \
      -d '<virtualmachinetemplatepersistent>
<link href="http://10.60.11.30:80/api/cloud/virtualdatacenters/4" rel="virtualdatacenter"/>
<link href="http://10.60.11.30:80/api/admin/datacenters/1/storage/tiers/1" type="application/vnd.abiquo.tier+xml" rel="tier"/>
<link href="http://10.60.11.30:80/api/admin/enterprises/2/datacenterrepositories/1/virtualmachinetemplates/49" rel="virtualmachinetemplate"/>
<persistentTemplateName>aaaaaaaaaaaaaa</persistentTemplateName>
<persistentVolumeName></persistentVolumeName>
</virtualmachinetemplatepersistent>' | xmlindent -nbe -f
