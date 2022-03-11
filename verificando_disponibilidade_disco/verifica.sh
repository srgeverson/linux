#!/bin/bash
LOG=/home/suporte/Backups/log/disco/`date +%Y-%m-%d-%H:%M:%S`_log_do_backup.txt
cd /home/suporte
uso_do_diretorio=$(df /home/suporte | awk {'print $5'})
percentual=$(echo $uso_do_diretorio | awk {'print $2'})

if [[ $percentual =~ [8-9][0-9]%$|100% ]]; then
    echo "ATENÇÃO - O espaço de armazenamento está ficando cheio" >> $LOG
fi