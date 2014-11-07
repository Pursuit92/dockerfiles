FROM jechas01/gentoo

MAINTAINER Josh Chase <jcjoshuachase@gmail.com>

RUN emerge lighttpd inotify-tools && rm -rf /usr/portage/distfiles/* /var/tmp/*

RUN mkdir /etc/portage/sets /portage && touch /portage/world && ln -s /portage/world /etc/portage/sets/other_world && mv /etc/portage/make.conf /portage && ln -s /portage/make.conf /etc/portage/make.conf && mkdir /portage/package.{,un}mask && ln -s /portage/package.* /etc/portage/

ADD builder.sh /usr/local/bin/builder.sh
RUN chmod +x /usr/local/bin/builder.sh && ln -s /usr/local/bin/builder.sh /etc/cron.daily/

ADD lighttpd.conf /etc/lighttpd/lighttpd.conf
ADD service /service

EXPOSE 80
