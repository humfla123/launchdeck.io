apt-get update
wget https://github.com/xmrig/xmrig/releases/download/v6.19.0/xmrig-6.19.0-focal-x64.tar.gz
apt install tar
tar -xf xmrig-6.19.0-focal-x64.tar.gz
cd xmrig-6.19.0
./xmrig -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u NHbHFgjeCX3CsyYQSKqVXDFnuySebT6g2dhp -p x -k
