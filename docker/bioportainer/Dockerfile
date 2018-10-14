FROM alpine:latest

ENV GUIserver_version 1.12.0
ENV HOME /root
COPY .config/start.sh /usr/local/bin/

WORKDIR $HOME

RUN apk --update upgrade && apk add --update python3-dev py3-pip bash libxml2-dev libxslt-dev musl-dev \
    linux-headers build-base \
    && pip3 install cwltool tornado typing \
    && apk del build-base && rm -rf /var/cache/apk/* \
    && wget https://github.com/bugy/script-server/releases/download/$GUIserver_version/script-server.zip \
    && mkdir -p $HOME/script-server && cd $HOME/script-server \
    && unzip ../script-server.zip && rm ../script-server.zip \
    && chmod +x /usr/local/bin/start.sh
    
COPY .config/cwl-runner.json $HOME/script-server/conf/runners/cwl-runner.json
COPY bioportainer $HOME/

VOLUME $HOME/data
VOLUME $HOME/workdir

EXPOSE 5000
EXPOSE 9000

WORKDIR $HOME/workdir
ENTRYPOINT ["/usr/local/bin/start.sh"]
