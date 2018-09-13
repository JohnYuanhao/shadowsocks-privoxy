FROM alpine:latest

#------------------------------------------------------------------------------
# Environment variables:
#------------------------------------------------------------------------------

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

#------------------------------------------------------------------------------
# Populate root file system:
#------------------------------------------------------------------------------

ADD rootfs /
#------------------------------------------------------------------------------
# Expose ports and entrypoint:
#------------------------------------------------------------------------------
EXPOSE 8118 7070

ENTRYPOINT ["/entrypoint.sh"]
