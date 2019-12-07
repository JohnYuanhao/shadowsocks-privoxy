#!/bin/sh

#------------------------------------------------------------------------------
# Configure the service:
#------------------------------------------------------------------------------

env python ./shadowsocks/local.py -c /app/config.json -d start
env /usr/sbin/privoxy --no-daemon /etc/privoxy/config