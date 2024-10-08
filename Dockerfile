FROM alpine

RUN apk add --update --no-cache docker-cli

COPY clean.sh /

CMD ["/bin/ash", "/clean.sh"]