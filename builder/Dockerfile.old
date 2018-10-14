FROM ubuntu:latest
MAINTAINER Fabiano Menegidio 

RUN apt-get update \
    && apt-get install -y --allow-unauthenticated --force-yes bash sudo ca-certificates cwltool \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY bioportainer /
VOLUME /data
WORKDIR /
EXPOSE 9000
ENTRYPOINT ["/bioportainer"]
