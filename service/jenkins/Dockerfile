#
# Dockerfile
#
FROM raspidocker/mware-tomcat7
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>


ENV ENV_JENKINS_VERSION=2.21

ADD root /

# STATIC POSTINSTALL
RUN apt-get install curl && chmod a+x -R /etc/docker/postinstall.d/* && /etc/docker/postinstall.d/static/installFromAptTree.sh


EXPOSE 8080