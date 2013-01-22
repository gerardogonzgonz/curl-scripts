#!/bin/bash

curl --verbose -X POST 'http://10.60.20.245/api/cloud/virtualdatacenters/3/virtualappliances/12/virtualmachines' \
      -H "Accept: application/vnd.abiquo.virtualmachine+xml;version=2.2" \
      -H "Content-Type: application/vnd.abiquo.virtualmachine+xml;version=2.2" \
      -u User:xabiquo \
      -d '<virtualMachine>
  <link rel="virtualmachinetemplate" type="application/vnd.abiquo.virtualmachinetemplate+xml" href="http://10.60.20.245:80/api/admin/enterprises/1/datacenterrepositories/1/virtualmachinetemplates/10"/>
  <link href="http://10.60.20.245:80/api/admin/enterprises/1" type="application/vnd.abiquo.enterprise+xml" rel="enterprise"/>
  <cpu>1</cpu>
  <hdInBytes>27262976</hdInBytes>
  <highDisponibility>0</highDisponibility>
  <idState>0</idState>
  <idType>0</idType>
  <name>Core</name>
  <ram>64</ram>
  <vdrpPort>0</vdrpPort>
</virtualMachine>' | xmlindent -nbe -f
