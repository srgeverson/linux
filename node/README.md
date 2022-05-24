## 🛠️ Passos executados para instalar servidor Node CentOS 7

```bash

### Etapa 1 - Instalando o Node.js

## Baixando o arquivo de configuração do NodeSource RPM Repository
$ curl -L -o nodesource_setup.sh https://rpm.nodesource.com/setup_16.x
## Limpando cache do yum
$ sudo yum clean all
##  Realizando o download e tornando metadados ativados no momento.
$ sudo yum makecache fast
## Instalando ferramentas de construção:
$ sudo yum install -y gcc-c++ make
## Instalando a versão mais recente do pacote Node.js.
$ sudo yum install -y nodejs

## Verificando a versão do node
$ node -v

### Etapa 2 Criando APP de teste

## Copie o arquivo hello.js para o servidor e coloque o IP da rede local
$ cp hello.js /home/

## Testando o arquivo hello.js
$ node hello.js

### Etapa 2 - Instalando e usando o PM2

## Instalando o PM2 em nosso servidor de aplicativos
$ sudo npm install pm2@latest -g

## Executando o aplicativo em segundo plano 
$ pm2 start hello.js

## Gerando e configurando um script de inicialização para ativar o PM2
$ sudo pm2 startup systemd
```
