#!/bin/bash

curl --verbose -X POST 'http://10.60.11.30/api/cloud/virtualdatacenters/2/virtualappliances/5/virtualmachines' \
	-H "Content-type:application/vnd.abiquo.virtualmachineflat+xml;version=2.6;" \
	-H "Accept:application/vnd.abiquo.virtualmachineflat+xml;version=2.6;" \
	-u admin:xabiquo \
	-d '<virtualMachineFlat>
	<link rel="imported" href="http://10.60.11.30/api/admin/datacenters/1/racks/1/machines/7/virtualmachines/162"/>
    <link title="VMX_04" rel="machine" type="application/vnd.abiquo.machine+xml" href="http://10.60.11.30:80/api/admin/datacenters/1/racks/1/machines/7"/>
    <link title="ABQ_db5f2c88-d121-4eda-8a4d-c8a3d6b6925b" rel="edit" type="application/vnd.abiquo.virtualmachine+xml" href="http://10.60.11.30:80/api/admin/datacenters/14/racks/9/machines/21/virtualmachines/162"/>
    <id>162</id>
    <uuid>db5f2c88-d121-4eda-8a4d-c8a3d6b6925b</uuid>
    <name>ABQ_db5f2c88-d121-4eda-8a4d-c8a3d6b6925b</name>
    <description></description>
    <cpu>1</cpu>
    <ram>128</ram>
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
            <mac>00:50:56:1F:50:6B</mac>
            <sequence>0</sequence>
	    <ip>10.0.0.21</ip>
	    <link rel="vlan" href="http://10.60.1.61/api/admin/datacenters/14/network/61"/>
        </nic>
    </nics>
	</virtualMachineFlat>' | xmlindent -nbe -f
