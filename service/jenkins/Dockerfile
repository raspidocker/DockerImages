#
# Dockerfile
#
FROM raspidocker/mware-tomcat7
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

ENV ENV_JENKINS_VERSION=2.21

ADD root /

# STATIC POSTINSTALL
RUN chmod a+x -R /etc/docker && /etc/docker/postinstall.d/static/installFromAptTree.sh && chmod a+x /command && chmod a+x /start

#RUN mkdir /tomcat && ln -s /var/lib/tomcat7/webapps /tomcat/webapps
#ADD src/jenkins.war /tomcat/webapps/jenkins.war
