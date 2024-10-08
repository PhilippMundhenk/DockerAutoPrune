FROM alpine

RUN apk add --update --no-cache docker

# Create a group and user
RUN addgroup -S docker && adduser -S appuser -G docker

# Tell docker that all future commands should run as the appuser user
USER appuser

COPY clean.sh /

CMD ["/bin/ash", "/clean.sh"]