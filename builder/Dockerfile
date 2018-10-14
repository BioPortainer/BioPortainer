FROM python:latest
MAINTAINER Fabiano Menegidio 

COPY .config/requirements.txt /
COPY bioportainer /

RUN pip install --no-cache-dir -r requirements.txt \
    && apt-get update \
    && apt-get install -y --allow-unauthenticated --force-yes bash sudo ca-certificates cwltool \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && cd $HOME \
    && wget https://github.com/bugy/script-server/releases/download/$GUIserver_version/script-server.zip \
    && mkdir $HOME/script-server/ && cd $HOME/script-server \
    && unzip ../script-server.zip && rm ../script-server.zip

COPY .config/cwl-runner.json  $HOME/script-server/conf/runners/cwl-runner.json
COPY bioportainer /

VOLUME /data
VOLUME /workdir

EXPOSE 9000
EXPOSE 5000

WORKDIR /workdir

ENTRYPOINT ["/bioportainer"]
ENTRYPOINT ["start-gui.sh"]
