
## 🛠️ Passos executados para instalar o Epel 7 no Centos 8

```bash

## 
$ rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

## 
$ yum repolist | grep -i "epel\|repo id"

## 
$ rpm -e epel-release-x-x.noarch

## 
$ yum remove epel-release

```
