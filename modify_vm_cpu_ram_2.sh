#!/bin/bash

curl --verbose 'http://10.60.11.15/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43' \
	-X PUT \
	-H "Accept:application/vnd.abiquo.acceptedrequest+xml; version=2.4;" \
	-H "Content-Type: application/vnd.abiquo.virtualmachine+xml;version=2.4" \
	-u admin:xabiquo \
	-d '<virtualMachine>
    <link rel="configurations" type="application/vnd.abiquo.virtualmachinenetworkconfigurations+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43/network/configurations"/>
        <link rel="deploy" type="application/vnd.abiquo.acceptedrequest+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43/action/deploy"/>
            <link rel="edit" type="application/vnd.abiquo.virtualmachine+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43"/>
                <link rel="enterprise" type="application/vnd.abiquo.enterprise+xml" href="http://10.60.11.15:80/api/admin/enterprises/1"/>
                    <link rel="harddisks" type="application/vnd.abiquo.harddisks+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43/storage/disks"/>
                        <link rel="instance" type="application/vnd.abiquo.acceptedrequest+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43/action/instance"/>
                            <link rel="nics" type="application/vnd.abiquo.nics+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43/network/nics"/>
                                <link rel="reset" type="application/vnd.abiquo.acceptedrequest+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43/action/reset"/>
                                    <link rel="state" type="application/vnd.abiquo.virtualmachinestate+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43/state"/>
                                        <link rel="tasks" type="application/vnd.abiquo.tasks+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43/tasks"/>
                                            <link rel="undeploy" type="application/vnd.abiquo.acceptedrequest+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43/action/undeploy"/>
                                                <link rel="user" type="application/vnd.abiquo.user+xml" href="http://10.60.11.15:80/api/admin/enterprises/1/users/1"/>
                                                    <link rel="virtualappliance" type="application/vnd.abiquo.virtualappliance+xml; version=2.4" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52"/>
                                                        <link title="VMX_04" rel="virtualdatacenter" type="application/vnd.abiquo.virtualdatacenter+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34"/>
                                                            <link rel="virtualmachinetemplate" type="application/vnd.abiquo.virtualmachinetemplate+xml" href="http://10.60.11.15:80/api/admin/enterprises/1/datacenterrepositories/36/virtualmachinetemplates/295"/>
                                                                <link rel="volumes" type="application/vnd.abiquo.iscsivolumes+xml" href="http://10.60.11.15:80/api/cloud/virtualdatacenters/34/virtualappliances/52/virtualmachines/43/storage/volumes"/>
                                                                    <id>43</id>
                                                                        <uuid>4f699bf9-57c6-4b9a-a83d-d3aa08822b01</uuid>
                                                                            <name>ABQ_4f699bf9-57c6-4b9a-a83d-d3aa08822b01</name>
                                                                                <description>m0n0wall</description>
                                                                                    <cpu>1</cpu>
                                                                                        <ram>128</ram>
                                                                                            <hdInBytes>27262976</hdInBytes>
                                                                                                <vdrpPort>0</vdrpPort>
                                                                                                    <idState>1</idState>
                                                                                                        <state>NOT_ALLOCATED</state>
                                                                                                            <idType>1</idType>
                                                                                                                <highDisponibility>0</highDisponibility>
                                                                                                                    <password>egld6Lx9</password>
	</virtualMachine>' | xmlindent -nbe -f
