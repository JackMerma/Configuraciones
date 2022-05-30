#!/bin/bash

######################################################################
# @author      : Jackson Merma (mermaportocarreroj@gmail.com)
# @file        : meet
# @created     : 29/05/2022
# @description : 
######################################################################

CURSOS=("TC" "TClab" "BD" "BDlab" "OyM" "OyMlab" "IO" "IOlab" "PS" "PSlab" "IPS" "Ingl")

LINKS=(
	"https://meet.google.com/zkf-svkh-wqr"
	"https://meet.google.com/wda-suwu-xav"
	"https://meet.google.com/khz-kkby-vwh"
	"https://meet.google.com/jky-zmpu-umy"
	"https://meet.google.com/umi-fpre-rmg"
	"https://meet.google.com/kcb-kext-ndx"
	"https://meet.google.com/cew-fhba-moa"
	"https://meet.google.com/xvs-tzbe-puj"
	"https://meet.google.com/xmk-ehwt-mbw"
	"https://meet.google.com/pvr-sryi-avu"
	"https://meet.google.com/vkp-ssrb-zgq"
	"https://aulavirtual.unsa.edu.pe/2022A/course/view.php?id=4303"
)
ASISTENCIA=(
	"https://aulavirtual.unsa.edu.pe/2022A/mod/attendance/view.php?id=25324"
	"emp" "emp" 
	"https://aulavirtual.unsa.edu.pe/2022A/mod/attendance/view.php?id=84109"
	"emp" "emp" "emp"
	"https://aulavirtual.unsa.edu.pe/2022A/mod/attendance/view.php?id=94074"
	"emp" "emp" 
	"https://aulavirtual.unsa.edu.pe/2022A/mod/attendance/view.php?id=39137"
	"emp" 
)
	#TC -> https://aulavirtual.unsa.edu.pe/2022A/mod/attendance/view.php?id=25324
	#BDlab -> https://aulavirtual.unsa.edu.pe/2022A/mod/attendance/view.php?id=84109
	#IOlab -> https://aulavirtual.unsa.edu.pe/2022A/mod/attendance/view.php?id=94074
	#IPS -> https://aulavirtual.unsa.edu.pe/2022A/mod/attendance/view.php?id=39137

for i in "${!CURSOS[@]}"
do
	if [ "$1" = "${CURSOS[$i]}" ]
	then
		firefox -new-tab "${LINKS[$i]}"
		if [[ "${ASISTENCIA[$i]}" != "emp" ]]
		then
			firefox -new-tab "${ASISTENCIA[$i]}"
		fi
	fi
done
