#!/bin/bash
export GIT_SSL_NO_VERIFY=1

cd /root

# Install ZeroMQ
git clone https://github.com/zeromq/zeromq4-x.git
cd zeromq4-x/
./autogen.sh
./configure
sudo make
sudo make install
cd ..

# Install CZMQ - High-level C binding for ÿMQ
git clone git://github.com/jedisct1/libsodium.git
cd libsodium
./autogen.sh
./configure
sudo make install
sudo ldconfig
cd ..

git clone git://github.com/zeromq/libzmq.git
cd libzmq
./autogen.sh
./configure
sudo make install
sudo ldconfig
cd ..

git clone git://github.com/zeromq/czmq.git
cd czmq
./autogen.sh
./configure
sudo make install
sudo ldconfig
cd ..

# Get KIARA Transport-Stack / Libray
git clone https://dornbirn.zhaw.ch/gitbucket/git/kiara/transport.git
cd transport
git checkout 0.3.0-alpha
sed -i 's/5555/5556/g' src/examples/main_server_0mq_http.cpp
make clean && make server_0mq_http_pp ASAN=0
cd ..

cd /root
touch inst-kiara-transport-zmq-transport-stack-finished
