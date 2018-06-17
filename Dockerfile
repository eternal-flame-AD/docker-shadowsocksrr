FROM alpine:3.7

ARG BRANCH=akkariiin/dev

RUN apk --no-cache add python libsodium wget && \
    wget --no-check-certificate https://github.com/shadowsocksrr/shadowsocksr/archive/"$BRANCH".zip \
    -O ssrr.zip && mkdir ssrr && unzip ssrr.zip -d ssrr && mv ssrr/*/* ssrr/ && rm ssrr.zip && \
    apk del wget


WORKDIR /ssrr


EXPOSE $SERVER_PORT
ENTRYPOINT python 
