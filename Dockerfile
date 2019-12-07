FROM alpine:latest
MAINTAINER johnrex <johnyuanhao@outlook.com>

RUN \
    apk --no-cache add \
    py-pip \
    privoxy \
    && rm -rf /var/lib/apt/lists/*

RUN pip install shadowsocks

ENV SERVER_ADDR= \
    SERVER_PORT=  \
    METHOD=rc4-md5 \
    TIMEOUT=300 \
    PASSWORD=

COPY files /

ENTRYPOINT ["sh","./entrypoint.sh"]

