# ShadowsocksR for Docker

```

## run

docker run -d -p 443:443 -e PASSWORD="_your_password_" --name shadowsocksr-server targence/shadowsocksr

```

```
## GoAgentX client config

{
	"server": "_your_server_ip_",
	"server_port": 443,
	"local_port": 1080,
	"password":"_your_password_",
	"timeout": 120,
	"method": "aes-256-cfb",
	"protocol": "auth_sha1",
	"obfs": "tls1.2_ticket_auth",
	"obfs_param": ""
}


```

```
## install docker

adduser _your_username_
adduser _your_username_ sudo
sudo su _your_username_
cd ~

curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker _your_username_

#Remember that you will have to log out and back in for this to take effect!

## build image

git clone https://github.com/targence/shadowsocksr-docker
cd shadowsocksr-docker
docker build -t targence/shadowsocksr .

```
