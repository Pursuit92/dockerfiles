FROM jechas01/centos-base:centos6

MAINTAINER Josh Chase <jcjoshuachase@gmail.com>

RUN yum install -y mysql-server && \
	rm -rf /var/cache/yum/*

ADD service /service
