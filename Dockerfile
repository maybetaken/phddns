#!/bin/sh
FROM alpine:latest

ARG name="phddns"
ARG summary="花生壳 Linux ARM64 Docker 版本"
LABEL description="${summary}" \
    maintainer="<296496296@qq.com>" \
    org.opencontainers.image.url="https://hub.docker.com/r/yabin123/phddns" \
    org.opencontainers.image.source="https://github.com/maybetaken/phddns-docker" \
    org.opencontainers.image.licenses="https://hsk.oray.com/"

RUN apk add --no-cache gcompat
COPY bin/ /app
WORKDIR /app
CMD ["./phtunnel", "-c", "/etc/phtunnel.json", "-r", "-i", "11431", "-k", "9bb2a2e255c5fd80", "-e", "client-ua:HSKEMD/5.1.0/Raspi/20060501;vendor:Oray"]
