FROM alpine:latest
MAINTAINER johnrex <johnyuanhao@outlook.com>

RUN \
    apk --no-cache add \
    py-pip \
    privoxy \
    libsodium \
    && rm -rf /var/lib/apt/lists/*

COPY files /

ENTRYPOINT ["sh","./entrypoint.sh"]