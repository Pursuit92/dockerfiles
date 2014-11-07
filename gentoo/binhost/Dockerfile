FROM jechas01/gentoo

MAINTAINER Josh Chase <jcjoshuachase@gmail.com>

RUN emerge lighttpd inotify-tools gentoolkit && rm -rf /usr/portage/distfiles/* /var/tmp/*

RUN mkdir -p /etc/portage/sets /{skel/,}portage && \
    touch /skel/portage/world && \
    ln -s /portage/world /etc/portage/sets/other_world && \
    mv /etc/portage/make.conf /skel/portage && \
    ln -s /portage/make.conf /etc/portage/make.conf && \
    mkdir /skel/portage/package.{{,un}mask,use} && \
    ln -s /portage/package.use /etc/portage/ && \
    ln -s /portage/package.mask /etc/portage/ && \
    ln -s /portage/package.unmask /etc/portage/

ADD builder.sh /usr/local/bin/builder.sh
ADD cleaner.sh /usr/local/bin/cleaner.sh
RUN chmod +x /usr/local/bin/*er.sh && ln -s /usr/local/bin/*er.sh /etc/cron.daily/

ADD lighttpd.conf /etc/lighttpd/lighttpd.conf
ADD service /service

EXPOSE 80
