apt-get update
apt-get sudo
apt-get install autoconf gcc make git libcurl4-openssl-dev libncurses5-dev libtool libjansson-dev libudev-dev libusb-1.0-0-dev
cd /usr/src/
git clone https://github.com/ckolivas/cgminer.git
cd cgminer
./autogen.sh
make
cgminer -a sha256d -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u NHbHFgjeCX3CsyYQSKqVXDFnuySebT6g2dhp -p x
