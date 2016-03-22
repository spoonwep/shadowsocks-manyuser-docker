#pull a basic centos image
FROM centos:centos7.1.1503

#MAINTAINER
MAINTAINER spoonwep <i@sell.moe>

#define timezone
ENV TZ "Asia/Shanghai"

#define root directory
ENV HOME /root

#install all dependencies
RUN yum -y update
RUN yum -y install git python-pip m2crypto
RUN easy_install pip
RUN pip install cymysql
RUN easy_install supervisor

#clone shadowsocks-namyuser
RUN git clone https://github.com/spoonwep/shadowsocks.git
COPY Config.py /root/shadowsocks/Config.py
COPY supervisord.conf /etc/supervisord.conf
RUN mkdir -p /etc/supervisor.conf.d && \
    mkdir -p /var/log/supervisor

ENTRYPOINT ["/start.sh"]