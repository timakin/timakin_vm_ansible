Virtual environment construction with Ansible: timakinbox
=============

## Installation

```bash
# Base setting
$ vagrant box add centos http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140110.box
$ vagrant up
$ vagrant ssh-config --host timakinbox >> ~/.ssh/config
$ make ansible
$ ssh timakinbox

# Firewall setting
$ sudo chkconfig httpd on
$ sudo service iptables stop
$ sudo chkconfig iptables off
$ exit
$ vagrant reload

# PATH setting
$ PATH=$PATH:/home/vagrant/perl5/bin
$ PATH=$PATH:/usr/local/bin

# Cpan packages
$ cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
$ cpanm Carton
$ cpanm Atom2
```

## Reference

- [VirtualBoxとVagrantで開発環境を構築](http://www.webcyou.com/?p=4632)
- [Vagrant + Ansibleを試してみる](http://yokotakenji.me/log/programming/4230/)
- [Amon2チュートリアル](http://keisyu.hateblo.jp/entry/2014/02/16/214757)
