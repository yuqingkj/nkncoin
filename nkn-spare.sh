#!/bin/bash
sudo -i <<EOF
wget http://18.189.189.198:8000/nkn-v2.0.8.tar.gz
tar -xvf nkn-v2.0.8.tar.gz
cd nkn-v2.0.8/
wget http://18.189.189.198:8000/ChainDB_Latest.tar.gz
tar -xvf ChainDB_Latest.tar.gz
chmod 777 ./nkn*
rm -rf ./ChainDB_Latest.tar.gz
./nknc wallet -c -p yuqing@U1
apt update
apt install supervisor -y
supervisord -c ./supervisord.conf
EOF