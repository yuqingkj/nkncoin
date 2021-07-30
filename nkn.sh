#!/bin/bash
sudo -i <<EOF
wget http://45.79.206.208:8000/nkn_latest.tar.gz
tar -xvf nkn_latest.tar.gz
cd nkn/
wget http://45.79.206.208:8000/ChainDB_Latest.tar.gz
tar -xvf ChainDB_Latest.tar.gz
chmod 777 ./nkn*
rm -rf ./ChainDB_Latest.tar.gz
./nknc wallet -c -p yuqing@U1
apt update
apt install supervisor -y
supervisord -c ./supervisord.conf
EOF
