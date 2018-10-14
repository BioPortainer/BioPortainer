FROM bioportainer/bioportainer:base

COPY .config/bioportainer.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/bioportainer.sh

COPY bioportainer /

VOLUME /data
VOLUME /workdir

EXPOSE 9000

WORKDIR /workdir
CMD ["bioportainer.sh"]
