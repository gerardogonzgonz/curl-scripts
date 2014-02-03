#!/bin/bash

curl --verbose 'http://10.60.11.30/api/cloud/virtualdatacenters?datacenter=2' \
      -X "POST" \
      -H "Accept: application/vnd.abiquo.virtualdatacenter+xml" \
      -H "Content-Type: application/vnd.abiquo.virtualdatacenter+xml" \
      -u admin:xabiquo \
      -d '<virtualDatacenter> 
<link rel="datacenter" type="application/vnd.abiquo.datacenter+xml" href="http://10.60.11.30:80/api/admin/datacenters/2"/>    
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
    <hypervisorType>HYPERV_301</hypervisorType>
    <name>NEWVDC</name>
    <network>
        <address>192.170.0.0</address>
        <dhcpOptions/>
        <gateway>192.170.0.1</gateway>
        <mask>24</mask>
        <name>default_private_network</name>
        <primaryDNS></primaryDNS>
        <secondaryDNS></secondaryDNS>
        <sufixDNS></sufixDNS>
        <type>INTERNAL</type>
    </network>
</virtualDatacenter>' | xmlindent -nbe -f

