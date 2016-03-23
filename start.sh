#!/bin/bash

/usr/local/bin/supervisord
systemctl stop iptables && chkconfig iptables off
supervisorctl stop shadowsocks && supervisorctl start shadowsocks

/bin/bash