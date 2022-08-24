
## 🛠️ Passos executados corrigir erros de inicialização do Virtual Box

```bash

## **Erro:**please install the gcc make perl packages from your distribution 
$ yum install gcc perl make

## **Erro:**This system is currently not set up to build kernel modules
$ yum install -y "kernel-devel-$(uname -r)"

## Listar VMs pelo terminal/cmd
$ VBoxManage list vms

## Listar VMs que estão executando pelo terminal/cmd
$ VBoxManage list runningvms

## Ligar VM pelo terminal/cmd
$ VBoxManage startvm "NOME_DA_VM"

## Ligar em background VM pelo terminal/cmd
$ VBoxManage startvm "NOME_DA_VM" --type headless

## Desligar VM pelo terminal/cmd
$ VBoxManage controlvm "NOME_DA_VM" poweroff soft

## Desligar VM pelo terminal/cmd evitando perda de dados
$ VBoxManage controlvm "NOME_DA_VM" acpipowerbutton

## Criando arquivo de configuração
$ touch /etc/default/virtualbox

## Editando arquivo criado
$ nano /etc/default/virtualbox

## Criando arquivo de configuração do perfil do usuário
$ touch /etc/vbox/vbox.cfg

## Editando arquivo criado
$ nano /etc/vbox/vbox.cfg

## Salve o arquivo e realiza as alterações necessárias em uma pasta
$ cp nome_do_servico.service CAMINHO_ARQUIVO/nome_do_servico.service

## Recarregar lista de serviços do SO
$ systemctl daemon-reload

## Iniciando o serviço criado
$ systemctl start nome_do_servico.service

## Habilitando serviço ao iniciar o SO
$ systemctl enable nome_do_servico.service

```
