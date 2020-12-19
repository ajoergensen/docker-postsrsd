FROM docker.nowhere.dk/docker/baseimage-alpine

RUN \
	apk --no-cache upgrade && \
	apk --no-cache add postsrsd && \
	rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

COPY root/ /
RUN chmod -v +x /etc/services.d/*/run /etc/cont-init.d/*

EXPOSE 10001 10002

