FROM ubuntu:16.04

ADD https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.0.1-amd64.deb /tmp
RUN \
dpkp  -i  /tmp/filebeat-5.0.1-amd64.deb &&
rm    -rf /tmp/filebeat-5.0.1-amd64.deb &&
mkdir -p /ecs_logs

VOLUME  /ecs_logs

CMD ["service","filebeat","start"]

