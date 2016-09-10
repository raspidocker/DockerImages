#
# Dockerfile
#
FROM raspidocker/mware-tomcat7
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>


ENV ENV_DOWNLOADURL=https://updates.jenkins-ci.org/latest/jenkins.war

ADD root /

# STATIC POSTINSTALL
RUN /etc/docker/postinstall.d/static/installFromAptTree.sh


EXPOSE 8080