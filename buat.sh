#!/bin/bash
#Script auto create trial user SSH
#yg akan expired setelah 1 hari
#www.fawzya.net - 085799054816

read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "Informasi SSH"
echo -e "=========-account-=========="
echo -e "Host: $IP"
echo -e "Dropbear Port: 443, 143, 103, 80"
echo -e "Squid Port: 3128, 8080, 8000"
echo -e "OpenVPN TCP Port: 53"
echo -e "OpenVPN UDP Port: 1194"
echo -e "Username: $Login "
echo -e "Password: $Pass"
echo -e "-----------------------------"
echo -e "Aktif Sampai: $exp"
echo -e "==========================="
echo -e "Script by \e[1;33;44m mv21.me by Arachi \e[0m"
