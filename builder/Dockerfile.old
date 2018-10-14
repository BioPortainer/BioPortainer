FROM ubuntu:latest
MAINTAINER Fabiano Menegidio 

RUN apt-get update \
    && apt-get install -y --allow-unauthenticated --force-yes bash sudo ca-certificates cwltool \
    && wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh \
    && /bin/bash ~/miniconda.sh -b -p /opt/conda \
    && rm ~/miniconda.sh \
    && ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh \
    && echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc \
    && echo "conda activate base" >> ~/.bashrc \
    && /opt/conda/bin/conda install tornado typing \
    && /opt/conda/bin/conda clean -tipsy \
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
