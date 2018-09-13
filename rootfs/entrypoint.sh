#!/bin/sh

#------------------------------------------------------------------------------
# Configure the service:
#------------------------------------------------------------------------------

if ["$1" = 'server'];then
env ssserver -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD \
  -m ${METHOD:-'aes-256-cfb'} \
  --user nobody -d start
else
env sslocal -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD \
  -b 0.0.0.0 -l ${LOCAL_PORT:-7070} -m ${METHOD:-'aes-256-cfb'} \
  -d start
env /usr/sbin/privoxy --no-daemon /etc/privoxy/config
fi