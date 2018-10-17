FROM alpine:latest
MAINTAINER Fabiano Menegidio and LaBiOS² Team

ENV GUIserver_version 1.12.0
ENV HOME /root

ADD .config/start.sh /
ADD .config/supervisord.conf /etc/
ADD .config/supervisor.conf /etc/supervisor/conf.d/
ADD .config/bioportainer.conf /etc/supervisor/conf.d/
ADD .config/guiserver.conf /etc/supervisor/conf.d/
ADD tools/bioportainer $HOME/tools/
ADD tools/bioportainer/templates.json /
ADD tools/script-server $HOME/tools/script-server
ADD .config/start.sh /usr/local/bin/

RUN apk update && apk add --no-cache supervisor python3-dev py3-pip bash \
    libxml2-dev libxslt-dev musl-dev linux-headers build-base git \
    && rm -rf /var/cache/apk/* && rm -rf /tmp/ \
    && mkdir /.config \
    && pip3 install tornado typing ncbi-genome-download cwltool \
    && apk del build-base && rm -rf /var/cache/apk/* \
    && chmod +x /usr/local/bin/start.sh \
    && chmod -R +x $HOME/tools/script-server/conf/scripts/ \
    && cp /root/docker /usr/local/bin/

WORKDIR $HOME
VOLUME /data
VOLUME $HOME/workdir

EXPOSE 5000
EXPOSE 9000
    
CMD ["/start.sh"]
