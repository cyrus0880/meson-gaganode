FROM ubuntu:22.04
MAINTAINER Cyrus Yeung <cyrus0880@outlook.com>

WORKDIR /app
ARG TARGETPLATFORM

RUN apt update -y && \
    apt install -y curl wget

RUN if [ "$TARGETPLATFORM" = "linux/amd64" ]; then \
        cd /app && \
        curl -o apphub-linux.tar.gz https://assets.coreservice.io/public/package/60/app-market-gaga-pro/1.0.4/app-market-gaga-pro-1_0_4.tar.gz && \
        tar -zxf apphub-linux.tar.gz && \
        mv ./apphub-linux-amd64/* ./ && \ 
        rm -fr apphub-linux-amd64 apphub-linux.tar.gz; \
    else \
        cd /app && \
        curl -o apphub-linux.tar.gz https://assets.coreservice.io/public/package/61/app-market-gaga-pro/1.0.4/app-market-gaga-pro-1_0_4.tar.gz && \
        tar -zxf apphub-linux.tar.gz && \
        mv ./apphub-linux-arm64/* ./ && \ 
        rm -fr apphub-linux-arm64 apphub-linux.tar.gz; \
    fi


RUN cd /app && \
    mkdir /etc/init && \
    ./apphub service install

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
EXPOSE 36060
ENV TOKEN=

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash","-c","/app/apps/gaganode/gaganode"]

# docker buildx create --name mybuilder && docker buildx use mybuilder
# docker buildx build --push \
# --platform linux/arm64,linux/arm/v7,linux/arm64/v8,linux/amd64 \ 
# -t cyrus0880/meson-gaganode:1.0.4 -t cyrus0880/meson-gaganode:latest .