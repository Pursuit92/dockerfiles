FROM scratch

MAINTAINER Josh Chase <jcjoshuachase@gmail.com>

ADD stage3-amd64-20141030.tar.bz2 /
ADD portage-latest.tar.xz /usr/
RUN emerge --sync && emerge --oneshot portage && emerge -uDN @world && emerge runit cronie && rm -rf /usr/portage/distfiles/* /var/tmp/*
ADD runit/init-i /sbin/init-i
RUN chmod +x /sbin/init-i
ADD runit/service /service
ENTRYPOINT ["/sbin/init-i"]
ONBUILD ENTRYPOINT ["/sbin/init-i"]
