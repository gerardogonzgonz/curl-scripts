curl --verbose "http://10.60.11.20/api/cloud/virtualdatacenters?datacenter=1" \
      -X "POST" \
      -H "Accept: application/vnd.abiquo.virtualdatacenter+xml;version=2.2" \
      -H "Content-Type: application/vnd.abiquo.virtualdatacenter+xml;version=2.2" \
      -u admin:xabiquo \
      -d '<virtualDatacenter> 
<link rel="datacenter" type="application/vnd.abiquo.datacenter+xml" href="http://10.60.11.20:80/api/admin/datacenters/1"/> 
<link href="http://10.60.11.20/api/admin/enterprises/4" rel="enterprise" /> 
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
    <hypervisorType>VMX_04</hypervisorType> 
    <name>buaaadllopjjjjjaaaaaaaaaaaaaaaa@hotmail.com</name> 
    <network> 
        <address>192.168.0.0</address> 
        <dhcpOptions/> 
        <gateway>192.168.0.1</gateway> 
        <mask>24</mask> 
        <name>default_private_network</name> 
        <primaryDNS></primaryDNS> 
        <secondaryDNS></secondaryDNS> 
        <sufixDNS></sufixDNS> 
        <type>INTERNAL</type> 
    </network> 
</virtualDatacenter>' | xmlindent -nbe -f
