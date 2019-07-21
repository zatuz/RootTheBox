#!/bin/bash
if  grep -qi "ubuntu": /etc/*release*; then
  add-apt-repository universe
elif  grep -qi "debian": /etc/*release*; then
apt-get install software-properties-common
add-apt-repository main
add-apt-repository contrib
add-apt-repository non-free
fi

if [[ "$(lsb_release -is)" = ubuntu ]]; then
    apt-get install build-essential mysql-server zlib1g-dev libmysqlclient-dev memcached libmemcached-dev "$SKIP"
    elif [[ "$(lsb_release -is)" = debian ]]; then
    echo "tu sistema es debian"
    slep 5
    apt-get install build-essential mysql-server zlib1g-dev default-libmysqlclient-dev memcached libmemcached-dev "$SKIP"
fi
