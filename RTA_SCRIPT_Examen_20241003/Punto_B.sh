#!/bin/bash

echo
echo "Creo las particiones del Disco de 10 Gb"

Disco="/dev/sdc"

sudo fdisk $Disco << EOF
n
e



w
EOF

for i in {1..10}
do
	sudo fdisk $Disco << EOF
n

+10
w
EOF
done

echo 
echo
echo "Muestro particionamiento"

sudo fdisk -l $Disco

echo
echo "=============================="
echo "Formateo de las particiones"
echo "=============================="

Contador=5
 while [ $Contador -le 13 ]; do
	 sudo mkfs.ext4 ${Disco}$Contador
	 Contador=$Contador++
 done

 echo
 echo "================"
 echo "Montar discos"
 echo "================"

 sudo mount -t ${Disco}5 /

