FROM alpine:latest

ENV GUIserver_version 1.12.0
ENV HOME /root

COPY bioportainer $HOME/
COPY bioportainer/templates.json /
COPY script-server $HOME/script-server
COPY .config/start.sh /usr/local/bin/

WORKDIR $HOME
VOLUME /data
VOLUME $HOME/workdir

RUN apk --update upgrade && apk add --update python3-dev py3-pip bash libxml2-dev libxslt-dev musl-dev \
    linux-headers build-base git \
    && pip3 install cwltool tornado typing snakemake \
    && apk del build-base && rm -rf /var/cache/apk/* \
    && chmod +x /usr/local/bin/start.sh \
    && ln -s $HOME/script-server/conf /data/script-server

EXPOSE 5000
EXPOSE 9000

WORKDIR $HOME/workdir
ENTRYPOINT ["/usr/local/bin/start.sh"]
