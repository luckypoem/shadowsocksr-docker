# ShadowsocksR for Docker


```
## install docker

adduser _your_username_
usermod -aG sudo _your_username_
su _your_username_
cd ~

curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker _your_username_

#Remember that you will have to log out and back in for this to take effect!

```


```
## run

docker run -d -p 443:443 -e PASSWORD="_your_password_" --name shadowsocksr-server targence/shadowsocksr

```

```
## Dont't forget open 443 port
```

```
	"server": "_your_server_ip_",
	"server_port": 443,
	"method": "aes-256-cfb",

```

```
## build image

git clone https://github.com/targence/shadowsocksr-docker
cd shadowsocksr-docker
docker build -t targence/shadowsocksr .

```
