#!/bin/bash

function uniqadd() {
    if [ $# != '2' ] ;then
        echo "usage: uniqadd() need 2 args..."
        echo "usage: $ uniqadd filename add_article"
        return 0
    fi

    local dst=$1
    local article=$2

    if [ -e "${dst}" ] ;then
        echo ${article} >> ${dst}
        return 0
    fi

    local written=`grep ${article} ${dst}`

    if [ "$written" = "" ] ;then
        echo ${article} >> ${dst}
    fi
}

# Firewall setting
sudo chkconfig httpd on
sudo service iptables stop
sudo chkconfig iptables off

# PATH exportation
uniqadd ~/.bashrc PATH=$PATH:/home/vagrant/perl5/bin
uniqadd ~/.bashrc PATH=$PATH:/usr/local/bin

# Reflect setting to bashrc
source ~/.bashrc
