# Requirements

- Ubuntu 20.04 +
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
modify `docker/.env` file
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

# 配置Keycloak
 
  打开地址:`https://localhost:8443/`,默认用户名：admin、密码：okstar

> 具体配置方法请参考：[Keycloak 配置](./docs/kc.md)

# 配置openfire
 
  配置openfire连接到apacheds服务
> 具体配置方法请参考：[Openfire 配置](./docs/of.md)

