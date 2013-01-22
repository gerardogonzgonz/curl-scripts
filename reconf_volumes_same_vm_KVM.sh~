#!/bin/bash

ipEnv='10.60.11.15'
idVDC=1

idVAPP1=2
idVAPP2=4 #vapp for volumes

idVM1=2 #vm for volumes
UUIDVM1=ABQ_5fe736c4-0224-42f2-9ac5-e8730e120701

idVM2=9 #vm for volumes
UUIDVM2=ABQ_25514e45-8d6f-4cc1-89d0-cefbc4b05d39

idVol1=1018
#idVol2=1071
#idVol3=565
#idVol4=563

while [ 1 ]
do
    #DETACH VOLUMES
    echo
    echo "Detaching volume from VM $UUIDVM1"
    curl 'http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/virtualappliances/'$idVAPP1'/virtualmachines/'$idVM1'/storage/volumes' \
          -X "DELETE" \
          -H "Accept:application/vnd.abiquo.acceptedrequest+xml;version=2.0;" \
          -u admin:xabiquo >&1 > /dev/null &

	sleep 5

    #ATTACH VOLUMES
    echo
    echo "Attaching volume to VM $UUIDVM2"
    curl 'http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/virtualappliances/'$idVAPP2'/virtualmachines/'$idVM2'/storage/volumes' \
          -X "POST" \
          -H "Accept:application/vnd.abiquo.acceptedrequest+xml;version=2.0;" \
          -H "Content-type:application/vnd.abiquo.links+xml;version=2.0;" \
          -d '<links>
                <link href="http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/volumes/'$idVol1'" rel="volume"/>
            </links>' \
          -u admin:xabiquo 2>&1 > /dev/null &

    #echo "PAUSE"
    #read L
    sleep 10

    #DETACH VOLUMES
    echo
    echo "Detaching volume from VM $UUIDVM2"
    curl 'http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/virtualappliances/'$idVAPP2'/virtualmachines/'$idVM2'/storage/volumes' \
          -X "DELETE" \
          -H "Accept:application/vnd.abiquo.acceptedrequest+xml;version=2.0;" \
          -u admin:xabiquo >&1 > /dev/null &

	sleep 5

    #ATTACH VOLUMES
    echo
    echo "Attaching volume to VM $UUIDVM1"
    curl 'http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/virtualappliances/'$idVAPP1'/virtualmachines/'$idVM1'/storage/volumes' \
          -X "POST" \
          -H "Accept:application/vnd.abiquo.acceptedrequest+xml;version=2.0;" \
          -H "Content-type:application/vnd.abiquo.links+xml;version=2.0;" \
          -d '<links>
                <link href="http://'$ipEnv'/api/cloud/virtualdatacenters/'$idVDC'/volumes/'$idVol1'" rel="volume"/>
            </links>' \
          -u admin:xabiquo 2>&1 > /dev/null &

    sleep 10
    #echo "PAUSE"
    #read L

done
