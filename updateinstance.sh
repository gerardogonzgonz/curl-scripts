#!/bin/bash

curl --verbose -X PUT 'http://10.60.21.187/api/admin/enterprises/1/datacenterrepositories/1/virtualmachinetemplates/8' \
      -H "Content-Type: application/vnd.abiquo.virtualmachinetemplate+xml; version=2.0;" \
      -u admin:xabiquo \
      -d '<virtualMachineTemplate>
    <id>7</id> <name>bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb</name>
    <description>m0n0wall</description>
    <path>1/rs.bcn.abiquo.com/m0n0wall/1acfa77c-1509-4b61-ac68-b6f9a2f72bfd-snapshot-m0n0wall-1.3b18-i386-flat.vmdk</path>
    <diskFormatType>VMDK_FLAT</diskFormatType>
    <diskFileSize>27262976</diskFileSize>
    <cpuRequired>1</cpuRequired>
    <ramRequired>128</ramRequired>
    <hdRequired>27262976</hdRequired>
    <shared>false</shared>
    <costCode>0</costCode>
    <creationDate>2012-07-02T15:59:07+02:00</creationDate>
    <creationUser>admin</creationUser>
    <chefEnabled>false</chefEnabled>
</virtualMachineTemplate>' | xmlindent -nbe -f
