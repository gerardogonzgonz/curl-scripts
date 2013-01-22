#!/bin/bash

curl --verbose -X PUT 'http://10.60.21.187/api/admin/enterprises/1/datacenterrepositories/17/virtualmachinetemplates/90' \
      -H "Content-Type: application/vnd.abiquo.virtualmachinetemplate+xml; version=2.0;" \
      -u admin:xabiquo \
      -d '<virtualMachineTemplate>
    <link title="Others" rel="category" type="application/vnd.abiquo.category+xml" href="http://10.60.21.187:80/api/config/categories/1"/>
    <link rel="conversions" type="application/vnd.abiquo.conversions+xml" href="http://10.60.21.187:80/api/admin/enterprises/1/datacenterrepositories/17/virtualmachinetemplates/90/conversions"/>
    <link rel="datacenter" type="application/vnd.abiquo.datacenter+xml" href="http://10.60.21.187:80/api/admin/datacenters/17"/>
    <link rel="datacenterrepository" type="application/vnd.abiquo.datacenterrepository+xml" href="http://10.60.21.187:80/api/admin/enterprises/1/datacenterrepositories/17"/>
    <link rel="diskfile" href="http://10.60.21.187:80/am/erepos/1/templates/rs.bcn.abiquo.com%252Fm0n0wall%252Fdescription.ovf?format=diskFile"/>
    <link title="m0n0wall" rel="edit" type="application/vnd.abiquo.virtualmachinetemplate+xml" href="http://10.60.21.187:80/api/admin/enterprises/1/datacenterrepositories/17/virtualmachinetemplates/90"/>
    <link rel="enterprise" type="application/vnd.abiquo.enterprise+xml" href="http://10.60.21.187:80/api/admin/enterprises/1"/>
    <link rel="ovfdocument" href="http://10.60.21.187:80/am/erepos/1/templates/rs.bcn.abiquo.com%252Fm0n0wall%252Fdescription.ovf?format=envelope"/>
    <link rel="template" href="http://10.60.21.187:80/am/erepos/1/templates/rs.bcn.abiquo.com%252Fm0n0wall%252Fdescription.ovf"/>
    <link rel="templatedefinition" href="http://rs.bcn.abiquo.com/m0n0wall/description.ovf"/>
    <link rel="templatestatus" href="http://10.60.21.187:80/am/erepos/1/templates/rs.bcn.abiquo.com%252Fm0n0wall%252Fdescription.ovf?format=status"/>
    <id>90</id>
    <name></name>
    <description>m0n0wall</description>
    <path>1/rs.bcn.abiquo.com/m0n0wall/m0n0wall-1.3b18-i386-flat.vmdk</path>
    <diskFormatType>VMDK_FLAT</diskFormatType>
    <diskFileSize>27262976</diskFileSize>
    <cpuRequired>1</cpuRequired>
    <ramRequired>128</ramRequired>
    <hdRequired>27262976</hdRequired>
    <shared>false</shared>
    <costCode>0</costCode>
    <creationDate>2012-07-02T11:22:19+02:00</creationDate>
    <creationUser>SYSTEM</creationUser>
    <chefEnabled>false</chefEnabled>
</virtualMachineTemplate>' | xmlindent -nbe -f
