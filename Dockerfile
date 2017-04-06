FROM alpine:latest

RUN apk update

RUN apk add gettext bash

COPY entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]