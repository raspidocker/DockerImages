#
# Dockerfile 'registry-ui'
#
FROM raspidocker/mware-tomcat7
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

# Variables
ENV     JAVA_HOME /usr/lib/jvm/java-7-openjdk-armhf/

# Mount Files
#ADD     root /

# Install from apt-tree
RUN     mkdir -p /var/lib/h2 && chmod a+rw /var/lib/h2 &&  rm -rf /var/lib/tomcat7/webapps/*

# Install grails and project dependencies
ADD src /work
WORKDIR /work
RUN     cd /work && /work/grailsw help
RUN     /work/grailsw war
RUN     cp target/docker-registry-ui-*.war /var/lib/tomcat7/webapps/ROOT.war

# Update catalina configuration
ADD     /work/startup.sh /usr/share/tomcat7/bin/custom-startup.sh
RUN     chmod +x /usr/share/tomcat7/bin/custom-startup.sh

EXPOSE  8080
VOLUME  ["/var/lib/docker/registry/data:/var/lib/registry","/var/lib/h2/", "/var/lib/tomcat7"]
ENV     CATALINA_BASE /var/lib/tomcat7
CMD     /usr/share/tomcat7/bin/custom-startup.sh
