#!/bin/sh

RETHINKDB_VERSION=2.1.3~0

source /etc/lsb-release && echo "deb http://download.rethinkdb.com/apt $DISTRIB_CODENAME main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list
wget -qO- http://download.rethinkdb.com/apt/pubkey.gpg | apt-key add -
apt-get update -y
apt-get install -y rethinkdb=${RETHINKDB_VERSION}${DISTRIB_CODENAME}
