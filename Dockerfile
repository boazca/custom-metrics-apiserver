FROM alpine:3.4
MAINTAINER Alex Shemshurenko <alexshe@wix.com>

RUN apk update

RUN mkdir /logs

COPY test-adapter /adaptor

COPY start.sh /start.sh
RUN chmod 777 /start.sh

CMD ["/start.sh"]
