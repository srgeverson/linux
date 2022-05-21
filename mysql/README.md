## 🛠️ Passos executados para permitir conexão com MySQL

```bash

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
