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
echo

sudo fdisk -l $Disco

echo
echo "=============================="

echo "Formateo los discos"
echo "=============================="
sudo mkfs.ext4 ${Disco}5 
sudo mkfs.ext4 ${Disco}6 
sudo mkfs.ext4  ${Disco}7 
sudo mkfs.ext4  ${Disco}8 
sudo mkfs.ext4  ${Disco}9 
sudo mkfs.ext4 ${Disco}10 
sudo mkfs.ext4 ${Disco}11 
sudo mkfs.ext4 ${Disco}12 
sudo mkfs.ext4 ${Disco}13 
sudo mkfs.ext4 ${Disco}14 


echo "==============="
echo "Montar discos"
echo "==============="
sudo mount ${Disco}5 /Examenes-UTN/alumno_1/parcial_1
sudo mount ${Disco}6 /Examenes-UTN/alumno_1/parcial_2
sudo mount ${Disco}7 /Examenes-UTN/alumno_1/parcial_3
sudo mount ${Disco}8 /Examenes-UTN/alumno_2/parcial_1
sudo mount ${Disco}9 /Examenes-UTN/alumno_2/parcial_2
sudo mount ${Disco}10 /Examenes-UTN/alumno_2/parcial_3
sudo mount ${Disco}11 /Examenes-UTN/alumno_3/parcial_1
sudo mount ${Disco}12 /Examenes-UTN/alumno_3/parcial_2
sudo mount ${Disco}13 /Examenes-UTN/alumno_3/parcial_3
sudo mount ${Disco}14 /Examenes-UTN/profesores

echo
echo "Ejercicio terminado"

