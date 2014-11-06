FROM scratch

MAINTAINER Josh Chase <jcjoshuachase@gmail.com>

ADD stage3-amd64-20140918.tar.bz2 /
ADD portage-20141029.tar.xz /usr/
RUN emerge --sync && emerge --oneshot portage && emerge -uDN @world && emerge runit && rm -rf /usr/portage/distfiles/*
ADD runit/init-i /sbin/init-i
RUN chmod +x /sbin/init-i
ADD runit/service /service
ENTRYPOINT ["/sbin/init-i"]
ONBUILD ENTRYPOINT ["/sbin/init-i"]
