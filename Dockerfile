FROM alpine:latest

MAINTAINER alexus@gmail.com

RUN apk update &&\
	apk add supervisor &&\
	apk add openssh &&\
	mkdir /etc/supervisor.d/

COPY *.ini /etc/supervisor.d/

CMD ["/usr/bin/supervisord","--nodaemon"]
