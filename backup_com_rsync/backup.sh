#!/bin/bash

INICIO=`date +%d/%m/%Y-%H:%M:%S`
LOG={CAMINHO_DO_ARQUIVO}`date +%Y-%m-%d-%H:%M:%S`_log_do_backup.txt

echo " " >> $LOG
echo " " >> $LOG
echo "| ------ ------ ------ ------ ------ ------ -----------"  >> $LOG
echo "  Sincronizacao iniciada em $INICIO" >> $LOG

systemctl stop firebird-superserver >> $LOG

rsync -Cravhzp -e 'ssh -p PORTA_SSH' {CAMINHO_E_NOME_DO_ARQUIVO} {NOME_DE_USUARIO}@{IP_OU_DNS_DO_DESTINO}:{CAMINHO_DO_DESTINO_DO_BACKUP} >> $LOG

systemctl start firebird-superserver >> $LOG

FINAL=`date +%d/%m/%Y-%H:%M:%S`

echo "  Sincronizacao Finalizada em $FINAL" >> $LOG
echo "| ------ ------ ------ ------ ------ ------ -----------"  >> $LOG
echo " " >> $LOG
echo " " >> $LOG
