
## 配置 KeyCloak 服务
- 登录地址：`http://{KC_HOST}/admin/`
- 输入帐号：admin,okstar登录
- 到左上角，选择 `okstar` realm (如果没有则增加okstar，按如下配置，保存即可)
- 创建Client `okstack`
```text
======>General Settings<=========
Client ID * : okstack
Name        : OkStack

======>Capability config<=========
Client authentication: ON
Authentication flow: ON [Standard flow]  ON [Direct access grants]

======>Access settings<=========
Root URL:   http://localhost:9100
Home URL:   http://localhost:9100/q/swagger-ui/
Valid redirect URIs: *
Valid post logout redirect URIs:    http://localhost:9100/q/swagger-ui/
Admin URL:  http://localhost:9100
```
- 第三个Tab [credentials]
```text
Client Authenticator：Client Id and Secret 
Client Secret：点击复制和保存 (保留后续配置到项目) 
```
- 点击左下角  `User Federation`，选择增加`LDAP`
> General options
```text
UI display name *   :ldap 
Vendor *            :Other
```
> Connection and authentication settings
```text
Connection URL *    :ldap://apacheds:10389
Connection pooling  :On
Connection timeout  :10000
Bind type *         :simple
Bind DN *           :uid=admin,ou=system
Bind credentials *  :secret

# 可以点击Test测试是否成功
```
> LDAP searching and updating
```text
Edit mode *                 :WRITABLE
Users DN *                  :ou=users,dc=okstar,dc=org
Username LDAP attribute *   :uid
RDN LDAP attribute *        :uid
UUID LDAP attribute *   :entryUUID
User object classes *   :inetOrgPerson, organizationalPerson
Search scope        :Subtree
Read timeout        :10000
Pagination          :On
```

> Synchronization settings

```text
Import users        :On
Sync Registrations  :On
Periodic full sync  :On
Full sync period    :604800
Periodic changed users sync :On
Changed users sync period   :86400
```
- 点击`Save`保存

### Keycloak 配置邮箱（可选）
> 在找回密码使用该配置，分两步完成
#### 第一步
- 1，选择Realm`master`
- 2，点击菜单`Users`
- 3，点击菜单`admin`
- 4，选择`Details`-》`Email`输入邮箱发送地址即可。
#### 第二步
- 1，选择Realm`okstar`
- 2，点击菜单`Realm settings`
- 3，选择tab`Email`
- 4，输入邮箱相关信息即可。