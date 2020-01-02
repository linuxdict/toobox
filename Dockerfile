FROM alpine
LABEL maintainer="Edy Liu https://github.com/linuxdict"
ENV TERM=xterm

# Add utils for ops tools. 

RUN cat /etc/os-release && \
    echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    echo "@community http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk --no-cache add --update \
        bash \
        bridge-utils \
        coreutils \
        bind-tools \
        file \
        git \
        grep \
        iperf \
        iproute2 \
        net-tools \
        nmap \
        pciutils \
        psmisc \
        sysstat \
        tar \
        tcpdump \
        tree \
        zip \
        curl \
        wget \
        redis \
        aws-cli@community \
        openssh-client

CMD ["bash"]
