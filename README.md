# ShadowsocksR for Docker

```
## on server

curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker _your_username_

git clone https://github.com/targence/shadowsocksr-docker
cd shadowsocksr-docker
nano shadowsocks.json # change this line   "password": "_your_password_",

docker build -t targence/shadowsocksr .
docker run -d -p 443:443 --name shadowsocksr-server targence/shadowsocksr


## on client

{
	"server": "_your_server_ip_",
	"server_port": _your_server_port_,
	"local_port": _your_local_port_,
	"password":"_your_password_",
	"timeout": 120,
	"method": "aes-256-cfb",
	"protocol": "auth_sha1",
	"obfs": "tls1.2_ticket_auth",
	"obfs_param": ""
}


```
