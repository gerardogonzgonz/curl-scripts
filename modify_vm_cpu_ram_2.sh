#!/bin/bash

curl --verbose 'http://10.60.21.187/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17' \
	-X PUT \
	-H "Accept:application/vnd.abiquo.acceptedrequest+xml; version=2.0;" \
	-H "Content-Type: application/vnd.abiquo.virtualmachine+xml;version=2.0" \
	-u admin:xabiquo \
	-d '<virtualMachine>
<link href="http://10.60.21.187:80/api/admin/enterprises/1" type="application/vnd.abiquo.enterprise+xml" rel="enterprise"/>
    <link href="http://10.60.21.187:80/api/admin/enterprises/1/users/1" type="application/vnd.abiquo.user+xml" rel="user"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53" type="application/vnd.abiquo.virtualdatacenter+xml" rel="virtualdatacenter" title="VMX_04"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38" type="application/vnd.abiquo.virtualappliance+xml; version=2.0" rel="virtualappliance"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/network/configurations" type="application/vnd.abiquo.virtualmachinenetworkconfigurations+xml" rel="configurations"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/network/configurations/53" type="application/vnd.abiquo.virtualmachinenetworkconfiguration+xml" rel="network_configuration"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/network/nics" type="application/vnd.abiquo.nics+xml" rel="nics"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/storage/disks" type="application/vnd.abiquo.harddisks+xml" rel="disks"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/action/ips" type="application/vnd.abiquo.ips+xml" rel="ips"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/state" type="application/vnd.abiquo.virtualmachinestate+xml" rel="state"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/action/undeploy" type="application/vnd.abiquo.acceptedrequest+xml" rel="undeploy"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/action/deploy" type="application/vnd.abiquo.acceptedrequest+xml" rel="deploy"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/action/reset" type="application/vnd.abiquo.acceptedrequest+xml" rel="reset"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/action/instance" type="application/vnd.abiquo.acceptedrequest+xml" rel="instance"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/tasks" type="application/vnd.abiquo.tasks+xml" rel="tasks"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17" type="application/vnd.abiquo.virtualmachine+xml" rel="edit"/>
    <link href="http://10.60.21.187:80/api/cloud/virtualdatacenters/53/virtualappliances/38/virtualmachines/17/storage/volumes" type="application/vnd.abiquo.iscsivolumes+xml" rel="volumes"/>
    <link href="http://10.60.21.187:80/api/admin/enterprises/1/datacenterrepositories/181/virtualmachinetemplates/82" type="application/vnd.abiquo.virtualmachinetemplate+xml" rel="virtualmachinetemplate"/>
    <cpu>4</cpu>
    <hdInBytes>27262976</hdInBytes>
    <highDisponibility>0</highDisponibility>
    <id>17</id>
    <idState>1</idState>
    <idType>1</idType>
    <name>ABQ_f3f150e2-1a67-4f39-882b-d82557ca8fa2</name>
    <ram>512</ram>
    <state>NOT_ALLOCATED</state>
    <uuid>f3f150e2-1a67-4f39-882b-d82557ca8fa2</uuid>
    <vdrpPort>0</vdrpPort>
	</virtualMachine>' | xmlindent -nbe -f
