FROM alpine:latest

ENV GUIserver_version 1.12.0
ENV HOME /root

COPY .config/start.sh /usr/local/bin/
COPY bioportainer $HOME/
COPY script-server $HOME/script-server
COPY .config/cwltool.json $HOME/script-server/conf/runners/cwltool.json

WORKDIR $HOME

RUN apk --update upgrade && apk add --update python3-dev py3-pip bash libxml2-dev libxslt-dev musl-dev \
    linux-headers build-base git \
    && pip3 install cwltool tornado typing snakemake \
    && apk del build-base && rm -rf /var/cache/apk/* \
    && chmod +x /usr/local/bin/start.sh

VOLUME /data
VOLUME $HOME/workdir

EXPOSE 5000
EXPOSE 9000

WORKDIR $HOME/workdir
#ENTRYPOINT ["/usr/local/bin/start.sh"]
