VM with Ansible
=============

## Installation

```bash
$ vagrant box add centos http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140110.box
$ vagrant up
$ ansible-playbook -i etc/hosts etc/timakin-playbook.yam
```


## Reference

- [Vagrant + Ansibleを試してみる](http://yokotakenji.me/log/programming/4230/)
