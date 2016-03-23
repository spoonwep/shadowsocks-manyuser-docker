#!/bin/bash

/usr/local/bin/supervisord
service ufw stop
supervisorctl stop shadowsocks && supervisorctl start shadowsocks

/bin/bash