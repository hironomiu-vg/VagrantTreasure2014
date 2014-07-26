Treasure2014
===================================

## 環境構成
### Provision 
Puppet
## Set Up 
### git clone
```
$ git@github.com:hironomiu-vg/VagrantTreasure2014.git 
```
### 起動
- エラーとなる場合pluginを確認しvagrant-vbguestがinstallされていること

```
$ vagrant plugin list
vagrant-login (1.0.1, system)
vagrant-share (1.1.0, system)
vagrant-vbguest (0.10.0)
```
- pluginが存在しない場合installを行う

```
$ vagrant plugin install vagrant-vbguest
```

-起動

```
$ cd VagrantTreasure2014  
$ vagrant up  
```

## Login
### appuser2014
```
$ ssh appuser2014@192.168.56.14
```
### vagrant
```
$ vagrant ssh
```
## users

| OS user | pass | 続DB | 接続Port |  DB user |  DB pass | 用途 |
|:-----------:|:------------:|:------------:|:------------:|:------------:|:------------:|:------------:|
| root | - | - | 3306 |  root | vagrant | root vagrantユーザより sudo su -にて遷移|
| vagrant | - | - | - | - | - | vagrant用ユーザ vagrant sshにてログイン|
| appuser2014 | appuser2014 | treasure2014 | 3306 | treasure2014 | treasure2014 | 開発ユーザ |
| group-a-2014 | group-a-2014 | group_a_2014 | 3306 | group_a_2014 | group_a_2014 | グループワークユーザ |
| group-b-2014 | group-b-2014 | group_b_2014 | 3306 | group_b_2014 | group_b_2014 | グループワークユーザ |
| group-c-2014 | group-c-2014 | group_c_2014 | 3306 | group_c_2014 | group_c_2014 | グループワークユーザ |
| group-d-2014 | group-d-2014 | group_d_2014 | 3306 | group_d_2014 | group_d_2014 | グループワークユーザ |
| group-e-2014 | group-e-2014 | group_e_2014 | 3306 | group_e_2014 | group_e_2014 | グループワークユーザ |
| group-f-2014 | group-f-2014 | group_f_2014 | 3306 | group_f_2014 | group_f_2014 | グループワークユーザ |

## Packages   
### MySQL
- 5.6
- 自動起動
```
/etc/my.cnf
```
 
### iptables
- 自動起動
- port22,80 allow

### httpd
- 自動起動
- DocumentRootは適時設定すること

### PHP
- 5.4
