#!/bin/bash

#start shadowsocks
/usr/local/bin/supervisord
supervisorctl stop shadowsocks && supervisorctl start shadowsocks