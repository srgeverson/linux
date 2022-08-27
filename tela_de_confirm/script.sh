#!/bin/bash

DIALOG=whiptail
if [ -x /usr/bin/gdialog ] ;then DIALOG=gdialog ; fi
if [ -x /usr/bin/xdialog ] ;then DIALOG=xdialog ; fi

$DIALOG --yesno "Deseja executar o script agora?" 0 0

if [ $? = 0 ]; then
        echo "Executando agora: $( date )..."
        {COMANDO_A_SER_EXECUTADO_AQUI}
else
        echo 'Optou por não executar o script.'
fi
