#
# Dockerfile 'registry-ui'
#
FROM raspidocker/lang-java
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

ADD root /

RUN apt-get update && apt-get install -y -y --no-install-recommends apt-utils groovy git && \
    chmod -R a+x /etc/docker && /etc/docker/preinstall/gitclone.sh

VOLUME [ "/var/lib/docker/registry/data:/var/lib/registry" ]
