FROM alpine:latest

ENV HOME /root

ADD .config/start.sh /start.sh
ADD .tools/bioportainer $HOME/tools/
ADD .tools/bioportainer/templates.json /
ADD .config/supervisord.conf /.config/
ADD .config/bioportainer.conf /etc/supervisor/conf.d/bioportainer.conf

RUN apk --update upgrade && apk add --no-cache ca-certificates bash supervisor \
    && rm -rf /var/cache/apk/* \
    && chmod +x /start.sh && mkdir -p /.config/supervisord

WORKDIR /
EXPOSE 9000
EXPOSE 6000
VOLUME /data
ENTRYPOINT ["/root/tools/bioportainer"]
