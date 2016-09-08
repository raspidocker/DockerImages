##
# DOCKERFILE
# Depends: resin/rpi-raspbian:jessie
#
FROM resin/rpi-raspbian:jessie
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

#
# ADD ROOT
#
ADD root /

#
# Install dependencies
#
RUN apt-get update && apt-get install -y \
    npm vim curl nmap net-tools wget unzip && \
    chmod -R 755 /etc/docker/* && chmod 755 /start && chmod 755 /command

#
# SETUP - postinstall
#
CMD [ "/etc/docker/setup" ]


#
# INIT
#
CMD [ "/start" ]
