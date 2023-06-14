FROM alpine:3.18

RUN apk add curl ca-certificates jq

RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=v8&source=github" | tar -zx

RUN mv cf8 /user/local/bin
RUN mv cf /usr/local/bin
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]