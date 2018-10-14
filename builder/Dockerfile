FROM bioportainer/bioportainer:base

COPY bioportainer /

VOLUME /data
VOLUME /workdir

EXPOSE 9000

WORKDIR /workdir
ENTRYPOINT ["/bioportainer"]
