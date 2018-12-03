FROM python:alpine

ENV USER=www-runner \
    HOME=/headless \
    UID=1000 \
    SHELL=/bin/bash \
    LANG=C.UTF-8 \
    JUPYTER_TYPE=notebook \
    JUPYTER_PORT=8888

ADD .config/start.sh /start.sh
ADD .config/start-notebook.sh /usr/local/bin/
ADD .config/wrapdocker /usr/local/bin/
ADD .tools/GUI /GUI
ADD .tools/Docker/docker-compose /usr/local/bin/
ADD .config/supervisord.conf /.config/
ADD .config/docker.conf /etc/supervisor/conf.d/docker.conf
ADD .config/gui.conf /etc/supervisor/conf.d/gui.conf
ADD .config/jupyter.conf /etc/supervisor/conf.d/jupyter.conf

RUN apk --update add --no-cache \
    build-base bash iptables ca-certificates e2fsprogs docker git libstdc++ curl \
    util-linux screen coreutils shadow \
    && apk update && apk add --no-cache -u supervisor \
    && addgroup -g $UID -S ${USER} \
    && adduser -s /bin/bash -u $UID -S ${USER} -h $HOME/workdir -D -G $USER \
    && usermod -aG docker ${USER} \
    && echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && mkdir -p /.config/supervisord \
    && mkdir -p $HOME/workdir \
    && chmod -R +x /GUI/conf/scripts/ \
    && chmod +x /usr/local/bin/wrapdocker && chmod +x /start.sh \
    && chmod +x /usr/local/bin/start-notebook.sh \
    && chown -R $UID:$UID $HOME/workdir
    
USER $USER

RUN pip3 install -U pip \
    && pip3 install -U tornado typing jupyter bash_kernel nf-core \
    && python3 -m ipykernel install --user \
    && python3 -m bash_kernel.install --user
    
USER root

ENV JAVA_VERSION_MAJOR=8 \
    JAVA_VERSION_MINOR=192 \
    JAVA_VERSION_BUILD=12 \
    JAVA_PACKAGE=jdk \
    HOTSWAP_AGENT_VERSION=1.2.0 \
    JAVA_JCE=unlimited \
    JAVA_HOME=/opt/jdk \
    PATH=${PATH}:/opt/jdk/bin \
    GLIBC_REPO=https://github.com/sgerrand/alpine-pkg-glibc \
    GLIBC_VERSION=2.28-r0 \
    NXF_DEBUG=0
    
EXPOSE 7000
EXPOSE 8888
EXPOSE 5000
VOLUME ["/var/lib/docker"]

USER $USER
