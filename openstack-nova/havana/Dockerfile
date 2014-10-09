FROM jechas01/openstack-base:havana

MAINTAINER Josh Chase <jcjoshuachase@gmail.com>

RUN yum install -y openstack-nova \
	               openstack-nova-api \
				   openstack-nova-cells \
				   openstack-nova-cert \
				   openstack-nova-common \
				   openstack-nova-compute \
				   openstack-nova-console \
				   openstack-nova-conductor \
				   openstack-nova-network \
				   openstack-nova-novncproxy \
				   openstack-nova-opjectstore \
				   openstack-nova-scheduler \
	&& rm -rf /var/cache/yum/*
