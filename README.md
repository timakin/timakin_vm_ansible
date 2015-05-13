VM with Ansible: timakinbox
=============

## Installation

```bash
$ vagrant box add centos http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140110.box
$ vagrant up
$ vagrant ssh-config --host timakinbox >> ~/.ssh/config
$ make ansible

# in vagrant command line
$ PATH=$PATH:/home/vagrant/perl5/bin
$ PATH=$PATH:/usr/local/bin
$ cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
$ cpanm Carton
$ cpanm Atom2
```

## Reference

- [Vagrant + Ansibleを試してみる](http://yokotakenji.me/log/programming/4230/)
