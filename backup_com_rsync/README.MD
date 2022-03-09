## 🛠️ Instruções para realização de backup com RSync

```bash

# Gerando o hash de autenticação SSH
$ ssh-keygen -t rsa -b 4096 -C {INFORME_UM_EMAIL}

# Copiando o hash gerado pelo ssh-keygen para o servidor remoto(Onde os backups serão armazenados)
$ scp -P {PORTA_SSH} .ssh/id_rsa.pub {NOME_DO_USUÁRIO}@{IP_OU_DOMÍNIO}:{PASTA_HOME_DO_USUÁRIO}/.ssh/

# Adicionando o usuário ao grupo wheel
$ usermod -aG wheel {NOME_DO_USUÁRIO}

# Remover o comentário se houver da linha seguinte
%sudo ALL=(ALL) NOPASSWD: ALL

# No servidor remoto caso não exista criar o arquivo authorized_keys
$ touch {PASTA_HOME_DO_USUÁRIO}/.ssh/authorized_keys

# Adicionando o hash do arquivo id_rsa.pub ao arquivo authorized_keys
$ cat  {PASTA_HOME_DO_USUÁRIO}/.ssh/id_rsa.pub >>  {PASTA_HOME_DO_USUÁRIO}/.ssh/authorized_keys

# Criar um agendamento com o crontab.
$ crontab -e

# Dentro do crontab coloque a instrução abaixo
$ * * * * * {CAMINHO_DO_ARQUIVO}/backup.sh

# Os caracteres(*) significa na respectiva ordem
### Minuto: Valores de 0 a 59 ou *
### Hora: Valores de 0 a 23 ou *
### Dia: Valores de 1 a 31 ou *
### Mês: Valores de 1 a 12, jan a dec ou *
### Semana: 0 a 6, sun a sat ou * (0 e 7 representa Domingo)

```
