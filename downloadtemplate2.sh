#/bin/bash

curl --verbose -k -u Jose:Jose -X POST http://10.60.11.225:8009/api/admin/enterprises/5/datacenterrepositories/1/virtualmachinetemplates -H "content-type:application/vnd.abiquo.templatedefinition+xml" -H "accept:application/vnd.abiquo.acceptedrequest+xml" -d @templatedefinition2.xml | xmlindent -nbe -f
