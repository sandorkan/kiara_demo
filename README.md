kiara_demo
==========

* The yaml-file instantiates 3 virtual instances one of which has a public-ip
    + You'll need to know the ID's of the *public network*, *private network* and *private subnet*
* Each of the instances are configured to install the KIARA transport stack as well as the needed ZeroMQ libraries
* In order to work the images have to have the following packages installed: 
    + clang-3.4 
    + lldb-3.4 
    + gcc-4.8 
    + libtool 
    + autoconf 
    + automake 
    + uuid-dev 
    + make 
    + pkg-config 
    + git

