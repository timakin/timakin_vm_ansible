VM with Ansible: timakinbox
=============

## Installation

```bash
$ vagrant box add centos http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140110.box
$ vagrant up
$ vagrant ssh-config --host timakinbox >> ~/.ssh/config
$ make ansible
```

## Reference

- [Vagrant + Ansibleを試してみる](http://yokotakenji.me/log/programming/4230/)
