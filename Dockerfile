FROM alpine:latest
MAINTAINER johnrex <johnyuanhao@outlook.com>

RUN \
    apk --no-cache add \
    py-pip \
    privoxy \
    && rm -rf /var/lib/apt/lists/*

RUN pip install shadowsocks

ENV SERVER_ADDR= \
    SERVER_PORT=8899  \
    METHOD=aes-256-cfb \
    TIMEOUT=300 \
    PASSWORD=

ADD files /

EXPOSE 8080 1080

ENTRYPOINT ["sudo chmod +x ./entrypoint.sh"]

