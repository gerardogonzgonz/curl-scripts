#!/bin/bash

ipEnv='10.60.20.245'
idVDC=5

idVAPP1=25
idVAPP2=26 #vapp for volumes

idVM1=180 #vm for volumes
idVM2=182 #vm for volumes

idVol2=3658
#idVol2=564
#idVol3=565
#idVol4=563

while [ 1 ]
do
    #DETACH VOLUMES
    echo
    echo "Detach volume"
    curl 'http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/virtualappliances/'$idVAPP1'/virtualmachines/'$idVM1'/storage/volumes' \
          -X "DELETE" \
          -H "Accept:application/vnd.abiquo.acceptedrequest+xml;version=2.0;" \
          -u admin:xabiquo >&1 > /dev/null &

	sleep 30

    #ATTACH VOLUMES
    echo
    echo "Attach volume 1"
    curl 'http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/virtualappliances/'$idVAPP2'/virtualmachines/'$idVM2'/storage/volumes' \
          -X "POST" \
          -H "Accept:application/vnd.abiquo.acceptedrequest+xml;version=2.0;" \
          -H "Content-type:application/vnd.abiquo.links+xml;version=2.0;" \
          -d '<links>
                <link href="http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/volumes/'$idVol1'" rel="volume"/>
            </links>' \
          -u admin:xabiquo 2>&1 > /dev/null &

    sleep 30

    #read "PAUSE"
    #DETACH VOLUMES
    echo
    echo "Detach volume"
    curl 'http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/virtualappliances/'$idVAPP2'/virtualmachines/'$idVM2'/storage/volumes' \
          -X "DELETE" \
          -H "Accept:application/vnd.abiquo.acceptedrequest+xml;version=2.0;" \
          -u admin:xabiquo >&1 > /dev/null &

	sleep 30

    #ATTACH VOLUMES
    echo
    echo "Attach volume 1"
    curl 'http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/virtualappliances/'$idVAPP1'/virtualmachines/'$idVM1'/storage/volumes' \
          -X "POST" \
          -H "Accept:application/vnd.abiquo.acceptedrequest+xml;version=2.0;" \
          -H "Content-type:application/vnd.abiquo.links+xml;version=2.0;" \
          -d '<links>
                <link href="http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/volumes/'$idVol1'" rel="volume"/>
            </links>' \
          -u admin:xabiquo 2>&1 > /dev/null &

    sleep 30
    #read "PAUSE"

done
