FROM alpine:latest
MAINTAINER Fabiano Menegidio and LaBiOS² Team

ENV GUIserver_version 1.12.0
ENV HOME /root

ENV PORTUS_VERSION="v2.3" \
    NOKOGIRI_USE_SYSTEM_LIBRARIES="1" \
    CATALOG_CRON="5.minutes" \
    COMPOSE=1

ADD .config/supervisord.conf /etc/
ADD .config/supervisor.conf /etc/supervisor/conf.d/
ADD .config/bioportainer.conf /etc/supervisor/conf.d/
ADD .config/guiserver.conf /etc/supervisor/conf.d/
ADD tools/bioportainer $HOME/tools/
ADD tools/bioportainer/templates.json /
ADD tools/script-server $HOME/tools/script-server
ADD .config/supervisord.sh /usr/local/bin/
ADD .config/portus.sh /usr/local/bin/
ADD rootfs /

RUN apk update && apk add --no-cache supervisor python3-dev py3-pip bash \
    libxml2-dev libxslt-dev musl-dev linux-headers build-base git \
    ruby-bundler ruby-dev nodejs tzdata libxslt mariadb-libs mariadb-client \
    openssl ruby-io-console ruby-bigdecimal mariadb-client-libs curl-dev \
    && apk --no-cache add --update -t deps git gcc make musl-dev libxml2-dev \
    libxslt-dev mariadb-dev libressl-dev libffi-dev \
    && rm -rf /var/cache/apk/* && rm -rf /tmp/ \
    && mkdir /.config \
    && pip3 install tornado typing ncbi-genome-download cwltool \
    && apk del build-base && rm -rf /var/cache/apk/* \
    && chmod +x /usr/local/bin/supervisord.sh \
    && chmod +x /usr/local/bin/portus.sh \
    && chmod -R +x $HOME/tools/script-server/conf/scripts/ \
    && cp $HOME/tools/docker /usr/local/bin/ \
    && echo 'gem: --verbose --no-document' > /etc/gemrc \
    && cd /tmp \
    && git clone https://github.com/SUSE/Portus.git . \
    && git checkout ${PORTUS_VERSION} \
    && mkdir /portus \
    && git archive ${PORTUS_VERSION} | tar -xC /portus \
    && git rev-parse --short HEAD > /portus/VERSION \
    && cd /portus \
    && sed -i 's/mysql2 (0.3.18)/mysql2 (0.4.4)/' Gemfile.lock \
    && bundle install --retry=3 \
    && apk del --purge deps; rm -rf /tmp/* /var/cache/apk/*
    
WORKDIR $HOME
VOLUME /data
VOLUME /portus
VOLUME $HOME/workdir

EXPOSE 443
EXPOSE 5000
EXPOSE 9000
    
CMD ["/usr/local/bin/supervisord.sh"]
