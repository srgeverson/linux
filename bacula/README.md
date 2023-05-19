
### Instalação e Onfiguração do Bacula

### Pré-requisitos

É recomendado a utilização de:
[CentOS](https://www.centos.org) e [PostgreSQL](https://www.postgresql.org).

```bash
# adicionando e instalando repositório mais recente
$ sudo yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm

# Instalando PostgreSQL
$ sudo yum install -y postgresql15-server

#
$ sudo /usr/pgsql-15/bin/postgresql-15-setup initdb

#
$ sudo systemctl start postgresql-15

#
$ sudo systemctl enable postgresql-15

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
