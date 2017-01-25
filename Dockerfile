FROM alpine:edge
MAINTAINER Sinan Goo

ADD crontab.txt /crontab.txt
RUN /usr/bin/crontab /crontab.txt
RUN touch /var/log/cron.log

CMD crond && tail -f /var/log/cron.log

