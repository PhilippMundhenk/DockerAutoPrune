FROM alpine:3.6

RUN apk add --update --no-cache docker
RUN addgroup ${USER} docker

COPY clean.sh /

CMD ["/bin/ash", "/clean.sh"]