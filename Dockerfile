FROM radumatei/jenkins-slave-docker:kubectl

USER root
# Let's start with some basic stuff.
RUN apk add --no-cache \
    ca-certificates \
    curl \
    openssl

ENV HELM_VERSION="v3.2.4"

RUN curl -L https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz -o /tmp/helm.tar.gz
RUN tar -zxvf /tmp/helm.tar.gz -C /tmp
RUN cp /tmp/linux-amd64/helm /usr/local/bin/helm