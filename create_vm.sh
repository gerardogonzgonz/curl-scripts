#!/bin/bash

curl --verbose -X POST 'http://10.60.11.30/api/cloud/virtualdatacenters/64/virtualappliances/64/virtualmachines' \
      -H "Accept: application/vnd.abiquo.virtualmachine+xml;version=2.6" \
      -H "Content-Type: application/vnd.abiquo.virtualmachine+xml;version=2.6" \
      -u admin:xabiquo \
      -d '<virtualMachine>
  <link rel="virtualmachinetemplate" type="application/vnd.abiquo.virtualmachinetemplate+xml" href="http://10.60.11.30:80/api/admin/enterprises/1/datacenterrepositories/14/virtualmachinetemplates/331"/>
  <link href="http://10.60.11.30:80/api/admin/enterprises/16" type="application/vnd.abiquo.enterprise+xml" rel="enterprise"/>
  <cpu>1</cpu>
  <hdInBytes>27262976</hdInBytes>
  <highDisponibility>0</highDisponibility>
  <idState>0</idState>
  <idType>0</idType>
  <name>testing_ubuntu</name>
  <ram>64</ram>
  <vdrpPort>0</vdrpPort>
</virtualMachine>' | xmlindent -nbe -f
