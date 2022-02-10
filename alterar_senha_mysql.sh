sudo systemctl stop mysql.service
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
#Em um novo terminal
sudo mysqld_safe --skip-grant-tables --skip-networking
mysql -u root
update mysql.user set authentication_string='12345678' where user='root';
flush privileges;
exit;
