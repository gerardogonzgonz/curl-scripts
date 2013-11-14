#/bin/bash

curl --verbose -u admin:xabiquo -X POST http://10.60.11.22/api/admin/enterprises/57/datacenterrepositories/2/virtualmachinetemplates -H "content-type:application/vnd.abiquo.templatedefinition+xml" -H "accept:application/vnd.abiquo.acceptedrequest+xml" -d @templatedefinition.xml | xmlindent -nbe -f
