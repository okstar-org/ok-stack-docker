

# 配置启动 Openfire 服务器

## 初始化
> 打开服务器地址：`http://{openfire_host}/`
- 第一步，选择合适的语言
- 第二步，服务器设置不用修改
- 第三步，使用标准数据库
  - 选择`Postgres`数据库
  - url：`jdbc:postgresql://ok_db:5432/openfire`
  - 用户名:`root`，密码:`okstar`
- 第四步，设置LDAP服务器
  - 目录服务器 (LDAP)
  - 服务类型，选择“其他”
  - 设置连接，Protocol:`ldap`	主机:`apacheds`	端口:`10389`
  - 基础的DN:`ou=users,dc=okstar,dc=org`
  - 管理员DN:`uid=admin,ou=system`，密码: `secret`，点击测试
- 第五步，选择LDAP管理员
  - 第一项，输入`okstar`
  - 第二项，选择第一个
  - 第三项，点击`添加`列出用户即可，点击`完成`
- 第六步，登录到主界面
  - 输入管理员`okstar`和密码`okstar`。
  - 点击登录

## 配置插件
- 管理中心插件列表
- 安装如下插件 :`Bookmarks`, `External Service Discovery`, `REST API`
- 设置`External Service Discovery`插件，位置：[服务器]->[媒体服务]
```
    host                port     transport  type
    stun.l.google.com 	19302 		udp 	stun
 	{your turn server} 	34780 		udp 	turn 
```

- 设置`REST API`插件，位置：[服务器]->[服务器设置]-> [REST API]
```
Enabled - REST API requests will be processed.
Secret key auth - REST API authentication over specified secret key.
Secret key: [xxxx] <= 输入`Secret key`，并且记住
```


