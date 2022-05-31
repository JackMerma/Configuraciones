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
	INPUT_TIME=$(whiptail --inputbox 'MIN HOR DOM MON DOW' 17 53 --title '<<Pandor|Crontab>>' 3>&1 1>&2 2>&3)
	INPUT_COMMAND=$(whiptail --inputbox 'Ingresa comando' 17 53 --title '<<Pandor|Crontab>>' 3>&1 1>&2 2>&3)
fi



