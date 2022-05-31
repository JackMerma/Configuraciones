#!/bin/bash

######################################################################
# @author      : Jackson Merma (mermaportocarreroj@gmail.com)
# @file        : prueba
# @created     : 30/05/2022
# @description : 
######################################################################

#gnome-terminal --geometry 60x20 -e "whiptail --msgbox --title 'titulo' 'Que onda chaval' 17 53"
#COMANDO=$(whiptail --inputbox 'Comando' 17 53 --title '<<Pandor>>' 3>&1 1>&2 2>&3)


#if [[ $COMANDO != "" ]]
#then
#	whiptail --msgbox --title "titulo" " comando es >> $COMANDO" 17 53
#fi

COMANDO=""

while [[ $COMANDO == "" ]]
do
	COMANDO=$(whiptail --inputbox 'Comando' 17 53 --title '<<Pandor>>' 3>&1 1>&2 2>&3)
done


INPUT_TIME=""
INPUT_COMMAND=""

if [[ $COMANDO == "crontab" ]]
then
	#path del archivo principal para crontabs
	CRON_PATH=/home/jackson/Configuraciones/scripts/pandor/cronfile.txt
	GUI_OPTION=""

	#entrada de configuracion del tiempo
	INPUT_TIME=$(whiptail --inputbox 'MIN HOR DOM MON DOW' 17 53 --title '<<Pandor|Crontab>>' 3>&1 1>&2 2>&3)

	#si usará un GUI command
	if (whiptail --yesno '¿Comando gráfico?' 17 53 --yes-button 'Si' --title '<<Pandor|Crontab|Gui>>')
	then
		GUI_OPTION="export DISPLAY=:0 &&"
	fi

	#entrada de comando
	INPUT_COMMAND=$(whiptail --inputbox 'Ingresa comando' 17 53 --title '<<Pandor|Crontab>>' 3>&1 1>&2 2>&3)

	#escritura y nueva lectura en crontab
	echo "$INPUT_TIME $GUI_OPTION $INPUT_COMMAND" >> $CRON_PATH
	crontab -u jackson $CRON_PATH
	whiptail --msgbox "$INPUT_COMMAND guardado." 17 53 --title '<<Pandor|Crontab|Salida>>'
fi
