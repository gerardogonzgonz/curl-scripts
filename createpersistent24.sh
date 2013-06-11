#!/bin/bash

curl --verbose -u admin:xabiquo -X POST http://10.60.11.20/api/admin/enterprises/41/datacenterrepositories/49/virtualmachinetemplates -H "content-type:application/vnd.abiquo.virtualmachinetemplatepersistent+xml;version=2.6" -H "accept:application/vnd.abiquo.acceptedrequest+xml;version=2.6" -d @persistent.xml | xmlindent -nbe -f
