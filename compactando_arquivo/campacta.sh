#!/bin/bash

INICIO=`date +%d/%m/%Y-%H:%M:%S`
LOG={CAMINHO_DO_ARQUIVO}`date +%Y-%m-%d-%H:%M:%S`_log_do_backup.txt

echo " " >> $LOG
echo "| ------ ------ ------ ------ ------ ------ -----------"  >> $LOG
echo "  Sincronizacao iniciada em $INICIO" >> $LOG

tar -cvzf {CAMINHO_DO_ARQUIVO}_`date +%Y-%m-%d-%H:%M:%S`.tar.gz $LOG

FINAL=`date +%d/%m/%Y-%H:%M:%S`

echo "  Sincronizacao Finalizada em $FINAL" >> $LOG
echo "| ------ ------ ------ ------ ------ ------ -----------"  >> $LOG
echo " " >> $LOG