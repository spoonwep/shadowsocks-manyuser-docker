#pull a basic centos image
FROM ubuntu:14.04

#MAINTAINER
MAINTAINER spoonwep <i@sell.moe>

#define timezone
ENV TZ "Asia/Shanghai"

#define root directory
ENV HOME /root

#install all dependencies
RUN apt-get -y update
RUN apt-get -y install git python-pip m2crypto python-setuptools
RUN easy_install pip
RUN pip install cymysql
RUN easy_install supervisor

#clone shadowsocks-namyuser and add the config file
RUN git clone https://github.com/spoonwep/shadowsocks.git
ADD ./Config.py /root/shadowsocks/Config.py

#Supervisor Config
ADD ./supervisord.conf /etc/supervisord.conf

ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

ENTRYPOINT ["/start.sh"]