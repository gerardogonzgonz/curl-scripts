#!/bin/bash

curl --verbose http://localhost/api/admin/enterprises/1/datacenterrepositories/101/virtualmachinetemplates/1345 \
	-u admin:xabiquo \
	-X PUT \
	-H "accept:application/vnd.abiquo.virtualmachinetemplate+xml;version=2.4" \
	-H "content-type:application/vnd.abiquo.virtualmachinetemplate+xml;version=2.4" \
	-d @template_share.xml | xmlindent -nbe -f
