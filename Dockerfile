# Compile tacacs
FROM ubuntu:18.04 as build

ADD http://www.pro-bono-publico.de/projects/src/DEVEL.201611061407.tar.bz2 /root/tac_plus.tar.bz2

RUN apt update && \
    apt install -y --no-install-recommends gcc libc6-dev make bzip2 libdigest-md5-perl && \
    cd /root && \
    tar -xjf tac_plus.tar.bz2 && \
    cd PROJECTS && \
    ./configure --prefix=/tacacs && \
    make && make install

COPY tac_plus.sample.cfg /etc/tac_plus/tac_plus.cfg
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

RUN apt update && \
    apt install -y --no-install-recommends libdigest-md5-perl libnet-ldap-perl && \
    rm -rf /var/cache/apt/*

EXPOSE 49

ENTRYPOINT ["/docker-entrypoint.sh"]
