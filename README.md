MySQL5.6検証用環境(master,slave)
===================================

## 環境構成
### Provision 
Puppet
## Set Up 
### git clone
```
$ git clone git@github.com:hironomiu/Vagrant_MySQL5.6.git
```
### vagrant up
```
$ cd Vagrant_MySQL5.6  
$ vagrant up  
```
## Login
### demouser(master)
```
$ ssh demouser@192.168.56.10
```
### demouser(slave)
```
$ ssh demouser@192.168.56.20
```
### vagrant(master)
```
$ vagrant ssh db1
```
### vagrant(slave)
```
$ vagrant ssh db2
```
## Packages   
### MySQL5.6
自動起動
/etc/my.cnf  
### iptables
自動起動
port22,80をallow
### httpd
自動起動
### PHP
