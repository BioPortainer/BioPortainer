#FROM alpine:latest
FROM labios/base


ENV GUIserver_version 1.12.0
ENV HOME /root

COPY bioportainer $HOME/
COPY bioportainer/templates.json /
COPY script-server $HOME/script-server
COPY .config/start.sh /usr/local/bin/

WORKDIR $HOME
VOLUME /data
VOLUME $HOME/workdir

#RUN apk --update upgrade && apk add --update python3-dev py3-pip bash libxml2-dev libxslt-dev musl-dev \
#   linux-headers build-base git \
#    && pip3 install tornado typing ncbi-genome-download cwltool \
#    && apk del build-base && rm -rf /var/cache/apk/* \
#    && chmod +x /usr/local/bin/start.sh \
#    && chmod -R +x /root/script-server/conf/scripts/

RUN conda install -y -c bioconda tornado typing ncbi-genome-download \
    && chmod +x /usr/local/bin/start.sh \
    && chmod -R +x /root/script-server/conf/scripts/

EXPOSE 5000
EXPOSE 9000

ENTRYPOINT ["/usr/local/bin/start.sh"]
WORKDIR $HOME/workdir
