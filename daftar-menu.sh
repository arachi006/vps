#!/bin/bash

#masuk ke dir Bin
cd /bin

#download menu
wget -O user https://github.com/arachi006/vps/raw/master/cekexp.sh
wget -O delexp https://github.com/arachi006/vps/raw/master/expdel.sh
wget -O hapus https://github.com/arachi006/vps/raw/master/hapus.sh
wget -O banned https://github.com/arachi006/vps/raw/master/banned.sh
wget -O buat https://github.com/arachi006/vps/raw/master/buat.sh
wget -O lock https://github.com/arachi006/vps/raw/master/lock.sh
wget -O userlog https://github.com/arachi006/vps/raw/master/monuser.sh
wget -O ubahpw https://github.com/arachi006/vps/raw/master/ubahpw.sh
wget -O unlock https://github.com/arachi006/vps/raw/master/unlock.sh
wget -O limit https://github.com/arachi006/vps/raw/master/limit.sh
#beri permission
chmod +x user
chmod +x delexp
chmod +x hapus
chmod +x banned
chmod +x buat
chmod +x lock
chmod +x userlog
chmod +x ubahpw
chmod +x unlock
chmod +x limit
echo "Pembaruan menu sukses!!!"
