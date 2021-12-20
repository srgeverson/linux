## 🛠️ Passos executados para alterar DNS

```bash

### Fazendo backup do arquivo original
$ cp /etc/resolv.conf /etc/resolv.backup 

### Editando o arquivo
$ nano /etc/resolv.conf 

### Incluindo o getway
$ nameserver SEU_GETWAY ou nameserver 8.8.8.8

```