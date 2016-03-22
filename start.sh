#!/bin/bash

/usr/bin/supervisord
systemctl stop iptables && chkconfig iptables off
supervisorctl stop shadowsocks && supervisorctl start shadowsocks

/bin/bash