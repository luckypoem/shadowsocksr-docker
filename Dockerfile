# Version:1.1

FROM ubuntu:16.04
MAINTAINER targence <targence@gmail.com>

RUN apt-get -qq update && \
    apt-get install -q -y wget build-essential python m2crypto git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# need only for salsa20, chacha20, chacha20-ietf 
RUN wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz && \
    tar zxf LATEST.tar.gz && \
    cd libsodium* && \
    ./configure && make -j2 && make install && \
    ldconfig

RUN git clone -b manyuser https://github.com/breakwa11/shadowsocks.git ~/shadowsocks

ADD shadowsocks.json /etc/
ADD start.sh /usr/local/bin/start.sh
RUN chmod 755 /usr/local/bin/start.sh

EXPOSE 443

CMD ["sh", "-c", "start.sh"]
