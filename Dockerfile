#pull a basic centos image
FROM ubuntu:14.04

#MAINTAINER
MAINTAINER spoonwep <i@sell.moe>

#define timezone
ENV TZ "Asia/Shanghai"

#install all dependencies
RUN apt-get -y update
RUN apt-get -y install git python-pip m2crypto python-setuptools
RUN easy_install pip
RUN pip install cymysql
RUN easy_install supervisor

#clone shadowsocks-namyuser and add the config file
RUN git clone https://github.com/spoonwep/shadowsocks.git
ADD ./Config.py /shadowsocks/Config.py

#Supervisor Config
ADD ./supervisord.conf /etc/supervisord.conf

#add start script
ADD ./start.sh /root/start.sh
RUN chmod 755 /root/start.sh

#expose all ports that shadowsocks-manyuser will use
EXPOSE 30000-65535

CMD ["/bin/bash", "/root/start.sh"]