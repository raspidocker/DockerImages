#
# Dockerfile 'registry-ui'
#
FROM raspidocker/lang-java
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

# Variables
ENV     ENV_WORKING_DIR=/work && \
        JAVA_HOME /usr/lib/jvm/java-7-openjdk-armhf/

# Mount Files
ADD     root /

# Install from apt-tree
RUN     apt-get update && apt-get install -y -y --no-install-recommends apt-utils groovy git tomcat7 && \
        mkdir -p /var/lib/h2 && chmod a+rw /var/lib/h2 &&  rm -rf /var/lib/tomcat7/webapps/* && \
        chmod -R a+x /etc/docker && /etc/docker/preinstall/gitclone.sh


# Install grails and project dependencies
WORKDIR /work
ADD     grailsw /work/grailsw
ADD     wrapper /work/wrapper
ADD     application.properties /work/application.properties
ADD     grails-app/conf/BuildConfig.groovy /work/grails-app/conf/BuildConfig.groovy
RUN     ./grailsw help

# Add project files and build a war
ADD     . /work
RUN     ./grailsw war
RUN     cp target/docker-registry-ui-*.war /var/lib/tomcat7/webapps/ROOT.war

# Update catalina configuration
WORKDIR /usr/share/tomcat7/bin/
ADD     startup.sh /usr/share/tomcat7/bin/custom-startup.sh
RUN     chmod +x /usr/share/tomcat7/bin/custom-startup.sh

EXPOSE  8080
VOLUME  ["/var/lib/docker/registry/data:/var/lib/registry","/var/lib/h2/", "/var/lib/tomcat7"]
ENV     CATALINA_BASE /var/lib/tomcat7
CMD     /usr/share/tomcat7/bin/custom-startup.sh

