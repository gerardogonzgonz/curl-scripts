#!/bin/bash

curl --verbose "http://10.60.11.15/api/admin/datacenters/34/racks/34/machines" \
        -X POST \
        -H "Accept:application/vnd.abiquo.machines+xml;version=2.4" \
        -H "Content-type:application/vnd.abiquo.multiplemachines+xml;version=2.4" \
        -u admin:xabiquo \
        -d '<machinesToCreate>
            <ipFrom>10.60.1.74</ipFrom>
            <ipTo>10.60.1.81</ipTo>
            <hypervisor>VMX_04</hypervisor>
            <user>root</user>
            <password>temporal</password>
            <vSwitch>vSwitch0</vSwitch>
            <port>443</port>
            </machinesToCreate>' | xmlindent -nbe -f
