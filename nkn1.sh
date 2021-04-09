#!/bin/bash
wget http://3.17.36.204:8000/nkn-v2.0.8.tar.gz
tar -xvf nkn-v2.0.8.tar.gz
cd nkn-v2.0.8/
wget http://3.17.36.204:8000/ChainDB_2505770.tar.gz
tar -xvf ChainDB_2505770.tar.gz
chmod 777 ./nkn*
