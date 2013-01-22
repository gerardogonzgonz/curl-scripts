#!/bin/bash

#curl --verbose -X PUT -u admin:xabiquo -H 'Content-type: application/xml' 'http://10.60.21.187/api/cloud/virtualdatacenters/27/virtualappliances/27/virtualmachines/34' \
#-d '<virtualMachine>
#        <link href="http://10.60.21.187/api/admin/enterprises/1/datacenterrepositories/16/virtualmachinetemplates/265" rel="virtualmachinetemplate" title="m0n0wall"/>
 #       <cpu>4</cpu>
 #       <ram>512</ram>
  #  </virtualMachine>' | xmlindent -nbe -f


curl --verbose -X PUT http://10.60.21.187/api/cloud/virtualdatacenters/296/virtualappliances/116/virtualmachines/37 \
-H "Accept: application/vnd.abiquo.virtualmachine+xml;version=2.0" \ 
-H "Content-type: application/vnd.abiquo.acceptedrequest+xml; version=2.0;" \
-u admin:xabiquo \
-d '<virtualMachine>
<cpu>2</cpu>
    <hdInBytes>107373568</hdInBytes>
    <highDisponibility>0</highDisponibility>
    <id>37</id>
    <idState>1</idState>
    <idType>1</idType>
    <name>ABQ_5eea1254-ad01-4c47-acbf-d5379d6475ae</name>
    <ram>512</ram>
    <state>NOT_ALLOCATED</state>
    <uuid>5eea1254-ad01-4c47-acbf-d5379d6475ae</uuid>
    <vdrpPort>0</vdrpPort>
</virtualMachine>' | xmlindent -nbe -f





#-d '<virtualMachine>
 #       <link href="http://10.60.21.187/api/admin/enterprises/1/datacenterrepositories/3/virtualmachinetemplates/31" rel="virtualmachinetemplate" title="m0n0wall"/>
  #      <cpu>2</cpu>
   #     <ram>512</ram>
#<link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/4/virtualappliances/4/virtualmachines/5/network/nics/764" rel="edit"/>
 #       <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/4/privatenetworks/4/ips/764" rel="privateip"/>
  #      <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/4/privatenetworks/4" rel="privatenetwork" title="DefaultNetwork"/>
   # </virtualMachine>' | xmlindent -nbe -f
