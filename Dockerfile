FROM alpine:3.6

MAINTAINER Tobias Brunner <tobias.brunner@vshn.ch>

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            rsync \
            openssh-client \
            bash \
 && rm -rf /var/cache/apk/*

CMD [ "/bin/bash" ]
