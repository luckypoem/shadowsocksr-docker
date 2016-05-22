# ShadowsocksR for Docker

```
git clone https://github.com/targence/shadowsocksr-docker
cd shadowsocksr-docker
docker build -t targence/shadowsocksr .
docker run -d -p 443:443 --name shadowsocksr-server targence/shadowsocksr
```
