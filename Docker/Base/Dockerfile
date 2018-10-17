FROM alpine:latest
MAINTAINER Fabiano Menegidio and LaBiOS² Team

ADD .config/start.sh /
ADD .config/supervisord.conf /etc/
ADD .config/supervisor.conf /etc/supervisor/conf.d/

RUN apk update && apk add --no-cache supervisor \
    && rm -rf /var/cache/apk/* && rm -rf /tmp/ \
    && mkdir /etc/supervisord.d && mkdir /.config
    
CMD ["/start.sh"]
