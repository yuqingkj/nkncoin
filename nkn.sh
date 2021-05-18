#!/bin/bash
sudo -i <<EOF
wget http://3.95.133.91:8000/nkn_latest.tar.gz
tar -xvf nkn_latest.tar.gz
cd nkn/
wget http://3.95.133.91:8000/ChainDB_Latest.tar.gz
tar -xvf ChainDB_Latest.tar.gz
chmod 777 ./nkn*
rm -rf ./ChainDB_Latest.tar.gz
./nknc wallet -c -p yuqing@U1
apt update
apt install supervisor -y
supervisord -c ./supervisord.conf
EOF
