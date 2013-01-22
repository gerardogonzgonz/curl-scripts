#!/bin/bash

curl --verbose -X POST http://10.60.11.186/api/admin/enterprises/1/appslib/templateDefinitions \
  -H 'Content-type: application/xml' \
  -u admin:xabiquo \
  -d '<templateDefinition>
        <link href="http://10.60.21.187:80/api/config/categories/7" rel="category" title="Operative Systems,base"/>
        <link href="http://10.60.21.187:80/api/config/icons/8" rel="icon" title="http://icons.abiquo.com/namenode.jpg"/>
        <url>http://ggogle.com</url>
<productName></productName>
        <description>qwqwq</description>
        <diskFileSize>9223372036854775807</diskFileSize>
        <diskFormatType>VMDK_FLAT</diskFormatType>          
     </templateDefinition>' | xmlindent -nbe -f
