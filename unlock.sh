#!/bin/bash
#Script Hapus User SSH
read -p "Username yang akan dibuka : " Login
passwd -u $Login
echo -e ".................................................."
echo -e "User \e[1;33;44m$Login\e[0m Berhasil dibuka kuncinya"
