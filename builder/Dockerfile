FROM labios/alpine:miniconda3

RUN apk --update upgrade && apk add ca-certificates bash && rm -rf /var/cache/apk/*

COPY bioportainer /
VOLUME /data
VOLUME /workdir
WORKDIR /
EXPOSE 9000
ENTRYPOINT ["/bioportainer"]
