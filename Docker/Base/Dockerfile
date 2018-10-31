FROM alpine:latest

ENV HOME /root
ADD tools/bioportainer $HOME/tools/
ADD tools/bioportainer/templates.json /
RUN apk --update upgrade && apk add ca-certificates bash && rm -rf /var/cache/apk/*
WORKDIR /
EXPOSE 9000
ENTRYPOINT ["$HOME/tools/bioportainer"]
