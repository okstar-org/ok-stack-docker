# Requirements
> Ubuntu 20.04 +
```shell
sudo apt-get update
sudo apt-get install -y git docker docker-compose
```


## Clone the repo
```shell

# clone
git clone https://github.com/okstar-org/ok-stack-docker.git
```

## Settings
modify `.env` file
```shell
# set you keycloak url
KC_HOSTNAME_URL=https://{your_ip_or_domain}
KC_HOSTNAME_ADMIN_URL=https://{your_ip_or_domain}
```

## 启动
```shell
cd ok-stack-docker/docker/
sudo docker-compose  up -d
```

# 登录
 
 http://localhost:8043/
    
    用户名：admin
    密码：okstar


