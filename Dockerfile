FROM alpine:latest

MAINTAINER alexus@gmail.com

RUN apk add --no-cache supervisor &&\
	mkdir /etc/supervisor.d/

COPY *.ini /etc/supervisor.d/

CMD ["/usr/bin/supervisord","--nodaemon"]
