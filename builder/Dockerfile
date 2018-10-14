FROM bioportainer/bioportainer:base

COPY .config/bioportainer.sh /usr/local/bin/
COPY bioportainer /

RUN chmod +x /usr/local/bin/bioportainer.sh

VOLUME /data
VOLUME /workdir

EXPOSE 9000

WORKDIR /workdir
CMD ["bioportainer.sh"]
