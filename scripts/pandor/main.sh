#!/bin/bash

######################################################################
# @author      : Jackson Merma (mermaportocarreroj@gmail.com)
# @file        : prueba
# @created     : 30/05/2022
# @description : 
######################################################################

COMANDO=""
DIMX=9
DIMY=53
PRONAME="Pandor"

while [[ $COMANDO == "" ]]
do
	COMANDO=$(whiptail --inputbox 'Comando' $DIMX $DIMY --title "<<$PRONAME>>" 3>&1 1>&2 2>&3)
done


INPUT_TIME=""
INPUT_COMMAND=""

if [[ $COMANDO == "crontab" ]]
then
	#path del archivo principal para crontabs
	CRON_PATH=/home/jackson/Configuraciones/scripts/pandor/cronfile.txt
	GUI_OPTION=""

	#entrada de configuracion del tiempo
	INPUT_TIME=$(whiptail --inputbox 'MIN HOR DOM MON DOW' $DIMX $DIMY --title "<<$PRONAME|Crontab>>" 3>&1 1>&2 2>&3)

	#si usará un GUI command
	if (whiptail --yesno '¿Comando gráfico?' $DIMX $DIMY --yes-button 'Si' --title "<<$PRONAME|Crontab|Gui>>")
	then
		GUI_OPTION="export DISPLAY=:0 &&"
	fi

	#entrada de comando
	INPUT_COMMAND=$(whiptail --inputbox 'Ingresa comando' $DIMX $DIMY --title "<<$PRONAME|Crontab>>" 3>&1 1>&2 2>&3)

	#escritura y nueva lectura en crontab
	echo "$INPUT_TIME $GUI_OPTION $INPUT_COMMAND" >> $CRON_PATH
	crontab -u jackson $CRON_PATH
	whiptail --msgbox "$INPUT_COMMAND guardado." $DIMX $DIMY --title "<<$PRONAME|Crontab|Salida>>"
fi
