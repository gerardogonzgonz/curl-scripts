#!/bin/bash

curl --verbose 'http://10.60.11.30/api/cloud/virtualdatacenters' \
      -X "POST" \
      -H "Accept: application/vnd.abiquo.virtualdatacenter+xml" \
      -H "Content-Type: application/vnd.abiquo.virtualdatacenter+xml" \
      -u admin:xabiquo \
      -d '<virtualDatacenter> 
<link rel="location"  href="http://10.60.11.30:80/api/cloud/locations/7"/>    
<link href="http://10.60.11.30/api/admin/enterprises/1" rel="enterprise" />
<cpuHard>0</cpuHard>
    <cpuSoft>0</cpuSoft>
    <hdHard>0</hdHard>
    <hdSoft>0</hdSoft>
    <publicIpsHard>0</publicIpsHard>
    <publicIpsSoft>0</publicIpsSoft>
    <ramHard>0</ramHard>
    <ramSoft>0</ramSoft>
    <storageHard>0</storageHard>
    <storageSoft>0</storageSoft>
    <vlansHard>0</vlansHard>
    <vlansSoft>0</vlansSoft>
    <hypervisorType>VMX_04</hypervisorType>
    <name>NEWVDC</name>
    <network>
            <link title="default" rel="virtualdatacenter" type="application/vnd.abiquo.virtualdatacenter+xml" href="http://10.60.11.30:80/api/cloud/virtualdatacenters/4"/>
            <link title="default" rel="edit" type="application/vnd.abiquo.vlan+xml" href="http://10.60.11.30:80/api/cloud/virtualdatacenters/4/privatenetworks/27"/>
            <link title="ips" rel="ips" type="application/vnd.abiquo.privateips+xml" href="http://10.60.11.30:80/api/cloud/virtualdatacenters/4/privatenetworks/27/ips"/>
            <link title="Service Network" rel="networkservicetype" type="application/vnd.abiquo.vlan+xml" href="http://10.60.11.30:80/api/admin/datacenters/7/networkservicetypes/6"/>
            <name>default</name>
            <address>192.168.1.0</address>
            <mask>24</mask>
            <gateway>192.168.1.5</gateway>
            <type>INTERNAL</type>
            <dhcpOptions/>
            <ipv6>false</ipv6>
            <strict>false</strict>
   </network>
</virtualDatacenter>' | xmlindent -nbe -f

