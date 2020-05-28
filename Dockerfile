FROM centos:7

RUN yum install -y epel-release &&\
    yum install -y git make cmake gcc gcc-c++ libstdc++-static libuv-static hwloc-devel openssl-devel &&\
    git clone https://github.com/xmrig/xmrig.git &&\
    cd xmrig && mkdir build && cd build &&\
    cmake .. -DUV_LIBRARY=/usr/lib64/libuv.a &&\
    make

CMD ["./xmrig/build/xmrig"]
