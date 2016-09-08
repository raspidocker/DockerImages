#
# Dockerfile
#
FROM raspidocker/base-os
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

#
# ADD only pkg for installing
#
ADD root /

#
# Install dependencies
#
RUN apt-get clean && apt-get autoremove && apt-get clean && apt-get autoremove && apt-get update &&  \
 apt-get install -y npm nodejs && ln -s /usr/bin/nodejs /usr/bin/node && \
 cd /app && npm install --save && \
 chmod 755 /etc/docker/init  && chmod 755 /etc/docker/up.d/*  && chmod 755 /start
 
#
# ADD ALL
#

EXPOSE 80