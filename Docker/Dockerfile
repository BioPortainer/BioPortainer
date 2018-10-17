FROM alpine:latest
MAINTAINER Fabiano Menegidio and LaBiOS² Team

ADD .config/start.sh /
ADD .config/supervisord.conf /etc/
ADD .config/supervisor.conf /etc/supervisor/conf.d/

RUN apk add --no-cache supervisor \
    && mkdir /etc/supervisord.d
    
CMD ["/start.sh"]
