apt -y update
apt -y install cron

chmod +x /home/db_commands/backup.sh
chmod +x /home/db_commands/mysqldump_conif.sh


cd ~
echo "[mysqldump]" >> ~/.my.cnf
echo "user=root" >> ~/.my.cnf
echo "password=pass" >> ~/.my.cnf
cd /home

echo "*  *   *   *   *    root /home/db_commands/backup.sh" >> /etc/crontab

service cron start

apt -y update
apt -y install git

apt -y update
apt -y install nano

touch /home/configurado.txt