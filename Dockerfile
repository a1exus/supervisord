FROM alpine:latest

MAINTAINER alexus@gmail.com

RUN apk update &&\
	apk add supervisor &&\
	mkdir /etc/supervisor.d/

COPY *.ini /etc/supervisor.d/

CMD ["/usr/bin/supervisord","--nodaemon"]
