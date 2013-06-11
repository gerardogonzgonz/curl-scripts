#!/bin/bash

curl -X POST --verbose "http://10.60.11.15/api/admin/enterprises/203/datacenterrepositories/225/virtualmachinetemplates" \
        -H 'Content-Type: application/vnd.abiquo.virtualmachinetemplaterequest+xml' \
            -H 'Accept: application/vnd.abiquo.acceptedrequest+xml' \
                -u stenteradmin:1234 \
                    -d '<virtualmachinetemplaterequest>
        <link rel="virtualmachinetemplate" href="http://10.60.11.15/api/admin/enterprises/165/datacenterrepositories/225/virtualmachinetemplates/2135"/>
                <promotedName>test_promoted</promotedName>
                    </virtualmachinetemplaterequest>' | xmlindent -nbe -f
