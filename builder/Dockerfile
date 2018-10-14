FROM alpine:latest

ENV GUIserver_version 1.12.0
COPY .config/start.sh /usr/local/bin/

RUN apk --update upgrade && apk add --update python3-dev py3-pip bash libxml2-dev libxslt-dev musl-dev \
    linux-headers build-base \
    && pip3 install cwltool tornado typing \
    && apk del build-base && rm -rf /var/cache/apk/* \
    && wget https://github.com/bugy/script-server/releases/download/$GUIserver_version/script-server.zip \
    && mkdir -p /script-server && cd /script-server \
    && unzip ../script-server.zip && rm ../script-server.zip \
    && chmod +x /script-server/launcher.py \
    && chmod +x /usr/local/bin/start.sh

COPY .config/cwl-runner.json /script-server/conf/runners/cwl-runner.json
COPY bioportainer /

VOLUME /data
VOLUME /workdir

EXPOSE 9000
EXPOSE 5000

WORKDIR /workdir
ENTRYPOINT ["start.sh"]
