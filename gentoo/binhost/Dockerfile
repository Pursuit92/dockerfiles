FROM jechas01/gentoo

MAINTAINER Josh Chase <jcjoshuachase@gmail.com>

EXPOSE 8080

RUN emerge lighttpd && rm -rf /usr/portage/distfiles/*
ADD make.conf /etc/portage/make.conf
