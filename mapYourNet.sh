#!/bin/bash 
if [ "$1" == "" ]
then
echo "Pon una Ip valida"
echo "Syntax: ./mapyournet.sh 192.168.118"
else
./ipsweep.sh $1 >ip.txt
sleep 1
./httpNmap.sh >deviceslist.txt
'reset'
echo "Your devices: "
cat deviceslist.txt
echo "    WORK DONE     "
echo "SCRIPT BY ERHEATEX"

fi
