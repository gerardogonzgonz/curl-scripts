#!/bin/bash

curl --verbose -X POST 'http://10.60.11.50:80/api/cloud/virtualdatacenters/85/virtualappliances/73/virtualmachines' \
	-H "Content-type:application/vnd.abiquo.virtualmachineflat+xml;version=2.6;" \
	-H "Accept:application/vnd.abiquo.virtualmachineflat+xml;version=2.6;" \
	-u admin:xabiquo \
	-d '<virtualMachineFlat>
	<link rel="imported" href="http://10.60.11.50:80/api/admin/datacenters/1/racks/1/machines/1/virtualmachines/302"/>
    <link title="KVM" rel="machine" type="application/vnd.abiquo.machine+xml" href="http://10.60.11.50:80/api/admin/datacenters/1/racks/1/machines/1"/>
    <link title="ABQ_96c89f72-5d1f-4f7d-bd72-40b6464d41a7" rel="edit" type="application/vnd.abiquo.virtualmachine+xml" href="http://10.60.11.50:80/api/admin/datacenters/1/racks/1/machines/1/virtualmachines/302"/>
    <id>302</id>
    <uuid>96c89f72-5d1f-4f7d-bd72-40b6464d41a7</uuid>
    <name>ABQ_96c89f72-5d1f-4f7d-bd72-40b6464d41a7</name>
    <description></description>
    <cpu>1</cpu>
    <ram>64</ram>
    <hdInBytes>27262976</hdInBytes>
    <vdrpEnabled>false</vdrpEnabled>
    <vdrpPort>0</vdrpPort>
    <idState>4</idState>
    <state>ON</state>
    <idType>0</idType>
    <type>CAPTURED</type>
    <highDisponibility>0</highDisponibility>
    <volumes/>
    <disks/>
    <nics>
        <nic>
            <mac>52:54:00:e8:8d:4d</mac>
            <sequence>0</sequence>
	    <ip>10.0.0.1</ip>
	    <link rel="vlan" href="http://10.60.11.50:80/api/admin/datacenters/1/network/72"/>
        </nic>
    </nics>
	</virtualMachineFlat>' | xmlindent -nbe -f
