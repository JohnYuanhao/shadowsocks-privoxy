FROM alpine:latest
MAINTAINER johnrex <johnyuanhao@outlook.com>

RUN \
    apk --no-cache add \
    py-pip \
    privoxy \
    && rm -rf /var/lib/apt/lists/*

RUN pip install shadowsocks

ENV SERVER_ADDR=us03.loanglongtimenosee.com \
    SERVER_PORT=33180  \
    METHOD=rc4-md5 \
    TIMEOUT=300 \
    PASSWORD=929187075

COPY files /

RUN chown -R root /etc

RUN chown -R root entrypoint.sh

USER root

ENTRYPOINT ["./entrypoint.sh"]

