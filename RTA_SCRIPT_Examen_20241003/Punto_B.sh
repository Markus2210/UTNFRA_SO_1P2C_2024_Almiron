#!/bin/bash

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
sudo mkfs.ext4
done

echo "Muestro particionamiento"

sudo fdisk -l $Disco

echo "Formateo de las particiones"

lsblk

