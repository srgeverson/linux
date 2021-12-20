## 🛠️ Passos executados

```bash

### Instalando as ferramentas de email 
$ apt-get install libsasl2-modules mailutils

### Criando o arquivo com as informações de autenticação e colocar conforme o arquivo deste projeto
$ touch /etc/postfix/sasl_passwd

### Gerando o hash do arquivo criado
$ postmap /etc/postfix/sasl_passwd

### Alterando o dono do aquivo
$ chown root:root /etc/postfix/sasl_passwd*

### Modificando as permissões
$ chmod 0600 /etc/postfix/sasl_passwd*

### Criando um backup do arquivo padrão
$ cp /etc/postfix/main.cf /etc/postfix/main.backup

### Alterando o arquivo com as informações de autenticação e colocar conforme o arquivo deste projeto
$ nano /etc/postfix/main.cf

### Reinicia o serviço
$ systemctl restart postfix

### Testando o envio de email
$ echo "Test mail from postfix" | mail -s "Test Postfix" geversonjosedesouza@gmail.com

```