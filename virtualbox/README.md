
## 🛠️ Passos executados corrigir erros de inicialização do Virtual Box

```bash

## **Erro:**please install the gcc make perl packages from your distribution 
$ yum install gcc perl make

## **Erro:**This system is currently not set up to build kernel modules
$ yum install -y "kernel-devel-$(uname -r)"

```
