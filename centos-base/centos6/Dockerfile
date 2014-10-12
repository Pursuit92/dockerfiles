FROM centos:centos6

MAINTAINER Josh Chase <jcjoshuachase@gmail.com>

RUN yum update -y && \
	yum install -y busybox && \
	rm -rf /var/cache/yum/* && \
	ln -s /sbin/busybox /sbin/runsv && \
	ln -s /sbin/busybox /sbin/runsvdir && \
	ln -s /sbin/busybox /sbin/sv && \
	ln -s /sbin/busybox /sbin/chpst && \
	ln -s /sbin/busybox /sbin/svlogd && \
	mkdir /service

ADD init-i /sbin/init-i
ADD etcd-v0.4.6-linux-amd64/etcd /usr/bin/etcd
ADD etcd-v0.4.6-linux-amd64/etcdctl /usr/bin/etcdctl
ENTRYPOINT ["/sbin/init-i"]
ONBUILD ENTRYPOINT ["/sbin/init-i"]
