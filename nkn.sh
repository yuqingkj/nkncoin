#!/bin/bash
sudo -i <<EOF
wget http://3.17.36.204:8000/nkn-v2.9.0.tar.gz
tar -xvf nkn-v2.9.0.tar.gz
cd nkn/
wget http://3.17.36.204:8000/ChainDB_Latest.tar.gz
tar -xvf ChainDB_Latest.tar.gz
chmod 777 ./nkn*
rm -rf ./ChainDB_Latest.tar.gz
./nknc wallet -c -p yuqing@U1
apt update
apt install supervisor -y
supervisord -c ./supervisord.conf
EOF