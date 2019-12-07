### 
# @Author: 021031
 # @Date: 2019-12-07 16:51:08
 # @LastEditors: 021031
 # @LastEditTime: 2019-12-07 16:52:58
 # @FilePath: \files\entrypoint.sh
 # @Description: 
 ###
#!/bin/sh

#------------------------------------------------------------------------------
# Configure the service:
#------------------------------------------------------------------------------

env python ./shadowsocks/local.py -c /app/config.json -d start
env /usr/sbin/privoxy --no-daemon /etc/privoxy/config