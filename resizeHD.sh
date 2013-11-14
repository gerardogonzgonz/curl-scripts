#!/bin/bash

curl -X PUT -u 'Jose:Jose' http://10.60.11.220/api/cloud/virtualdatacenters/1/disks/8794 -H 'Accept: application/vnd.abiquo.acceptedrequest+xml; version=2.6' -H 'Content-Type: application/vnd.abiquo.harddisk+xml; version=2.6' --verbose -d '<disk>
    <link title="ESXi" rel="virtualdatacenter" type="application/vnd.abiquo.virtualdatacenter+xml" href="http://10.60.11.220:80/api/cloud/virtualdatacenters/1"/>
    <link rel="edit" type="application/vnd.abiquo.harddisk+xml" href="http://10.60.11.220:80/api/cloud/virtualdatacenters/1/disks/8794"/>
    <sequence>1</sequence>
    <sizeInMb>400</sizeInMb>
    </disk>' | xmlindent -nbe -f
