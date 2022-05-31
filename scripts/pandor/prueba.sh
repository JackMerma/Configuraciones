#!/bin/bash

######################################################################
# @author      : Jackson Merma (mermaportocarreroj@gmail.com)
# @file        : prueba
# @created     : 30/05/2022
# @description : 
######################################################################

#gnome-terminal --geometry 60x20 -e "whiptail --msgbox --title 'titulo' 'Que onda chaval' 17 53"
NOMBRE=$(whiptail --inputbox 'Cual es tu nombre?' 17 53 --title 'Pregunta' 3>&1 1>&2 2>&3)

whiptail --msgbox --title "titulo" "Hola, $NOMBRE, como estais?" 17 53



