FROM alpine:3.6

RUN apk add --update --no-cache docker
RUN sudo usermod -aG docker $USER

COPY clean.sh /

CMD ["/bin/ash", "/clean.sh"]