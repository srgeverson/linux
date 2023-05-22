
### Instalação e Onfiguração do Bacula

### Pré-requisitos

É recomendado a utilização de:
[CentOS](https://www.centos.org) e [PostgreSQL](https://www.postgresql.org).

```bash
# adicionando e instalando repositório mais recente
$ sudo yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm

# Instalando PostgreSQL
$ sudo yum install -y postgresql15-server

# Se houver erro de incompatibilidade de bibliotecas
$ yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
$ yum install libzstd-devel

# Iniciando o serviço do banco de dados
$ sudo /usr/pgsql-15/bin/postgresql-15-setup initdb

# Executando o serviço do banco de dados
$ sudo systemctl start postgresql-15

# Habilitando a execução autómatica com sistema operacional do serviço do banco de dados
$ sudo systemctl enable postgresql-15

# Realizando backup do arquivo default
$ cp /var/lib/pgsql/data/pg_hba.conf /var/lib/pgsql/data/pg_hba.conf.bk

# Adicionar no final do arquivo a seguinte instrução -> host all all 0.0.0.0/0 md5
$ nano /var/lib/pgsql/data/pg_hba.conf

# Libera porta no firewall
$ firewall-cmd --permanent --zone=public --add-port=5432/tcp && firewall-cmd --reload

# Reexecutando o serviço do banco de dados
$ sudo systemctl restart postgresql-15

#
$ sudo yum install -y bacula-director bacula-storage bacula-console bacula-client

# Diretório de confuguração
$ cd /opt/bacula/etc

# Diretório de trabalho
$ cd /opt/bacula/working


```

## 👨‍💻 Equipe de Desenvolvimento

* **Geverson Souza** - [Geverson Souza](https://www.linkedin.com/in/srgeverson/)
## ✒️ Autores

* **Geverson Souza** - [Geverson Souza](https://www.linkedin.com/in/srgeverson/)

## 📌 Versão 1.0.1

Nós usamos [Github](https://github.com/) para controle de versão.
