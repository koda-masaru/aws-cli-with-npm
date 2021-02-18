FROM python:3.7.5-slim

RUN apt-get update && \
    apt-get install -y curl unzip

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -b /usr/local/bin/aws && \
    aws --version

RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash - && \
  apt-get update && \
  apt-get install -y nodejs && \
  node -v

