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
service '$b' restart
exit 0
;;
17)
reboot
exit 0
;;
2)
hapus
exit 0
;;
2)
hapus
exit 0
;;

*)
echo "Tidak ada yang dipilih -_-";
echo "kanvret lah kau";
exit 1
;;
esac
