FROM titpetric/netdata:latest

ADD netdata_opentsdb.conf /tmp/netdata_opentsdb.conf

ENV OPENTSDB_HOST=localhost OPENTSDB_PORT=4242

ADD run2.sh /run2.sh
RUN chmod +x /run2.sh

ENTRYPOINT "/run2.sh"