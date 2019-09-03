FROM alpine:3.4
MAINTAINER Boaz <boazc@github.com>

RUN apk update

RUN mkdir /logs

COPY test-adapter/test-adapter /adaptor

RUN chmod +x /adaptor

COPY start.sh /start.sh
RUN chmod 777 /start.sh

CMD ["/start.sh"]
