FROM bioportainer/bioportainer:base

COPY bioportainer /

VOLUME /data
VOLUME /workdir

EXPOSE 9000

WORKDIR /workdir
CMD ["/usr/local/bin/start.sh"]
ENTRYPOINT ["/bioportainer"]
