#!/bin/bash
#Script Perpanjang User SSH
#www.fawzya.net - 085799054816
read -p "Username : " Login
read -p "Penambahan Masa Aktif (hari): " masaaktif
mati="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"

chage -E `date -d "$masaaktif days" +"%Y-%m-%d"` $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"

echo -e "--------------------------------"
echo -e "Akun Sudah Diperpanjang Hingga $exp"
echo -e "==========================="
echo -e "Script by \e[1;33;44m jangan lupa perpanjangan \e[0m"
