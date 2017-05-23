FROM minchangchen/centos7:latest
MAINTAINER minchangchen
LABEL name="node.js" license="MIT" build-date="20170423"

ENV VERSION 6.10.2

RUN yum update -y && cd /data/softs && curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - && yum install -y nodejs && npm install -g forever

CMD ["node", "-v"]
