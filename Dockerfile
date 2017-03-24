# Version:1.1

FROM ubuntu:16.04
MAINTAINER targence <targence@gmail.com>

RUN apt-get -qq update && \
    apt-get install -q -y wget build-essential python m2crypto git && \
    apt-get clean

# need only for salsa20, chacha20, chacha20-ietf
RUN wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz && \
   tar zxf LATEST.tar.gz && \
   cd libsodium* && \
   ./configure && make -j2 && make install && \
   ldconfig

WORKDIR /shadowsocks
RUN git clone -b master https://github.com/shadowsocks/shadowsocks.git /shadowsocks
COPY shadowsocks.tmpl /etc/
COPY entrypoint.sh /etc/

EXPOSE 443

ENTRYPOINT ["/etc/entrypoint.sh"]
CMD ["/shadowsocks/shadowsocks/server.py", "-c", "/etc/shadowsocks.json"]
