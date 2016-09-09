##
# DOCKERFILE
# Depends: resin/rpi-raspbian:jessie
#
#sdhibit/rpi-raspbian
FROM resin/rpi-raspbian:jessie
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

#
# ADD ROOT
#
ADD root /

#RUN mkdir -p /src && cd /src && \
#curl http://director.downloads.raspberrypi.org/raspbian/images/raspbian-2016-05-31/2016-05-27-raspbian-jessie.zip \ &&
#unzip 2016-05-27-raspbian-jessie.zip
#ADD raspbian.2015.05.05.tar.xz /

#
# Install dependencies
#
RUN apt-get update && apt-get install -y \
    vim curl net-tools wget unzip && \
    chmod -R 755 /etc/docker/* && chmod 755 /start && chmod 755 /command

#
# SETUP - postinstall
#
CMD [ "/etc/docker/setup" ]


#
# INIT
#
CMD [ "/start" ]
