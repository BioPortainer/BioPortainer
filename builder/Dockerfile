FROM alpine:latest

ENV GUIserver_version 1.12.0
COPY .config/start-gui.sh /usr/local/bin/

RUN apk --update upgrade && apk add --update python3-dev py-pip bash libxml2-dev libxslt-dev musl-dev \
    linux-headers build-base \
    && pip3 install cwltool tornado typing \
    && apk del build-base && rm -rf /var/cache/apk/* \
    && cd $HOME \
    && wget https://github.com/bugy/script-server/releases/download/$GUIserver_version/script-server.zip \
    && mkdir $HOME/script-server/ && cd $HOME/script-server \
    && unzip ../script-server.zip && rm ../script-server.zip \
    && chmod +x $HOME/script-server/launcher.py \
    && chmod +x /usr/local/bin/start-gui.sh

COPY .config/cwl-runner.json  $HOME/script-server/conf/runners/cwl-runner.json
COPY bioportainer /

VOLUME /data
VOLUME /workdir

EXPOSE 9000
EXPOSE 5000

WORKDIR /workdir

ENTRYPOINT ["/bioportainer"]
ENTRYPOINT ["start-gui.sh"]
