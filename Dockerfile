FROM alpine:3.6

RUN apk add --update --no-cache docker

COPY clean.sh /

CMD ["/bin/ash", "/clean.sh"]