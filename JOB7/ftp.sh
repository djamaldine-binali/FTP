apt-get update
apt-get upgrade
apt-get install sudo
apt-get install proftpd
sudo useradd -m Merry -p "$(echo "kalimac" | openssl passwd -1 -stdin)"
sudo useradd -m Pippin -p "$(echo "secondbreakfast" | openssl passwd -1 -stdin)"
ln -sf /home/debianftp/fichiersTr/proftpd.conf /etc/proftpd/proftpd.conf
apt-get install openssl
mkdir /etc/proftpd/ssl
openssl reqq -new -x509 -keyout /etc/proftpd/ssl/proftpd.key.pem -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem
chmod 600 /etc/proftpd/ssl/proftpd.*
ln -sf /home/debianftp/fichiersTr/tls.conf /etc/proftpd/tls.conf
service proftpd restart
