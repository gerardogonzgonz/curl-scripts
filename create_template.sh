#!/bin/bash

curl --verbose -X POST http://10.60.11.187/api/admin/enterprises/1/appslib/templateDefinitions \
  -H 'Content-type: application/vnd.abiquo.templatedefinition+xml;version=2.4' \
  -u admin:xabiquo \
  -d '<templateDefinition>
        <link href="http://10.60.11.187:80/api/config/categories/44" rel="category" title="aaaaaaaa"/>
        <link href="http://10.60.11.187:80/api/config/icons/8" rel="icon" title="http://icons.abiquo.com/namenode.jpg"/>
        <url>http://rs.bcn.abiquo.com:9000/admin/ovfpackages/269</url>
        <productName>qqqqqqq</productName>
        <description>qwqwq</description>
        <diskFileSize>9223372036854775807</diskFileSize>
        <diskFormatType>VMDK_FLAT</diskFormatType>          
     </templateDefinition>' | xmlindent -nbe -f
