## 🛠️ Passos executados para permitir conexão com MySQL

```bash

# Descobrir a localização do aquivo de configuração do mysql
$ mysql --help

# Editando o arquivo my.cnf e adicionando a seguinte instrução na seção  [mysqld]
$ skip-grant-tables

# Reiniciando o serviço
$ systemctl restart mysqld

# Logar no mysql
$ mysql -u root 

# 
$ FLUSH PRIVILEGES;

#
$ SHOW VARIABLES LIKE 'validate_password%';

#
$ SET GLOBAL validate_password.length = 6;

#
$ SET GLOBAL validate_password.number_count = 0;

### Alterando o my.ini
$ bind-address="0.0.0.0"

### Criando usuário root em localhost
$ CREATE USER 'root'@'localhost' IDENTIFIED BY '12345678'; 

### Criando usuário root em qualquer IP
$ CREATE USER 'root'@'%.%.%.%' IDENTIFIED BY '12345678'; 

### Criando usuário root em DNS
$ CREATE USER 'root'@'%' IDENTIFIED BY '12345678'; 
$ CREATE USER 'root'@'0.0.0.0' IDENTIFIED BY '12345678'; 

### Liberando todos os privilégios para o usuário root em localhost
$ GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';

### Liberando todos os privilégios para o usuário root em qualquer IP
$ GRANT ALL PRIVILEGES ON *.* TO 'root'@'%.%.%.%';

### Liberando todos os privilégios para o usuário root em DNS
$ GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
$ GRANT ALL PRIVILEGES ON *.* TO 'root'@'0.0.0.0';

```
