FROM minchangchen/centos7:latest
MAINTAINER minchangchen
LABEL name="openjdk" license="MIT" build-date="20170223"

ENV VERSION 1.8.0_121

RUN yum update -y && cd /data/softs && yum install -y java

CMD ["java", "-version"]
