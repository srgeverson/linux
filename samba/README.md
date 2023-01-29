# Adicionar usuário no SO
$ adduser {NOME_USUÁRIO}

# Atribuindo senha ao usuário no SO
$ passwd {NOME_USUÁRIO}

# Adicionar usuário e atribuindo senha no samba
$ smbpasswd -a {NOME_USUÁRIO}

# Configurando usuários, grupos e pastas do samba
# vi /etc/samba/smb.conf
