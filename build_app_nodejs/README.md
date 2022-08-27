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

# Adicionando o repositório
$ curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -

# Instalando Node JS
$ yum install nodejs

# Verificando a versão do Node
$ node --version

# Verificando a versão do npm
$ npm --version

# Crie uma pasta ou baixe seus fontes
$ mkdir -p /home/{PASTA_DO_USUARIO}/{PASTA_A_SER_CRIADA}

# Entre na pasta criada/baixada com seus fontes
$ cd /home/{PASTA_DO_USUARIO}/{PASTA_A_SER_CRIADA}

# Instale suas dependências
# npm install

# Caso sua aplicação possua Swagger execute o comando a seguir
$ npm run swagger-autogen

# Gerando build da aplicação
$ npm run build

# Com o comando executado para gerar a documentação é gerado um arquivo swagger.json, copie-o para a pasta gerada durante o build
$ cp /home/{PASTA_DO_USUARIO}/{PASTA_A_SER_CRIADA}/src/api/controller/doc/swagger.json /home/{PASTA_DO_USUARIO}/{PASTA_A_SER_CRIADA}/outDir/api/controller/doc/

# Executando a aplicação após o build
$ node outDir/index.js

# Instalando PM2
$ npm install -g pm2

# Adicionando a aplicação à lista de serviços Node para gerenciamento de estado(start/stop/restart)
$ pm2 start /home/suporte/projetos/api_node/outDir/index.js 

# Listando os serviços gerenciados pelo PM2
$ pm2 list

# Habilitando o PM2 para início junto com o servidor
$ pm2 startup systemd
* Caso apresente alguma mensagem o PM2 sugere um comando, Ex: sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u suporte --hp /home/suporte

# Salvando configuração realizadas no PM2
$ pm2 save

```
