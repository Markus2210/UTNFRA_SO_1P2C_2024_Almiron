#!/bin/bash

echo "Filtros Basicos"

grep MemTotal /proc/meminfo > ~/repogit/UTNFRA_SO_1P2C_2024_Almiron/RTA_ARCHIVOS_Examen_20241003/Filtro_Basico.txt


sudo dmidecode -t chassis >>  ~/repogit/UTNFRA_SO_1P2C_2024_Almiron/RTA_ARCHIVOS_Examen_20241003/Filtro_Basico.txt

