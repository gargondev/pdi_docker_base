FROM  pentaho_pdi:0.1

LABEL maintainer="heli2047@gmail.com" \
    pdi=PDI \
    version=9.1


WORKDIR /
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]