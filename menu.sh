#!/bin/bash
clear
echo "Daftar Menu";
echo "1. Buat akun";
echo "2. Hapus Akun";
echo "3. Cek Daftar Akun dan Tanggal Expired";
echo "4. Hapus akun yang Expired";
echo "5. Banned Akun";
echo "6. Kunci akun";
echo "7. Buka kunci akun";
echo "8. Cek user login openSSH dan Dropbear";
echo "9. Ganti password akun";
echo "================================";
echo "10. Restart Squid";
echo "11. Restart Dropbear";
echo "12. Restart OpenSSH";
echo "13. Restart OpenVPN";
echo "14. Update Server";
echo "15. Upgrade Server";
echo "16. Restart service pilihan";
echo "17. Restart server";
echo "++++++++++++++++++++++++++++++++";
echo "18. Auto Install Debian 7";
echo "19. Auto Install Centos 6 (openvz)";
echo "20. Auto Install Centos 6 (KVM)";
echo "21. Auto Install Debian 6";
echo "===============================";
echo "22. Update menu";
echo "++++++++++++++++++";
echo "++ HASIL UPDATE ++";
echo "++++++++++++++++++";
echo "23. Limit user login";
echo "24. Install OCS Panel edited by Arachi";
read -p "Pilihan Menu: " a;

case $a in

1)
buat
exit 0
;;
2)
hapus
exit 0
;;
3)
user
exit 0
;;
4)
delexp
exit 0
;;
5)
banned
exit 0
;;
6)
lock
exit 0
;;
7)
unlock
exit 0
;;
8)
userlog
exit 0
;;
9)
ubahpw
exit 0
;;
10)
/etc/init.d/squid3 restart
/etc/init.d/squid restart
exit 0
;;
11)
/etc/init.d/dropbear restart
exit 0
;;
12)
/etc/init.d/ssh restart
exit 0
;;
13)
/etc/init.d/openvpn restart
service openvpn restart
exit 0
;;
14)
apt-get update
exit 0
;;
15)
apt-get upgrade
exit 0
;;
16)
read -p "Masukkan nama service: " b;
service $b restart
exit 0
;;
17)
reboot
exit 0
;;
18)
cd
wget https://raw.github.com/arieonline/autoscript/master/debian7.sh
bash debian7.sh
exit 0
;;
19)
cd
wget https://raw.github.com/arieonline/autoscript/master/centos6.sh
bash centos6.sh
exit 0
;;
20)
cd
wget https://raw.github.com/arieonline/autoscript/master/centos6-kvm.sh
bash centos6-kvm.sh
exit 0
;;
21)
cd
wget https://raw.github.com/arieonline/autoscript/master/debian6.sh
bash debian6.sh
exit 0
;;
22)
cd /bin
wget -O menu https://github.com/arachi006/vps/raw/master/menu.sh
chmod +x menu
wget -O perbarui https://github.com/arachi006/vps/raw/master/daftar-menu.sh
chmod +x perbarui
perbarui
cd
echo "Pembaruhan script telah sukses. Script by mv21.me";
menu
exit 0
;;
23)
read -p "Maksimal Login ( 1 atau 2 ):" c;
case $c in
1)
crontab -l > mycron
echo "* * * * * limit 1" >> mycron
echo "* * * * * sleep 5; limit 1" >> mycron
echo "* * * * * sleep 10; limit 1" >> mycron
echo "* * * * * sleep 15; limit 1" >> mycron
echo "* * * * * sleep 20; limit 1" >> mycron
echo "* * * * * sleep 25; limit 1" >> mycron
echo "* * * * * sleep 30; limit 1" >> mycron
echo "* * * * * sleep 35; limit 1" >> mycron
echo "* * * * * sleep 40; limit 1" >> mycron
echo "* * * * * sleep 45; limit 1" >> mycron
echo "* * * * * sleep 50; limit 1" >> mycron
echo "* * * * * sleep 55; limit 1" >> mycron
crontab mycron
rm mycron
( crontab -l | grep -v -F "* * * * * limit 2" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 5; limit 2" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 10; limit 2" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 15; limit 2" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 20; limit 2" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 25; limit 2" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 30; limit 2" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 35; limit 2" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 40; limit 2" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 45; limit 2" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 50; limit 2" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 55; limit 2" ) | crontab -
service cron restart
clear
exit 0
;;
2)
crontab -l > mycron
echo "* * * * * limit 2" >> mycron
echo "* * * * * sleep 5; limit 2" >> mycron
echo "* * * * * sleep 10; limit 2" >> mycron
echo "* * * * * sleep 15; limit 2" >> mycron
echo "* * * * * sleep 20; limit 2" >> mycron
echo "* * * * * sleep 25; limit 2" >> mycron
echo "* * * * * sleep 30; limit 2" >> mycron
echo "* * * * * sleep 35; limit 2" >> mycron
echo "* * * * * sleep 40; limit 2" >> mycron
echo "* * * * * sleep 45; limit 2" >> mycron
echo "* * * * * sleep 50; limit 2" >> mycron
echo "* * * * * sleep 55; limit 2" >> mycron
crontab mycron
rm mycron
( crontab -l | grep -v -F "* * * * * limit 1" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 5; limit 1" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 10; limit 1" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 15; limit 1" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 20; limit 1" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 25; limit 1" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 30; limit 1" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 35; limit 1" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 40; limit 1" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 45; limit 1" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 50; limit 1" ) | crontab -
( crontab -l | grep -v -F "* * * * * sleep 55; limit 1" ) | crontab -
service cron restart
clear
exit 0
;;
esac
exit 0
;;
24)
cd /home/vps/public_html
wget http://www.drakonesia.com/backup.tar
tar -xvf backup.tar
chmod 777 application/config/database.php
apt-get install php5-ssh2 php5-mysql -y
clear
cd
echo "Akses OCS Panel pada browser kamu";
exit 0
;;
*)
echo "Tidak ada yang dipilih -_-";
echo "kanvret lah kau";
exit 1
;;
esac
