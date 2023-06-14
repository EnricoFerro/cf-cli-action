FROM alpine:3.18

RUN apk add cloudfoundry-cli ca-certificates jq

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]